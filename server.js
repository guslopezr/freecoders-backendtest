const express = require('express');
const { Pool } = require('pg');
const app = express();

// Configurar PostgreSQL pool
const pool = new Pool({
    user: 'blacksam',
    host: 'postgresql-blacksam.alwaysdata.net',
    database: 'blacksam_freecoders',
    password: 'blacksam1234..',
    port: 5432, // Puerto por defecto en PostgreSQL es 5432
});

// Definir endpoint para todos los usuarios
app.get('/users', async(req, res) => {
    try {
        // Query 
        const result = await pool.query('SELECT nombre, apellido, email, area, repositorio_url, linkedin, resenha, telefono, portafolio, presupuesto, oferta_valor, valor_hora FROM programadores');
        const users = result.rows;

        // Respuesta JSON
        res.json(users);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal server error');
    }
});


// Definir endpoint para obtener usuarios por ID
app.get('/users/:id', async(req, res) => {
    const id = req.params.id;

    try {
        // Query 
        const result = await pool.query('SELECT nombre, email FROM programadores WHERE id = $1', [id]);
        const user = result.rows[0];

        // Si el usuario no se encuentra, return 404
        if (!user) {
            res.status(404).send('Usuario no encontrado');
            return;
        }

        // Respuesta JSON
        res.json(user);
    } catch (err) {
        console.error(err);
        res.status(500).send('Internal server error');
    }
});

// Start server
app.listen(3000, () => {
    console.log('Server en el puerto 3000');
});