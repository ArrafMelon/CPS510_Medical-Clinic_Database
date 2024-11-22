const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
const dotenv = require('dotenv');
const multer = require('multer');
const { exec } = require('child_process');

dotenv.config();
const app = express();
app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
});

db.connect((err) => {
  if (err) {
    console.error('Database connection failed:', err);
    return;
  }
  console.log('Connected to the database.');
});

// CRUD Endpoints

// Route to get all data from a specific table
app.get('/records/:tableName', (req, res) => {
    const { tableName } = req.params;
  
    // Fetch data from the specified table
    const query = `SELECT * FROM ??`; // Use parameterized query for security
    db.query(query, [tableName], (err, results) => {
      if (err) {
        res.status(500).json({ error: err.message });
        return;
      }
      res.json(results);
    });
  });
  
// SHOW TABLES
app.get('/tables', (req, res) => {
    const query = 'SHOW TABLES';
    db.query(query, (err, results) => {
        if (err) {
            res.status(500).json({ error: err.message });
            return;
        }

        // Get the table names
        const tables = results.map(row => Object.values(row)[0]);
        res.json(tables);
    });
});

// POST endpoint to create a new table
app.post('/create-table', (req, res) => {
    const { tableName, columns } = req.body;
  
    // Validate input
    if (!tableName || !columns || !Array.isArray(columns) || columns.length === 0) {
      return res.status(400).json({ error: 'Invalid table name or columns.' });
    }
  
    // Build the SQL query dynamically
    const columnsDefinition = columns.map(
      (col) => `${col.name} ${col.type}${col.notNull ? ' NOT NULL' : ''}`
    ).join(', ');
  
    const query = `CREATE TABLE ?? (${columnsDefinition})`;

    // Execute the query
    db.query(query, [tableName], (err) => {
      if (err) {
        return res.status(500).json({ error: err.message });
      }
      res.status(201).json({ message: `Table '${tableName}' created successfully.` });
    });
  });
  

// DELETE endpoint to drop a table
app.delete('/drop-table/:tableName', (req, res) => {
    const { tableName } = req.params;
  
    // Validate table name to prevent SQL injection
    const allowedTables = ['Patients', 'Doctors', 'Appointments', 'Lab_Test', 'TestTable']; // Add all valid table names
    if (!allowedTables.includes(tableName)) {
      return res.status(400).json({ error: 'Invalid table name' });
    }
  
    const query = `DROP TABLE ??`;
  
    // Execute the query
    db.query(query, [tableName], (err) => {
      if (err) {
        res.status(500).json({ error: err.message });
        return;
      }
      res.status(200).json({ message: `Table '${tableName}' dropped successfully.` });
    });
  });
  
// POST endpoint to populate a table with data
app.post('/populate-table', (req, res) => {
    const { tableName, rows } = req.body;
  
    // Validate input
    if (!tableName || !rows || !Array.isArray(rows) || rows.length === 0) {
      return res.status(400).json({ error: 'Invalid table name or rows.' });
    }
  
    // Generate column names and values for the query
    const columns = Object.keys(rows[0]).join(', ');
    const values = rows.map((row) => Object.values(row));
  
    // Prepare the SQL query
    const query = `INSERT INTO ?? (${columns}) VALUES ?`;
  
    // Execute the query
    db.query(query, [tableName, values], (err) => {
      if (err) {
        return res.status(500).json({ error: err.message });
      }
      res.status(201).json({ message: `Table '${tableName}' populated successfully.` });
    });
  });
  
// GET endpoint to query a table with optional filters
app.get('/query-table/:tableName', (req, res) => {
    const { tableName } = req.params;
    const { filters } = req.query; // Optional filters as JSON string
  
    try {
      // Parse filters if provided
      let whereClause = '';
      if (filters) {
        const parsedFilters = JSON.parse(filters);
        const conditions = Object.entries(parsedFilters).map(
          ([key, value]) => `${key} = ${db.escape(value)}`
        );
        whereClause = `WHERE ${conditions.join(' AND ')}`;
      }
  
      // Build the query
      const query = `SELECT * FROM ?? ${whereClause}`;
  
      // Execute the query
      db.query(query, [tableName], (err, results) => {
        if (err) {
          res.status(500).json({ error: err.message });
          return;
        }
        res.status(200).json(results);
      });
    } catch (error) {
      res.status(400).json({ error: 'Invalid filters format. Use JSON string.' });
    }
  });
  

// SQL File Upload
const upload = multer({ dest: 'uploads/' });
app.post('/upload-sql', upload.single('file'), (req, res) => {
  const filePath = req.file.path;
  exec(`mysql -u root -p${process.env.DB_PASS} ${process.env.DB_NAME} < ${filePath}`, (err) => {
    if (err) {
      res.status(500).send('Failed to import SQL file.');
    } else {
      res.send('SQL file imported successfully.');
    }
  });
});

app.listen(5000, () => console.log('Server running on http://localhost:5000'));
