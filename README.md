# 🏨 Sistema de Reservas de Hotel - Práctica Guiada 1

¡Bienvenido al repositorio del proyecto! Este es un sistema de base de datos relacional diseñado para automatizar y gestionar el control de habitaciones, registros de clientes, asignación de empleados, reservas y la facturación de pagos en un entorno hotelero.

---

## 🛠️ Tecnologías Utilizadas
* **Base de Datos:** MySQL
* **Modelado:** dbdiagram.io / Sintaxis DBML
* **Plataforma de Control:** GitHub

---

## 📊 Arquitectura de la Base de Datos

El sistema está compuesto por **5 tablas principales** estructuradas estratégicamente para mantener la integridad referencial:

1. **`habitaciones`**: Controla el inventario de cuartos, tipos (Single, Doble, Suite) y precios.
2. **`clientes`**: Almacena los datos personales y de contacto de los huéspedes.
3. **`empleados`**: Registra al personal encargado de procesar y gestionar el sistema.
4. **`reservas`**: La tabla central que conecta huéspedes, habitaciones y encargados mediante llaves foráneas (`FK`).
5. **`pagos`**: Registra las transacciones monetarias vinculadas de forma estricta a cada reserva efectuada.

---

## 🚀 Código SQL de Creación

A continuación se detalla el script limpio para montar la base de datos en tu entorno local de MySQL:

```sql
CREATE TABLE habitaciones (
  id INT AUTO_INCREMENT,
  numero VARCHAR(10) NOT NULL,
  tipo VARCHAR(50) NOT NULL,
  precio_por_noche DECIMAL(10,2) NOT NULL,
  estado VARCHAR(20) DEFAULT 'Disponible',
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE clientes (
  id INT AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  telefono VARCHAR(20),
  fecha_registro DATE DEFAULT (CURRENT_DATE),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE empleados (
  id INT AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  puesto VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE reservas (
  id INT AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  habitacion_id INT NOT NULL,
  empleado_id INT,
  fecha_entrada DATE NOT NULL,
  fecha_salida DATE NOT NULL,
  estado VARCHAR(20) DEFAULT 'Pendiente',
  PRIMARY KEY (id),
  CONSTRAINT fk_reservas_clientes FOREIGN KEY (cliente_id) REFERENCES clientes (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_reservas_habitaciones FOREIGN KEY (habitacion_id) REFERENCES habitaciones (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_reservas_empleados FOREIGN KEY (empleado_id) REFERENCES empleados (id) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE pagos (
  id INT AUTO_INCREMENT,
  reserva_id INT NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  fecha_pago DATE NOT NULL,
  metodo_pago VARCHAR(50) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_pagos_reservas FOREIGN KEY (reserva_id) REFERENCES reservas (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
