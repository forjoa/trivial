CREATE DATABASE IF NOT EXISTS trivial;
use trivial;

CREATE TABLE IF NOT EXISTS Preguntas (
id int auto_increment primary key,
pregunta varchar (1000),
respuesta varchar (1000),
tema varchar (200),
ayuda int
);

INSERT INTO Preguntas (pregunta, respuesta, tema, ayuda) VALUES 
('¿Qué marca de automóviles lanzó el modelo Mustang?', 'Ford', 'Coches', 1),
('¿En qué año se lanzó el primer automóvil híbrido de producción masiva?', '1997', 'Coches', 4),
('¿Qué fabricante de automóviles introdujo por primera vez el sistema de frenos ABS?', 'Mercedes Benz', 'Coches', 4),
('¿Qué modelo de automóvil se asocia comúnmente con la película "Back to the Future"?', 'DeLorean', 'Coches', 2),
('¿Qué marca de automóviles lanzó el icónico modelo Beetle?', 'Volkswagen', 'Coches', 1),
('¿En qué país se fabrican los coches de la marca Hyundai?', 'Corea del Sur', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Wrangler?', 'Jeep', 'Coches', 1),
('¿Qué modelo de coche es conocido como el "Coche del Pueblo"?', 'Volkswagen Beetle', 'Coches', 2),
('¿Cuál es el nombre del sistema de tracción en las cuatro ruedas desarrollado por Audi?', 'Quattro', 'Coches', 5),
('¿Qué modelo de coche eléctrico es producido por la compañía Chevrolet?', 'Chevrolet Bolt', 'Coches', 3),
('¿Qué fabricante de automóviles produjo el primer coche de producción en cadena?', 'Ford', 'Coches', 1),
('¿Cuál es el nombre del sistema de navegación desarrollado por Google para automóviles?', 'Android Auto', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Silverado?', 'Chevrolet', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia al conductor de Tesla?', 'Autopilot', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Civic?', 'Honda', 'Coches', 1),
('¿Cuál es el nombre del sistema de tracción total de Subaru?', 'Symmetrical All Wheel Drive', 'Coches', 5),
('¿Qué modelo de coche eléctrico es producido por la compañía Nissan?', 'Nissan Leaf', 'Coches', 3),
('¿Qué fabricante de automóviles produce el modelo 911?', 'Porsche', 'Coches', 1),
('¿Cuál es el nombre del sistema de conducción autónoma de nivel 2 de Tesla?', 'Full Self Driving', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Corolla?', 'Toyota', 'Coches', 1),
('¿Cuál es el nombre del sistema de seguridad activa de Mercedes Benz?', 'PRE SAFE', 'Coches', 8),
('¿Qué marca de automóviles produce el modelo Model S?', 'Tesla', 'Coches', 1),
('¿Cuál es el nombre del sistema de infoentretenimiento de BMW?', 'iDrive', 'Coches', 1),
('¿Qué fabricante de automóviles produce el modelo Aventador?', 'Lamborghini', 'Coches', 1),
('¿Cuál es el nombre del sistema de aparcamiento automático de Ford?', 'Active Park Assist', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo F 150?', 'Ford', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia a la frenada de emergencia de Audi?', 'Audi Pre Sense', 'Coches', 8),
('¿Qué fabricante de automóviles produce el modelo Elantra?', 'Hyundai', 'Coches', 1),
('¿Cuál es el nombre del sistema de seguridad de colisión frontal de Volvo?', 'City Safety', 'Coches', 8),
('¿Qué marca de automóviles produce el modelo Model 3?', 'Tesla', 'Coches', 1),
('¿Cuál es el nombre del sistema de tracción a las cuatro ruedas de Land Rover?', 'Terrain Response', 'Coches', 5),
('¿Qué fabricante de automóviles produce el modelo Mustang Mach E?', 'Ford', 'Coches', 1),
('¿Cuál es el nombre del sistema de frenos regenerativos de Toyota?', 'Toyota Hybrid System II', 'Coches', 7),
('¿Qué marca de automóviles produce el modelo Stinger?', 'Kia', 'Coches', 1),
('¿Cuál es el nombre del sistema de dirección adaptativa de BMW?', 'Active Steering', 'Coches', 7),
('¿Qué fabricante de automóviles produce el modelo Model X?', 'Tesla', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia al conductor de Audi?', 'Audi Drive Select', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Challenger?', 'Dodge', 'Coches', 1),
('¿Cuál es el nombre del sistema de suspensión neumática de Mercedes Benz?', 'AIRMATIC', 'Coches', 7),
('¿Qué fabricante de automóviles produce el modelo Model Y?', 'Tesla', 'Coches', 1),
('¿Cuál es el nombre del sistema de infoentretenimiento de Audi?', 'MMI', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Camry?', 'Toyota', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia al conductor de Lexus?', 'Lexus Safety System+', 'Coches', 1),
('¿Qué fabricante de automóviles produce el modelo Leaf?', 'Nissan', 'Coches', 1),
('¿Cuál es el nombre del sistema de sonido de alta fidelidad de Tesla?', 'Tesla Premium Audio', 'Coches', 1),
('¿Qué marca de automóviles produce el modelo Arteon?', 'Volkswagen', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia de mantenimiento de carril de Volvo?', 'Lane Keeping Aid', 'Coches', 8),
('¿Qué fabricante de automóviles produce el modelo ID.4?', 'Volkswagen', 'Coches', 1),
('¿Cuál es el nombre del sistema de control de estabilidad de Ford?', 'AdvanceTrac', 'Coches', 7),
('¿Qué marca de automóviles produce el modelo Kona?', 'Hyundai', 'Coches', 1),
('¿Cuál es el nombre del sistema de detección de objetos de Honda?', 'Honda Sensing', 'Coches', 1),
('¿Qué fabricante de automóviles produce el modelo e Tron?', 'Audi', 'Coches', 1),
('¿Cuál es el nombre del sistema de asistencia a la frenada de emergencia de Mazda?', 'Smart City Brake Support', 'Coches', 8),
('¿Qué marca de automóviles produce el modelo Taycan?', 'Porsche', 'Coches', 1);
