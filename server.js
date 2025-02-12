const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();
const PORT = 3001; // Cambia el puerto si es necesario

app.use(cors()); // Permite el acceso desde el frontend
app.use(bodyParser.json()); // Habilita JSON en las peticiones

// 📌 Configuración de la conexión a MySQL
const db = mysql.createConnection({
  host: 'localhost',  // Cambia si el servidor MySQL está en otro lado
  user: 'root',
  password: 'Mateo1523+-',
  database: 'comparador_celulares'
});

// 📌 Conectar a la base de datos
db.connect(err => {
  if (err) {
    console.error('🔴 Error al conectar a MySQL:', err);
    return;
  }
  console.log('🟢 Conectado a MySQL');
});

// 📌 Endpoint para obtener los celulares
app.get('/api/celulares', (req, res) => {
  const sql = 'SELECT * FROM celulares';
  db.query(sql, (err, result) => {
    if (err) {
      console.error('🔴 Error al obtener datos:', err);
      res.status(500).json({ error: 'Error en el servidor' });
      return;
    }
    res.json(result);
  });
});

// 📌 Iniciar el servidor
app.listen(PORT, () => {
  console.log(`🟢 Servidor backend corriendo en http://localhost:${PORT}`);
});
