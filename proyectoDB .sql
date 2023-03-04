DROP TABLE IF EXISTS programador_lenguaje;
DROP TABLE IF EXISTS framework_lenguaje;
DROP TABLE IF EXISTS lenguajes;
DROP TABLE IF EXISTS propuesta_coder;
DROP TABLE IF EXISTS frameworks;
DROP TABLE IF EXISTS solicitudes;
DROP TABLE IF EXISTS proyectos;
DROP TABLE IF EXISTS programador_basedatos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS basedatos;
DROP TABLE IF EXISTS programadores;

CREATE TABLE programadores(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL, 
	apellido VARCHAR(50) NOT NULL,
	clave VARCHAR(50) NOT NULL,
	foto_url VARCHAR(100), Subir a 500
	edad INT,
	email VARCHAR(50) UNIQUE NOT NULL, 
	area VARCHAR(50) NOT NULL,  
	repositorio_url VARCHAR(50), Subir a 500 
	linkedin VARCHAR(50),Subir a 500
	resenha VARCHAR(50), Subir a 500
	telefono VARCHAR(50), 
	portafolio VARCHAR (50), Subir a 500
	presupuesto FLOAT(2), ¿Por qué hay un valor presupuesto, no debería ser sólo el valor hora?
  	oferta_valor VARCHAR(500),
  	valor_hora INT	
);

CREATE TABLE lenguajes(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50)
);

CREATE TABLE frameworks(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50)
);

CREATE TABLE basedatos(
  id SERIAL PRIMARY KEY,
  nombre VARCHAR (50)
);

CREATE TABLE programador_basedatos(
	id SERIAL PRIMARY KEY,
	programador_id INT,
	FOREIGN KEY (programador_id)
	REFERENCES programadores(id),
	basedatos_id INT,
	FOREIGN KEY (basedatos_id)
	REFERENCES basedatos(id),
	experiencia VARCHAR(50)
);

CREATE TABLE programador_lenguaje(
	id SERIAL PRIMARY KEY,
	programador_id INT,
	FOREIGN KEY (programador_id)
	REFERENCES programadores(id),
	lenguajes_id INT,
	FOREIGN KEY (lenguajes_id)
	REFERENCES lenguajes(id),
	experiencia VARCHAR(50)
);

CREATE TABLE framework_lenguaje(
	id SERIAL PRIMARY KEY,
	programador_id INT,
	FOREIGN KEY (programador_id)
	REFERENCES programadores(id),
	framework_id INT,
	FOREIGN KEY (framework_id)
	REFERENCES frameworks(id),
	experiencia VARCHAR(50)
);

/* Front: contactar */
CREATE TABLE solicitudes(
	id SERIAL PRIMARY KEY,
	nombre_cliente VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE NOT NULL,
  	titulo_proyecto VARCHAR (50),
	descripcion_proyecto VARCHAR(1000),
  	stack_1 VARCHAR (50),
  	stack_2 VARCHAR (50),
  	stack_3 VARCHAR (50),
  	stack_otros VARCHAR (50),
  	boceto VARCHAR (100),
	presupuesto FLOAT(2),
	programador_id INT,
	FOREIGN KEY (programador_id)
	REFERENCES programadores(id),
	fecha_solicitud TIME DEFAULT CURRENT_TIME
);

CREATE TABLE propuesta_coder (
  id SERIAL PRIMARY KEY,
  solicitud_id INT,
  FOREIGN KEY (solicitud_id)
  REFERENCES solicitudes(id),
  titulo_propuesta VARCHAR (50),
  descripcion_propuesta VARCHAR (50),
  stack_1 VARCHAR (50),
  stack_2 VARCHAR (50),
  stack_3 VARCHAR (50),
  stack_otros VARCHAR (50),
  alcance VARCHAR (100),
  cantidad_revisiones INT,
  horas_estimadas INT,
  valor_final INT  
  );

CREATE TABLE clientes(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50),
	email VARCHAR(50) UNIQUE NOT NULL,
  	telefono INT 
);

CREATE TABLE proyectos(
	id SERIAL PRIMARY KEY,
	programador_id INT,
	descripcion_proyecto VARCHAR(1000),
	presupuesto FLOAT(2),
	FOREIGN KEY (programador_id)
	REFERENCES programadores(id),
	cliente_id INT,
	FOREIGN KEY (cliente_id)
	REFERENCES clientes(id),
  	fecha_solicitud TIME DEFAULT CURRENT_TIME,
	fecha_entrega VARCHAR(50)
);