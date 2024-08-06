CREATE TABLE musicla;

CREATE TABLE producto(
			PID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
            Producto varchar(40),
            Categoria varchar(50),
            Stock INT,
            Valor INT
             );
            
CREATE TABLE clientes(
			usuario varchar(50),
            provincia varchar(20),
            ciudad varchar(50),
            localidad varchar(50),
            CP INT,
            Primary Key (usuario)
            );
            
CREATE TABLE compras(
			CID INT NOT NULL auto_increment,
            Tipo_Envio varchar(50),
            Modo_pago varchar(20),
            Moneda varchar(20),
            Primary Key (CID),
			Usuario varchar(50),  
            PID INT NOT NULL,
            FOREIGN KEY (USUARIO) REFERENCES clientes(Usuario),
            FOREIGN KEY (PID) REFERENCES Producto(PID));