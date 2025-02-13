const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();
const PORT = process.env.PORT || 3001;

app.use(cors());
app.use(bodyParser.json());

const db = mysql.createConnection({
  host: 'roundhouse.proxy.rlwy.net', // 🔹 Host de Railway (Pública)
  user: 'root',
  password: 'qimstoalvWGIiPWrCpbbuzyOyvObdPMb', // 🔹 Clave de Railway
  database: 'railway',
  port: 23462 // 🔹 Puerto correcto
});


// 📌 Conectar a la base de datos con manejo de errores
db.connect(err => {
  if (err) {
    console.error('🔴 Error al conectar a MySQL:', err);
    return;
  }
  console.log('🟢 Conectado a MySQL en Railway');
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
