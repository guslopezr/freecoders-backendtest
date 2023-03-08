Carga de usuarios de prueba

INSERT INTO programadores (nombre, apellido, clave, foto_url, edad, email, area, repositorio_url, linkedin, resenha, telefono, portafolio, presupuesto, oferta_valor, valor_hora)
VALUES ('Gustavo', 'Lopez', '111111', 'https://goo.su/yt64A', 45, 'guslopezr@gmail.com', 'Fullstack', 'https://portafolio-glr.vercel.app/', 'https://goo.su/mFiM', 'Diseño funcional, programación front y backend', '56992382055', 'Landing pages y páginas de Ecommerce', 100000.00, 'Especial atención en el diseño de aplicaciones con foco en la experiencia del usuario', 20000),
       ('Sergio', 'Miranda', '111112', 'https://goo.su/yNzp', 30, 'sergio@freecoders.com', 'Fullstack', 'https://github.com/TITANRAH', 'https://www.linkedin.com/in/sergio/', 'Programador Fullstack, resolución de problemas', '56999887766', 'Ecommerce y chat bots', 150000.00, 'Programación a la medida', 22000),
       ('Andrea', 'Paez', '111113', 'https://goo.su/r2xc', 29, 'andrea@freecoders.com', 'Frontend', 'https://github.com/apaezp', 'https://goo.su/daJeW', 'Full Stack Developer | English C2', '56912341234', 'Landing Pages, Diseño Frontend con CSS avanzado', 100000.00, 'Programación de front, alto nivel de usabilidad', 21000);

Carga de lenguajes

INSERT INTO lenguajes (nombre)
VALUES ('Python'),
('JavaScript'),
('Java'),
('C++'),
('PHP'),
('C#'),
('Swift'),
('TypeScript'),
('Kotlin'),
('Go');

Carga de frameworks

INSERT INTO frameworks (nombre)
VALUES ('React'),
('Angular'),
('Vue.js'),
('Ruby on Rails'),
('Django'),
('Spring'),
('Express.js'),
('Laravel'),
('Flask'),
('ASP.NET');

Carga de bases de datos

INSERT INTO basedatos (nombre)
VALUES ('MySQL'),
('PostgreSQL'),
('Oracle'),
('MongoDB'),
('Microsoft SQL Server'),
('SQLite'),
('Cassandra'),
('Redis'),
('Firebase Realtime Database'),
('Amazon Aurora');

Creación de solicitudes:

INSERT INTO solicitudes (nombre_cliente, apellido, email, titulo_proyecto, descripcion_proyecto, stack_1, stack_2, stack_3, stack_otros, boceto, presupuesto, programador_id)
VALUES 
('Juan', 'Sintierra', 'juan@gmail.com', 'Desarrollo de una aplicación de reserva de citas', 'Se requiere desarrollar una aplicación web que permita a los usuarios reservar citas en línea.', 'React', 'Node.js', 'MongoDB', 'N/A', 'https://example.com/boceto.png', 1500.00, 1),
('Pedro', 'Piedra', 'pedro@yahoo.com', 'Desarrollo de un sitio web de comercio electrónico', 'Se requiere desarrollar un sitio web de comercio electrónico para la venta de productos en línea.', 'HTML', 'CSS', 'JavaScript', 'PHP', 'https://example.com/boceto.png', 2500.00, 2),
('Alan', 'Brito', 'alan@outlook.com', 'Desarrollo de aplicación seguimiento de gastos', 'Se requiere desarrollar una aplicación móvil que permita a los usuarios llevar un seguimiento de sus gastos.', 'React Native', 'Firebase', 'N/A', 'N/A', 'https://example.com/boceto.png', 1000.00, 3);

INSERT INTO propuesta_coder (solicitud_id, titulo_propuesta, descripcion_propuesta, stack_1, stack_2, stack_3, stack_otros, alcance, cantidad_revisiones, horas_estimadas, valor_final)
VALUES (1, 'Desarrollo de app de reserva', 'Propuesta para app de reserva de citas en línea', 'React', 'Node.js', 'MongoDB', 'N/A', 'Desarrollo completo de la aplicación', 2, 100, 2000);


INSERT INTO propuesta_coder (solicitud_id, titulo_propuesta, descripcion_propuesta, stack_1, stack_2, stack_3, stack_otros, alcance, cantidad_revisiones, horas_estimadas, valor_final)
VALUES (1, 'Desarrollo de tienda en línea', 'Propuesta para desarrollo sitio ecommerce.', 'HTML', 'CSS', 'JavaScript', 'PHP', 'Desarrollo completo de la tienda en línea, incluyendo diseño, implementación, pruebas y despliegue.', 3, 150, 300000),
(2, 'Desarrollo de app de seguimiento de gastos', 'Propuesta de aplicación móvil seguimiento gastos.', 'React Native', 'Firebase', 'N/A', 'N/A', 'Desarrollo completo aplicación seguimiento de gastos. Diseño, implementación, pruebas y despliegue.', 2, 80, 1500000);


INSERT INTO framework_lenguaje (programador_id, framework_id, experiencia) 
VALUES
(1, 1, '1'),
(2, 1, '1'),
(3, 1, '2 '),
(6, 1, '2 ')

INSERT INTO programador_basedatos (programador_id, basedatos_id, experiencia) VALUES
(1, 2, '1'),
(2, 2, '1'),
(3, 2, '2'),
(6, 2, '2')

INSERT INTO programador_lenguaje (programador_id, lenguajes_id, experiencia) VALUES
(1, 2, '1 '),
(2, 2, '1 '),
(3, 2, '2 '),
(6, 2, '2 ')

INSERT INTO clientes (nombre, apellido, email, telefono) VALUES
('Juan', 'Pérez', 'juan.perez@mail.com', 95551234),
('María', 'González', 'maria.gonzalez@mail.com', 95555678),
('Pedro', 'Ramírez', 'pedro.ramirez@mail.com', 95559012);
