const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');
const app = express();
const PORT = process.env.PORT || 3001; // Usa el puerto de Railway si está disponible

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

// 📌 Ruta principal para comprobar que el backend funciona
app.get('/', (req, res) => {
  res.json({ message: "Backend funcionando correctamente 🚀" });
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
  console.log(`🟢 Servidor backend corriendo en el puerto ${PORT}`);
});
