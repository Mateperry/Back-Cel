create database comparador_celulares;
DROP TABLE celulares;


use comparador_celulares; 
CREATE TABLE celulares (
    id INT AUTO_INCREMENT PRIMARY KEY, -- ID único para cada celular
    imagen_url VARCHAR(555),		   -- Imagen almacenada en formato URL 	
    marca VARCHAR(50) NOT NULL,        -- Marca del celular
    modelo VARCHAR(100) NOT NULL,      -- Modelo del celular
    linea VARCHAR(100),                -- Línea o serie del celular
    anio_lanzamiento YEAR,             -- Año de lanzamiento

    -- Dimensiones y diseño
    altura FLOAT,                      -- Altura en mm
    ancho FLOAT,                       -- Ancho en mm
    espesor FLOAT,                     -- Espesor en mm
    peso FLOAT,                        -- Peso en gramos
    material_cuerpo VARCHAR(50),       -- Material del cuerpo
    colores_disponibles TEXT,          -- Lista de colores disponibles

    -- Pantalla
    tipo_pantalla VARCHAR(50),         -- Tipo de pantalla (AMOLED, LCD, etc.)
    tamano_pantalla FLOAT,             -- Tamaño de la pantalla en pulgadas
    resolucion VARCHAR(50),            -- Resolución (ej: 2400x1080)
    densidad_pixeles FLOAT,            -- Densidad en PPI
    tasa_refresco INT,                 -- Tasa de refresco en Hz
    proteccion VARCHAR(50),            -- Tipo de protección (ej: Gorilla Glass)

    -- Rendimiento
    procesador VARCHAR(100),           -- Nombre del procesador
    nucleos_procesador INT,            -- Número de núcleos
    frecuencia_procesador FLOAT,       -- Frecuencia en GHz
    gpu VARCHAR(100),                  -- GPU
    memoria_ram INT,                   -- RAM en GB
    almacenamiento INT,                -- Almacenamiento interno en GB
    ranura_sd BOOLEAN,                 -- ¿Tiene ranura para microSD?

    -- Sistema operativo
    sistema_operativo VARCHAR(50),     -- Sistema operativo (Android/iOS)
    version_so VARCHAR(20),            -- Versión del sistema operativo
    actualizaciones_garantizadas INT,  -- Años de actualizaciones garantizadas

    -- Cámaras
    num_camaras_traseras INT,          -- Número de cámaras traseras
    resolucion_camara_principal INT,   -- Resolución de la cámara principal en MP
    apertura_camara_principal VARCHAR(10), -- Apertura de la cámara principal (f/1.8)
    lentes_adicionales TEXT,           -- Descripción de otras lentes
    zoom_optico INT,                   -- Zoom óptico en X
    zoom_digital INT,                  -- Zoom digital en X
    estabilizacion VARCHAR(50),        -- Tipo de estabilización (OIS, EIS)
    grabacion_video_trasera VARCHAR(50), -- Resolución máxima de grabación trasera
    resolucion_camara_frontal INT,     -- Resolución de la cámara frontal en MP
    apertura_camara_frontal VARCHAR(10), -- Apertura de la cámara frontal
    grabacion_video_frontal VARCHAR(50), -- Resolución máxima de grabación frontal

    -- Batería
    capacidad_bateria INT,             -- Capacidad en mAh
    carga_rapida INT,                  -- Carga rápida en watts
    carga_inalambrica INT,             -- Carga inalámbrica en watts
    carga_inversa INT,                 -- Carga inversa en watts
    autonomia_estimada FLOAT,          -- Horas de uso estimadas

    -- Conectividad
    red_movil VARCHAR(20),             -- Redes soportadas (4G, 5G, etc.)
    wifi VARCHAR(20),                  -- Versión de Wi-Fi (Wi-Fi 6E, etc.)
    bluetooth VARCHAR(10),             -- Versión de Bluetooth
    nfc BOOLEAN,                       -- ¿Tiene NFC?
    usb VARCHAR(20),                   -- Tipo de USB (Tipo C, Lightning)
    gps VARCHAR(100),                  -- Compatibilidad GPS (A-GPS, GLONASS)
    jack_35 BOOLEAN,                   -- ¿Tiene conector 3.5mm?

    -- Audio
    altavoces_estereo BOOLEAN,         -- ¿Tiene altavoces estéreo?
    certificacion_sonido VARCHAR(50),  -- Certificaciones de sonido (Dolby Atmos)
    microfonos INT,                    -- Número de micrófonos

    -- Sensores
    sensor_huellas VARCHAR(50),        -- Ubicación del sensor de huellas
    reconocimiento_facial BOOLEAN,     -- ¿Tiene reconocimiento facial?
    acelerometro BOOLEAN,              -- ¿Tiene acelerómetro?
    giroscopio BOOLEAN,                -- ¿Tiene giroscopio?
    brujula BOOLEAN,                   -- ¿Tiene brújula?
    barometro BOOLEAN,                 -- ¿Tiene barómetro?

    -- Resistencia
    certificacion_ip VARCHAR(10),      -- Certificación IP (IP68, IP67)
    resistencia_caidas BOOLEAN,        -- ¿Tiene resistencia a caídas?

    -- Precio
    precio_lanzamiento FLOAT,          -- Precio de lanzamiento en USD
    precio_actual FLOAT		              -- Precio promedio actual en USD

);
-- Aqui empieza la seccion Samsung 
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
value
-- Samsung S25  
(
    'https://www.losdistribuidores.com/wp-content/uploads/2025/01/samsung-galaxy-s25-5g-azul-hielo.webp' ,
    'Samsung', 'Galaxy S25', 'Galaxy', 2025, 146.9, 70.5, 7.2, 162, 'Vidrio y metal', 'Navy, Silver Shadow, Icyblue, Mint',
    'Dynamic AMOLED 2X', 6.2, '2340x1080', 416, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Elite', 8, 4.47, 'Adreno 740',
    12, 128, false, 'Android', '15', 7, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 4000, 25, 15, 0, 15.5, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 799.99, 699.99
),
-- Samsung S25+
(
    'https://www.notebookcheck.org/fileadmin/Notebooks/News/_nc4/Galaxy-S25-series-specs-and-more-2.jpg',
    'Samsung', 'Galaxy S25+', 'Galaxy', 2025, 158.4, 75.8, 7.3, 190, 'Vidrio y aluminio', 'Gris, Azul Marino, Azul, Menta',
    'Dynamic AMOLED 2X', 6.7, '3120x1440', 513, 120, 'Gorilla Glass Armor 2', 'Snapdragon 8 Elite for Galaxy', 8, 4.47, 'Adreno 830',
    12, 256, false, 'Android', '15', 7, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 4900, 45, 15, 4.5, 20, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 1159.99, 999.99
),
-- Samsung S25 utltra 
(
	'https://movilines.com/storage/samsung-galaxy-s25-ultra-512-gb-titanio-negro-1.jpg',
    'Samsung', 'Galaxy S25 Ultra', 'Galaxy', 2025, 164.8, 77.2, 8.9, 218, 'Titanio texturizado', 'Negro, Blanco, Verde, Azul',
    'Dynamic AMOLED 2X', 6.9, '3200x1440', 511, 1-120, 'Gorilla Glass Armor 2', 'Snapdragon 8 Elite for Galaxy', 8, 4.47, 'Adreno 740',
    12, 256, false, 'Android', '15', 7, 4, 200, 'f/1.8', 'Gran angular, Telefoto, Periscópica', 5, 10, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 5000, 45, 15, 0, 20, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 1299.99, 1199.99
), 
-- Samsung S24
(
	'https://www.phonelectrics.com/cdn/shop/files/SamGalaxyS24-4_300x.jpg?v=1710528539',
    'Samsung', 'Galaxy S24', 'Galaxy', 2024, 147.0, 70.6, 7.6, 168, 'Vidrio y aluminio', 'Negro, Blanco, Verde, Azul',
    'Dynamic AMOLED 2X', 6.2, '2340x1080', 416, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 3 for Galaxy', 8, 3.3, 'Adreno 740',
    8, 128, false, 'Android', '14', 7, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 4000, 25, 15, 0, 15, '5G', 'Wi-Fi 6', '5.2', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 799.99, 699.99
),
-- Samsung S24+
(
	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwj3Su-sfk-3PUMFMSMk6wN3EiBTIKmBjy3Q&s',
    'Samsung', 'Galaxy S24+', 'Galaxy', 2024, 158.5, 75.9, 7.7, 196, 'Vidrio y aluminio', 'Negro, Blanco, Verde, Azul',
    'Dynamic AMOLED 2X', 6.7, '3120x1440', 526, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 3 for Galaxy', 8, 3.4, 'Adreno 740',
    12, 256, false, 'Android', '14', 7, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 4900, 45, 15, 0, 20, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 999.99, 899.99
),
-- Samsung S24 ultra 
(
	'https://imagedelivery.net/4fYuQyy-r8_rpBpcY7lH_A/falabellaCO/127936705_01/w=800,h=800,fit=pad',
    'Samsung', 'Galaxy S24 Ultra', 'Galaxy', 2024, 162.3, 79.0, 8.6, 232, 'Titanio y cristal', 'Negro, Blanco, Verde, Azul',
    'Dynamic AMOLED 2X', 6.8, '3120x1440', 515, 120, 'Gorilla Glass Armor', 'Snapdragon 8 Gen 3 for Galaxy', 8, 3.7, 'Adreno 740',
    12, 256, false, 'Android', '14', 7, 4, 200, 'f/1.7', 'Gran angular, Telefoto periscópica, Telefoto, Ultrawide', 5, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 5000, 45, 15, 0, 20, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    4, 'En pantalla', true, true, true, true, true, 'IP68', true, 1199.99, 999.99
),
-- Samsung S23
(
	'https://rec-line.com/img/productos/800x800/sm-s911bzkgeub.jpeg',
	'Samsung', 'Galaxy S23', 'Galaxy', 2023, 146.3, 70.9, 7.6, 168, 'Vidrio y metal', 'Phantom Black, Green, Cream, Lavender',
    'Dynamic AMOLED 2X', 6.1, '2340x1080', 425, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 2', 8, 3.36, 'Adreno 740',
    8, 128, false, 'Android', '13', 4, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 10, 'f/2.2',
    '4K@30fps', 3900, 25, 15, 0, 17.5, '5G', 'Wi-Fi 6', '5.3', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 799.99, 699.99
),
-- Samsung S23+
(
	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTppoBhdU9iztdB3rBT-8RNvFNKGDvo7N4SZA&s',
	'Samsung', 'Galaxy S23+', 'Galaxy', 2023, 157.8, 76.5, 7.6, 196, 'Vidrio y metal', 'Phantom Black, Green, Cream, Lavender',
    'Dynamic AMOLED 2X', 6.6, '2340x1080', 400, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 2', 8, 3.36, 'Adreno 740',
    8, 128, false, 'Android', '13', 4, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 10, 'f/2.2',
    '4K@30fps', 4700, 45, 15, 0, 18, '5G', 'Wi-Fi 6', '5.3', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 999.99, 849.99
),
-- Samsung S23 ultra 
(
	'https://http2.mlstatic.com/D_NQ_NP_982028-MLA73067605286_112023-O.webp',
	'Samsung', 'Galaxy S23 Ultra', 'Galaxy', 2023, 163.4, 78.1, 8.9, 234, 'Vidrio y metal', 'Phantom Black, Green, Cream, Lavender',
    'Dynamic AMOLED 2X', 6.8, '3088x1440', 500, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 2', 8, 3.36, 'Adreno 740',
    12, 256, false, 'Android', '13', 4, 4, 200, 'f/1.7', 'Gran angular, Telefoto periscópica, Telefoto, Ultrawide', 5, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 5000, 45, 15, 0, 20, '5G', 'Wi-Fi 6', '5.3', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    4, 'En pantalla', true, true, true, true, true, 'IP68', true, 1199.99, 999.99
),
-- Samsung S22
(
	'https://images.samsung.com/is/image/samsung/p6pim/es/sm-s901blvdeub/gallery/es-galaxy-s22-s901-410927-sm-s901blvdeub-533388078?$684_547_PNG$',
	'Samsung', 'Galaxy S22', 'Galaxy', 2022, 146.0, 70.6, 7.6, 168, 'Vidrio y metal', 'Negro, Blanco, Verde',
    'AMOLED', 6.1, '2400x1080', 422, 120, 'Gorilla Glass Victus', 'Exynos 2200', 8, 2.8, 'Xclipse 920',
    8, 128, true, 'Android', '12', 4, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 10, 'f/2.2',
    '4K@30fps', 3700, 25, 15, 0, 15.5, '5G', 'Wi-Fi 6', '5.2', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 799.99, 699.99
),
-- Samsung S22+
(
	'https://m.media-amazon.com/images/I/71GFJM41gKL.jpg' ,
	'Samsung', 'Galaxy S22+', 'Galaxy', 2022, 157.4, 75.8, 7.6, 195, 'Vidrio y metal', 'Negro, Blanco, Verde',
    'AMOLED', 6.6, '2340x1080', 400, 120, 'Gorilla Glass Victus', 'Exynos 2200', 8, 2.8, 'Xclipse 920',
    8, 128, true, 'Android', '12', 4, 3, 50, 'f/1.8', 'Gran angular, Telefoto', 3, 30, 'OIS', '8K@24fps', 10, 'f/2.2',
    '4K@30fps', 4500, 45, 15, 0, 18, '5G', 'Wi-Fi 6', '5.2', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    2, 'En pantalla', true, true, true, true, true, 'IP68', true, 999.99, 849.99
),
-- Samsung S22 ultra
(
    'https://i5.walmartimages.com/seo/Samsung-Galaxy-S22-ULTRA-5G-256GB-BLACK-Unlocked_9ec70d8b-192f-4125-8a1a-65b18e9bc27c.11b57d9f795d2b8b6ad96370aafad24e.jpeg',
    'Samsung', 'Galaxy S22 Ultra', 'Galaxy', 2022, 163.3, 77.9, 8.9, 228, 'Vidrio y metal', 'Negro, Blanco, Verde',
    'Dynamic AMOLED 2X', 6.8, '3088x1440', 500, 120, 'Gorilla Glass Victus', 'Exynos 2200', 8, 2.8, 'Xclipse 920',
    12, 128, true, 'Android', '12', 4, 4, 108, 'f/1.8', 'Gran angular, Telefoto periscópica, Telefoto, Ultrawide', 5, 30, 'OIS', '8K@24fps', 12, 'f/2.2',
    '4K@30fps', 5000, 45, 15, 0, 20, '5G', 'Wi-Fi 6', '5.2', true, 'USB-C', 'GPS, GLONASS', false, true, 'Dolby Atmos',
    4, 'En pantalla', true, true, true, true, true, 'IP68', true, 1199.99, 999.99
),
-- Samsung Galaxy Z Fold Special Edition
(
	'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiKnyWxSDg09atB4P_7l3B7hTS1GxjZPNtlg&s' ,
	'Samsung', 'Galaxy Z Fold Special Edition', 'Galaxy Z', 2024, 161.6, 73.9, 10.6, 253, 'Armor Aluminum y Gorilla Glass Victus 2', 'Negro',
    'Dynamic AMOLED 2X', 8.0, '2184x1968', NULL, 120, 'Gorilla Glass Victus 2', 'Snapdragon 8 Gen 3', 8, NULL, NULL,
    16, 512, false, 'Android', '14', NULL, 3, 200, 'f/1.8', 'Ultra gran angular de 12MP, Telefoto de 10MP', 3, 30, 'OIS', '8K@30fps', 10, 'f/2.2',
    '4K@30fps', 4272, 45, true, false, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS, BDS, GALILEO', false, true, 'Dolby Atmos',
    3, 'Lateral', true, true, true, true, true, 'IPX8', true, 2020.00, NULL
),
-- Samsung Galaxy Z Fold5
(
    'https://celucambio.com/cdn/shop/files/GALAXYZFLIP5frontal.webp?v=1713491215',
    'Samsung', 'Galaxy Z Fold5', 'Galaxy Z', 2023, 154.9, 67.1, 13.4, 263, 'Armor Aluminum y Gorilla Glass Victus+', 'Negro, Gris, Azul',
    'Dynamic AMOLED 2X', 7.6, '2176x1812', NULL, 120, 'Gorilla Glass Victus+', 'Snapdragon 8 Gen 2', 8, NULL, NULL,
    12, 256, false, 'Android', '13', NULL, 3, 50, 'f/1.8', 'Ultra gran angular de 12MP, Telefoto de 10MP', 3, 30, 'OIS', '8K@30fps', 10, 'f/2.2',
    '4K@30fps', 4400, 25, true, false, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS, BDS, GALILEO', false, true, 'Dolby Atmos',
    3, 'Lateral', true, true, true, true,true, 'IPX8', true, 1799.00, NULL
),
-- Samsung Galaxy Z Flip5
(
    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fcelucambio.com%2Fproducts%2Fsamsung-galaxy-z-flip-5&psig=AOvVaw1UjxdApKtfkBsq_Avx-sKT&ust=1738598379275000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNjHofatpYsDFQAAAAAdAAAAABAE',
    'Samsung', 'Galaxy Z Flip5', 'Galaxy Z', 2023, 165.1, 71.9, 15.1, 187, 'Armor Aluminum y Gorilla Glass Victus+', 'Negro, Verde, Lavanda, Crema',
    'Dynamic AMOLED 2X', 6.7, '2640x1080', NULL, 120, 'Gorilla Glass Victus+', 'Snapdragon 8 Gen 2', 8, NULL, NULL,
    8, 256, false, 'Android', '13', NULL, 2, 12, 'f/1.8', 'Ultra gran angular de 12MP', 0, 10, 'OIS', '4K@30fps', 10, 'f/2.4',
    '4K@30fps', 3700, 25, true, false, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS, BDS, GALILEO', false, true, 'Dolby Atmos',
    2, 'Lateral', true, true, true, true, true, 'IPX8', true, 999.00, NULL
)
;
-- Aqui empieza la sección de apple 
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 16
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-14858971.jpg?v=1726245744&width=823',
    'Apple', 'iPhone 16', 'iPhone', 2024, 147.6, 71.5, 7.8, 172, 'Aluminio y vidrio', 'Negro, Blanco, Rosa, Verde Azulado',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A18 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    6, 128, false, 'iOS', '18', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3877, 20, true, false, 18, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 899.00, 899.00
),
-- iPhone 16 Plus
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-14858831.jpg?v=1726245795',
    'Apple', 'iPhone 16 Plus', 'iPhone', 2024, 160.9, 77.8, 7.8, 199, 'Aluminio y vidrio', 'Negro, Blanco, Rosa, Verde Azulado, Ultramarino',
    'Super Retina XDR OLED', 6.7, '2796x1290', 460, 60, 'Ceramic Shield', 'A18 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    6, 128, false, 'iOS', '18', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 4325, 20, true, false, 20, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 999.00, 999.00
),
-- iPhone 16 Pro
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-14858941.jpg?v=1726245469&width=823',
    'Apple', 'iPhone 16 Pro', 'iPhone Pro', 2024, 146.8, 70.9, 7.8, 187, 'Titanio y vidrio', 'Negro Espacial, Blanco, Azul Profundo, Oro',
    'Super Retina XDR OLED', 6.1, '2556x1179', 460, 120, 'Ceramic Shield', 'A18 Pro', 6, 3.2, 'Apple GPU de 6 núcleos',
    8, 256, false, 'iOS', '18', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 5, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 3923, 27, true, true, 22, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C 3.0', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1199.00, 1199.00
),
-- iPhone 16 Pro Max
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-14858931_fb57d19f-c17a-4d2b-bbe7-192012d818b8.jpg?v=1726245623&width=823',
    'Apple', 'iPhone 16 Pro Max', 'iPhone Pro', 2024, 159.9, 76.7, 8.0, 221, 'Titanio y vidrio', 'Negro Espacial, Blanco, Azul Profundo, Oro',
    'Super Retina XDR OLED', 6.7, '2796x1290', 460, 120, 'Ceramic Shield', 'A18 Pro', 6, 3.2, 'Apple GPU de 6 núcleos',
    8, 256, false, 'iOS', '18', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 5, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 4323, 29, true, true, 25, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C 3.0', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1299.00, 1299.00
);

INSERT INTO celulares (
    imagen_url , marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 15
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-10935071.jpg?v=1723511341&width=823',
    'Apple', 'iPhone 15', 'iPhone', 2023, 147.6, 71.6, 7.8, 171, 'Aluminio y vidrio', 'Negro, Azul, Amarillo, Rosa, Verde',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A16 Bionic', 6, 3.0, 'Apple GPU de 5 núcleos',
    6, 128, false, 'iOS', '17', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3877, 20, true, false, 18, '5G', 'Wi-Fi 6', '5.3', true, 'USB-C', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 799.00, 799.00
),
-- iPhone 15 Plus
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-10935091.jpg?v=1723510621&width=823',
    'Apple', 'iPhone 15 Plus', 'iPhone', 2023, 160.9, 77.8, 7.8, 201, 'Aluminio y vidrio', 'Negro, Azul, Amarillo, Rosa, Verde',
    'Super Retina XDR OLED', 6.7, '2796x1290', 460, 60, 'Ceramic Shield', 'A16 Bionic', 6, 3.0, 'Apple GPU de 5 núcleos',
    6, 128, false, 'iOS', '17', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 4325, 20, true, false, 20, '5G', 'Wi-Fi 6', '5.3', true, 'USB-C', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 899.00, 899.00
),
-- iPhone 15 Pro
(
    'https://mac-center.com/cdn/shop/files/iPhone_15_Pro_Blue_Titanium_PDP_Image_Position-1__COES_6fefe3dd-72a3-4c0e-9820-82de31c1bb74.jpg?v=1719775813&width=823',
    'Apple', 'iPhone 15 Pro', 'iPhone Pro', 2023, 146.6, 70.6, 8.0, 187, 'Titanio y vidrio', 'Negro Espacial, Blanco, Azul Profundo, Oro',
    'Super Retina XDR OLED', 6.1, '2556x1179', 460, 120, 'Ceramic Shield', 'A17 Pro', 6, 3.2, 'Apple GPU de 6 núcleos',
    8, 256, false, 'iOS', '17', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 5, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 3923, 27, true, true, 22, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C 3.0', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1099.00, 1099.00
),
-- iPhone 15 Pro Max
(
    'https://www.clevercel.co/cdn/shop/files/1_b1c2898f-9a16-454f-a5f4-0523916e587b_1500x.jpg?v=1737752981',
    'Apple', 'iPhone 15 Pro Max', 'iPhone Pro', 2023, 159.9, 76.7, 8.3, 221, 'Titanio y vidrio', 'Negro Espacial, Blanco, Azul Profundo, Oro',
    'Super Retina XDR OLED', 6.7, '2796x1290', 460, 120, 'Ceramic Shield', 'A17 Pro', 6, 3.2, 'Apple GPU de 6 núcleos',
    8, 256, false, 'iOS', '17', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 5, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 4323, 29, true, true, 25, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C 3.0', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1199.00, 1199.00
);
INSERT INTO celulares (
    imagen_url ,marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 14
(
    'https://co.tiendasishop.com/cdn/shop/files/IMG-7379865_70853119-ae44-432d-96df-e8939375d340.jpg?v=1723512464&width=823',
    'Apple', 'iPhone 14', 'iPhone', 2022, 146.7, 71.5, 7.8, 172, 'Aluminio y vidrio', 'Negro Medianoche, Azul, Blanco Estelar, Morado, Rojo',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 5 núcleos',
    6, 128, false, 'iOS', '16', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 3279, 20, true, false, 19, '5G', 'Wi-Fi 6', '5.3', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 799.00, 799.00
),
-- iPhone 14 Plus
(
    'https://mac-center.com/cdn/shop/files/IMG-7379940_1088d033-d093-4c65-8244-f3fff96842db.jpg?v=1723749830&width=823',
    'Apple', 'iPhone 14 Plus', 'iPhone', 2022, 160.8, 78.1, 7.8, 203, 'Aluminio y vidrio', 'Negro Medianoche, Azul, Blanco Estelar, Morado, Rojo',
    'Super Retina XDR OLED', 6.7, '2778x1284', 460, 60, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 5 núcleos',
    6, 128, false, 'iOS', '16', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 4325, 20, true, false, 21, '5G', 'Wi-Fi 6', '5.3', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 899.00, 899.00
),
-- iPhone 14 Pro
(
   'https://m.media-amazon.com/images/I/51CJE8vrvIL.jpg' ,
    'Apple', 'iPhone 14 Pro', 'iPhone Pro', 2022, 147.5, 71.5, 7.9, 206, 'Acero inoxidable y vidrio', 'Negro Espacial, Plata, Oro, Morado Oscuro',
    'Super Retina XDR OLED', 6.1, '2556x1179', 460, 120, 'Ceramic Shield', 'A16 Bionic', 6, 3.5, 'Apple GPU de 5 núcleos',
    6, 256, false, 'iOS', '16', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 3, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 3200, 25, true, true, 20, '5G', 'Wi-Fi 6', '5.3', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1099.00, 1099.00
),
-- iPhone 14 Pro Max
(
    'https://cdnx.jumpseller.com/tiquemobile/image/31087133/resize/610/610?1674349112',
    'Apple', 'iPhone 14 Pro Max', 'iPhone Pro', 2022, 160.7, 77.6, 7.9, 240, 'Acero inoxidable y vidrio', 'Negro Espacial, Plata, Oro, Morado Oscuro',
    'Super Retina XDR OLED', 6.7, '2796x1290', 460, 120, 'Ceramic Shield', 'A16 Bionic', 6, 3.5, 'Apple GPU de 5 núcleos',
    6, 256, false, 'iOS', '16', 5, 3, 48, 'f/1.78', 'Ultra gran angular de 12MP, Telefoto de 12MP', 3, 15, 'OIS', '4K@60fps', 12, 'f/1.9',
    '4K@60fps', 4323, 27, true, true, 22, '5G', 'Wi-Fi 6', '5.3', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1199.00, 1199.00
);
INSERT INTO celulares (
   imagen_url ,marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 13
(
   'https://mac-center.com/cdn/shop/files/IMG-12496198.jpg?v=1723750557',
   'Apple', 'iPhone 13', 'iPhone', 2021, 146.7, 71.5, 7.7, 174, 'Aluminio y vidrio', 'Negro Medianoche, Azul, Blanco Estelar, Rosa, Rojo',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 4 núcleos',
    4, 128, false, 'iOS', '15', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3240, 20, true, false, 19, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 799.00, 799.00
),
-- iPhone 13 Mini
(
    'https://m.media-amazon.com/images/I/61y5xqx5jHL.jpg',
    'Apple', 'iPhone 13 Mini', 'iPhone', 2021, 131.5, 64.2, 7.7, 140, 'Aluminio y vidrio', 'Negro Medianoche, Azul, Blanco Estelar, Rosa, Rojo',
    'Super Retina XDR OLED', 5.4, '2340x1080', 476, 60, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 4 núcleos',
    4, 128, false, 'iOS', '15', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 2438, 20, true, false, 17, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 699.00, 699.00
),
-- iPhone 13 Pro
(
    'https://cdn-caaon.nitrocdn.com/nSUvCbQMMiqcWFWHyDjvUdFoEoERVdXO/assets/images/optimized/rev-883bfcb/www.losdistribuidores.com/wp-content/uploads/2021/10/iphone-13-pro-2.jpg',
    'Apple', 'iPhone 13 Pro', 'iPhone Pro', 2021, 146.7, 71.5, 7.7, 204, 'Acero inoxidable y vidrio', 'Grafito, Oro, Plata, Azul Sierra',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 120, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 5 núcleos',
    6, 256, false, 'iOS', '15', 5, 3, 12, 'f/1.5', 'Ultra gran angular de 12MP, Telefoto de 12MP', 3, 15, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3095, 25, true, true, 20, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 999.00, 999.00
),
-- iPhone 13 Pro Max
(
    'https://mac-center.com/cdn/shop/files/iPhone_13_Pro_Max_Green_PDP_Image_Position-1A_CLCO_794f8f80-88d2-462f-9c9c-c922de0f5159.jpg?v=1700293191&width=823',
    'Apple', 'iPhone 13 Pro Max', 'iPhone Pro', 2021, 160.8, 78.1, 7.7, 238, 'Acero inoxidable y vidrio', 'Grafito, Oro, Plata, Azul Sierra',
    'Super Retina XDR OLED', 6.7, '2778x1284', 458, 120, 'Ceramic Shield', 'A15 Bionic', 6, 3.2, 'Apple GPU de 5 núcleos',
    6, 256, false, 'iOS', '15', 5, 3, 12, 'f/1.5', 'Ultra gran angular de 12MP, Telefoto de 12MP', 3, 15, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 4352, 27, true, true, 22, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1099.00, 1099.00
);
INSERT INTO celulares (
    imagen_url,marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 12
(
    'https://exitocol.vtexassets.com/arquivos/ids/16529329/iphone-12-128-gb-negro-reacondicionado.jpg?v=638115732693430000',
    'Apple', 'iPhone 12', 'iPhone', 2020, 146.7, 71.5, 7.4, 164, 'Aluminio y vidrio', 'Negro, Blanco, Azul, Verde, Rojo',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A14 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '14', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 2815, 20, true, false, 17, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 799.00, 799.00
),
-- iPhone 12 Mini
(
    'https://i5.walmartimages.com/seo/Straight-Talk-Apple-iPhone-12-Mini-64GB-Black-Prepaid-Smartphone-Locked-to-Straight-Talk_20fea874-4c06-4d4d-aa0e-2ef3d870532c.ca3e60beed73864b573392f0f388da64.jpeg',
    'Apple', 'iPhone 12 Mini', 'iPhone', 2020, 131.5, 64.2, 7.4, 135, 'Aluminio y vidrio', 'Negro, Blanco, Azul, Verde, Rojo',
    'Super Retina XDR OLED', 5.4, '2340x1080', 476, 60, 'Ceramic Shield', 'A14 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '14', 5, 2, 12, 'f/1.6', 'Ultra gran angular de 12MP', 2, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 2227, 20, true, false, 15, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal', true, true, true, true, true, 'IP68', true, 699.00, 699.00
),
-- iPhone 12 Pro
(
    'https://m.media-amazon.com/images/I/51n-83C8HYL.jpg',
    'Apple', 'iPhone 12 Pro', 'iPhone Pro', 2020, 146.7, 71.5, 7.4, 189, 'Acero inoxidable y vidrio', 'Grafito, Plata, Oro, Azul Pacífico',
    'Super Retina XDR OLED', 6.1, '2532x1170', 460, 60, 'Ceramic Shield', 'A14 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    6, 128, false, 'iOS', '14', 5, 3, 12, 'f/1.6', 'Ultra gran angular de 12MP, Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 2815, 20, true, true, 18, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 999.00, 999.00
),
-- iPhone 12 Pro Max
(
    'https://m.media-amazon.com/images/I/71FuI8YvCNL.jpg',
    'Apple', 'iPhone 12 Pro Max', 'iPhone Pro', 2020, 160.8, 78.1, 7.4, 228, 'Acero inoxidable y vidrio', 'Grafito, Plata, Oro, Azul Pacífico',
    'Super Retina XDR OLED', 6.7, '2778x1284', 458, 60, 'Ceramic Shield', 'A14 Bionic', 6, 3.1, 'Apple GPU de 4 núcleos',
    6, 128, false, 'iOS', '14', 5, 3, 12, 'f/1.6', 'Ultra gran angular de 12MP, Telefoto de 12MP', 2, 12, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3687, 20, true, true, 20, '5G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS, BeiDou',
    false, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, true, 'IP68', true, 1099.00, 1099.00
);
INSERT INTO celulares (
    imagen_url,marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone SE (2020)
(
    'https://exitocol.vtexassets.com/arquivos/ids/24310445/iphone-se-2020-128gb-negro-reacondicionado.jpg?v=638604849135730000',
    'Apple', 'iPhone SE (2020)', 'iPhone SE', 2020, 138.4, 67.3, 7.3, 148, 'Aluminio y vidrio', 'Negro, Blanco, Rojo',
    'Retina IPS LCD', 4.7, '1334x750', 326, 60, 'Vidrio resistente', 'A13 Bionic', 6, 2.65, 'Apple GPU de 4 núcleos',
    3, 64, false, 'iOS', '13', 5, 1, 12, 'f/1.8', null, 0, 5, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@30fps', 1821, 18, false, false, 13, '4G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, null, 2, 'Frontal', true, true, true, false, false, 'IP67', false, 399.00, 399.00
),
-- iPhone 11
(
    'https://mac-center.com/cdn/shop/files/194252097236-7.jpg?v=1709763494&width=176',
    'Apple', 'iPhone 11', 'iPhone', 2019, 150.9, 75.7, 8.3, 194, 'Aluminio y vidrio', 'Negro, Blanco, Verde, Amarillo, Púrpura, Rojo',
    'Liquid Retina IPS LCD', 6.1, '1792x828', 326, 60, 'Vidrio resistente', 'A13 Bionic', 6, 2.65, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '13', 5, 2, 12, 'f/1.8', 'Ultra gran angular de 12MP', 0, 5, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3110, 18, false, false, 17, '4G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, 'Dolby Atmos', 2, 'Frontal', true, true, true, true, false, 'IP68', true, 699.00, 699.00
),
-- iPhone 11 Pro
(
    'https://mercaldas.vtexassets.com/arquivos/ids/1334452-800-auto?v=638621947663470000&width=800&height=auto&aspect=true',
    'Apple', 'iPhone 11 Pro', 'iPhone Pro', 2019, 144.0, 71.4, 8.1, 188, 'Acero inoxidable y vidrio', 'Espacial Gris, Plata, Oro, Verde Medianoche',
    'Super Retina XDR OLED', 5.8, '2436x1125', 458, 60, 'Vidrio resistente', 'A13 Bionic', 6, 2.65, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '13', 5, 3, 12, 'f/1.8', 'Ultra gran angular de 12MP, Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3046, 18, true, false, 18, '4G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, false, 'IP68', true, 999.00, 999.00
),
-- iPhone 11 Pro Max
(
    'https://images-cdn.ubuy.com.co/634d109273c08066984ce2b3-apple-iphone-11-pro-max-64gb-gold.jpg',
    'Apple', 'iPhone 11 Pro Max', 'iPhone Pro', 2019, 158.0, 77.8, 8.1, 226, 'Acero inoxidable y vidrio', 'Espacial Gris, Plata, Oro, Verde Medianoche',
    'Super Retina XDR OLED', 6.5, '2688x1242', 458, 60, 'Vidrio resistente', 'A13 Bionic', 6, 2.65, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '13', 5, 3, 12, 'f/1.8', 'Ultra gran angular de 12MP, Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 12, 'f/2.2',
    '4K@60fps', 3969, 18, true, false, 20, '4G', 'Wi-Fi 6', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, 'Dolby Atmos', 3, 'Frontal y Trasera', true, true, true, true, false, 'IP68', true, 1099.00, 1099.00
);
INSERT INTO celulares (
    imagen_url,marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone XS Max
(
   'https://buy.gazelle.com/cdn/shop/files/iPhone_XS_Max_-_gold-_Overlap_Trans-cropped.jpg?v=1734652283&width=1946' ,
   'Apple', 'iPhone XS Max', 'iPhone XS', 2018, 157.5, 77.4, 7.7, 208, 'Acero inoxidable y vidrio', 'Oro, Plata, Gris Espacial',
    'Super Retina OLED', 6.5, '2688x1242', 458, 60, 'Vidrio resistente', 'A12 Bionic', 6, 2.5, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '12', 5, 2, 12, 'f/1.8', 'Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@60fps', 3174, 18, true, false, 20, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, null, 3, 'Frontal y Trasera', true, true, true, true, false, 'IP68', true, 1099.00, 1099.00
),
-- iPhone XS
(
    'https://acdn.mitiendanube.com/stores/001/116/601/products/x-web-black1-4a15096509d6e1fb5516741591769495-640-0.jpg',
    'Apple', 'iPhone XS', 'iPhone XS', 2018, 143.6, 70.9, 7.7, 177, 'Acero inoxidable y vidrio', 'Oro, Plata, Gris Espacial',
    'Super Retina OLED', 5.8, '2436x1125', 458, 60, 'Vidrio resistente', 'A12 Bionic', 6, 2.5, 'Apple GPU de 4 núcleos',
    4, 64, false, 'iOS', '12', 5, 2, 12, 'f/1.8', 'Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@60fps', 2658, 18, true, false, 17, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, null, 3, 'Frontal y Trasera', true, true, true, true, false, 'IP68', true, 999.00, 999.00
),
-- iPhone XR
(
    'https://m.media-amazon.com/images/I/51z1UO6N6LL.jpg',
    'Apple', 'iPhone XR', 'iPhone XR', 2018, 150.9, 75.7, 8.3, 194, 'Aluminio y vidrio', 'Negro, Blanco, Azul, Amarillo, Coral, Rojo',
    'Liquid Retina IPS LCD', 6.1, '1792x828', 326, 60, 'Vidrio resistente', 'A12 Bionic', 6, 2.5, 'Apple GPU de 4 núcleos',
    3, 64, false, 'iOS', '12', 5, 1, 12, 'f/1.8', null, 0, 5, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@60fps', 2942, 18, false, false, 16, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, null, 2, 'Frontal', true, true, true, false, false, 'IP67', false, 749.00, 749.00
),
-- iPhone X
(
    'https://carulla.vtexassets.com/arquivos/ids/17337021/iphone-x-64gb-silver-reacondicionado.jpg?v=638608910872270000',
    'Apple', 'iPhone X', 'iPhone', 2017, 143.6, 70.9, 7.7, 174, 'Acero inoxidable y vidrio', 'Plata, Gris Espacial',
    'Super Retina OLED', 5.8, '2436x1125', 458, 60, 'Vidrio resistente', 'A11 Bionic', 6, 2.39, 'Apple GPU de 3 núcleos',
    3, 64, false, 'iOS', '11', 5, 2, 12, 'f/1.8', 'Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@60fps', 2716, 18, true, false, 16, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, null, 3, 'Frontal y Trasera', true, true, true, true, false, 'IP67', false, 999.00, 999.00
);
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)
VALUES
-- iPhone 8
(
    'https://olimpica.vtexassets.com/arquivos/ids/1213425/iphone-8.jpg?v=638345551631000000',
    'Apple', 'iPhone 8', 'iPhone', 2017, 138.4, 67.3, 7.3, 148, 'Aluminio y vidrio', 'Plata, Gris Espacial, Oro, Rojo',
    'Retina IPS LCD', 4.7, '1334x750', 326, 60, 'Ion-X Glass', 'A11 Bionic', 6, 2.39, 'Apple GPU de 3 núcleos',
    2, 64, false, 'iOS', '11', 5, 1, 12, 'f/1.8', NULL, 0, 5, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@30fps', 1821, 15, true, false, 14, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, NULL, 2, 'Frontal', true, true, true, false, false, 'IP67', false, 699.00, 699.00
),
-- iPhone 8 Plus
(
    'https://saldos.clevercel.co/cdn/shop/products/iphone_8_plus_2e21bfba-903a-449e-a022-8d12cec2d478.png?v=1738364212',
    'Apple', 'iPhone 8 Plus', 'iPhone', 2017, 158.4, 78.1, 7.5, 202, 'Aluminio y vidrio', 'Plata, Gris Espacial, Oro, Rojo',
    'Retina IPS LCD', 5.5, '1920x1080', 401, 60, 'Ion-X Glass', 'A11 Bionic', 6, 2.39, 'Apple GPU de 3 núcleos',
    3, 64, false, 'iOS', '11', 5, 2, 12, 'f/1.8', 'Telefoto de 12MP', 2, 10, 'OIS', '4K@60fps', 7, 'f/2.2',
    '1080p@30fps', 2691, 15, true, false, 18, '4G', 'Wi-Fi 5', '5.0', true, 'Lightning', 'GPS, GLONASS, Galileo, QZSS',
    true, true, NULL, 2, 'Frontal y Trasera', true, true, true, true, false, 'IP67', false, 799.00, 799.00
),
-- iPhone 7
(
    'https://http2.mlstatic.com/D_NQ_NP_919129-MLU77640606813_072024-O.webp',
    'Apple', 'iPhone 7', 'iPhone', 2016, 138.3, 67.1, 7.1, 138, 'Aluminio', 'Negro, Negro Mate, Oro, Oro Rosa, Plata, Rojo',
    'Retina IPS LCD', 4.7, '1334x750', 326, 60, 'Ion-X Glass', 'A10 Fusion', 4, 2.34, 'Apple GPU de 6 núcleos',
    2, 32, false, 'iOS', '10', 5, 1, 12, 'f/2.2', NULL, 0, 5, 'OIS', '4K@30fps', 7, 'f/2.2',
    '1080p@30fps', 1960, 15, false, false, 14, '4G', 'Wi-Fi 5', '4.2', true, 'Lightning', 'GPS, GLONASS',
    false, false, NULL, 2, 'Frontal', true, true, true, false, false, 'IP67', false, 649.00, 649.00
),
-- iPhone 7 Plus
(
    'https://hsi.com.co/wp-content/uploads/2017/03/Imagen-iPhone-7-Plus-32GB-Usado-A.jpg',
    'Apple', 'iPhone 7 Plus', 'iPhone', 2016, 158.2, 77.9, 7.3, 202, 'Aluminio', 'Negro, Negro Mate, Oro, Oro Rosa, Plata, Rojo',
    'Retina IPS LCD', 5.5, '1920x1080', 401, 60, 'Ion-X Glass', 'A10 Fusion', 4, 2.34, 'Apple GPU de 6 núcleos',
    3, 32, false, 'iOS', '10', 5, 2, 12, 'f/1.8', 'Telefoto de 12MP', 2, 10, 'OIS', '4K@30fps', 7, 'f/2.2',
    '1080p@30fps', 2900, 15, false, false, 17, '4G', 'Wi-Fi 5', '4.2', true, 'Lightning', 'GPS, GLONASS',
    false, false, NULL, 2, 'Frontal y Trasera', true, true, true, true, false, 'IP67', false, 769.00, 769.00
);
-- Aqui empieza la sección de xiaomi
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  
-- Redmi Note 14 Pro+ 5G  
(  
    'https://storage.comprasmartphone.com/smartphones/xiaomi-redmi-note-14-pro-plus-5g.png',
    'Xiaomi', 'Redmi Note 14 Pro+', 'Redmi Note', 2025, 162.53, 74.67, 8.75, 210.14, 'No especificado',
    'Negro Medianoche, Azul Hielo, Violeta Lavanda', 'AMOLED', 6.67, '2712 x 1220', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'Snapdragon 7s Gen 3', 8, 2.5, 'Adreno', 8, 256, false, 'HyperOS', 'Basado en Android 14', NULL, 3, 200,
    'f/1.65', '8MP Ultra Gran Angular, 2MP Macro', NULL, NULL, 'OIS', '4K@24/30fps, 1080p@30/60fps, 720p@30fps', 20, 'f/2.2',
    '1080p@30/60fps, 720p@30fps', 5110, 120, false, false, NULL, '5G', 'Wi-Fi 6/6E/5/4', '5.4', true, 'USB-C',
    'Sí', false, true, NULL, 2, 'En pantalla', true, true, true, false, false, 'IP68', false, 479.00, NULL  
),
-- Redmi Note 14 Pro
(
    'https://www.phonelectrics.com/cdn/shop/files/redmi_note_14_pro_300x.webp?v=1736746437',
    'Xiaomi', 'Redmi Note 14 Pro', 'Redmi Note', 2025, 162.3, 74.4, 8.2, 190, 'No especificado',
    'Negro, Azul, Púrpura, Blanco', 'AMOLED', 6.67, '2712 x 1220', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'MediaTek Dimensity 7300 Ultra', 8, NULL, 'No especificado', 8, 256, false, 'HyperOS', 'Basado en Android 14', NULL, 3, 200,
    'f/1.65', '8MP Ultra Gran Angular, 2MP Macro', NULL, NULL, 'OIS', '4K@24/30fps, 1080p@30/60fps, 720p@30fps', 20, 'f/2.2',
    '1080p@30/60fps, 720p@30fps', 5110, 45, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'En pantalla', true, true, true, false, false, 'IP68', false, 399.00, NULL
),
-- Redmi Note 14
(
    'https://co.celulares.com/fotos/xiaomi-redmi-note-14-97773-g-alt.jpg',
    'Xiaomi', 'Redmi Note 14', 'Redmi Note', 2025, 163.3, 76.1, 8.2, 198, 'No especificado',
    'Negro, Azul, Verde, Blanco', 'AMOLED', 6.67, '2400 x 1080', NULL, 120, 'Corning Gorilla Glass 5',
    'MediaTek Helio G99 Ultra', 8, NULL, 'No especificado', 6, 128, true, 'HyperOS', 'Basado en Android 14', NULL, 2, 108,
    'f/1.7', '2MP Profundidad', NULL, NULL, 'No especificado', '1080p@30fps, 720p@30fps', 16, 'f/2.2',
    '1080p@30fps, 720p@30fps', 5000, 33, false, false, NULL, '4G', 'Wi-Fi 5', '5.3', false, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Lateral', true, true, true, false, false, 'IP54', false, 229.00, NULL
),
-- Poco x7 pro
(
    'https://www.phonelectrics.com/cdn/shop/files/Pica-enhance-20250114154914_300x.png?v=1736887985',
    'POCO', 'X7 Pro', 'X', 2025, 160.75, 75.24, 8.29, 195, 'No especificado',
    'Amarillo, Negro, Verde', 'AMOLED', 6.67, '2712 x 1220', NULL, 120, 'Corning Gorilla Glass 7i',
    'MediaTek Dimensity 8400-Ultra', 8, 3.25, 'Mali-G720', 8, 256, false, 'HyperOS 2', 'Basado en Android 15', NULL, 3, 50,
    'f/1.5', '8MP Ultra Gran Angular f/2.2, 2MP Macro f/2.4', NULL, NULL, 'OIS', '4K@30fps, 1080p@60fps, 720p@30fps', 20, 'f/2.2',
    '1080p@30fps, 720p@30fps', 6000, 90, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, 'Dolby Atmos', 2, 'En pantalla', true, true, true, false, false, 'IP68', false, 369.00, NULL
),
-- Poco x7 
(
    'https://www.celulares.com/fotos/xiaomi-poco-x7-98037-g-alt.jpg',
    'POCO', 'X7', 'X', 2025, 162.33, 74.42, 8.4, 185.5, 'No especificado',
    'Negro, Plateado, Verde', 'AMOLED CrystalRes', 6.67, '2712 x 1220', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'MediaTek Dimensity 7300-Ultra', 8, 2.5, 'Mali-G615 MC2', 8, 256, false, 'HyperOS', 'Basado en Android 14', NULL, 3, 50,
    'f/1.5', '8MP Ultra Gran Angular f/2.2, 2MP Macro f/2.4', NULL, NULL, 'OIS', '4K@24/30fps, 1080p@30/60fps, 720p@30fps', 20, 'f/2.2',
    '1080p@30/60fps, 720p@30fps', 5110, 45, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, 'Dolby Atmos', 2, 'En pantalla', true, true, true, false, false, 'IP68', false, 299.00, NULL
),
-- Redmi 14C 5G
(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6UGnsQ4ZevmHJXLd1Y04fdQli5Cq3dKKdMQ&s',
    'Xiaomi', 'Redmi 14C 5G', 'Redmi 14', 2025, 162.3, 74.4, 8.2, 205, 'Plástico',
    'Negro, Plateado, Verde', 'IPS LCD', 6.88, '1640 x 720', 260, 120, 'No especificado',
    'Snapdragon 4 Gen 2', 8, 2.2, 'Adreno 619', 4, 128, true, 'HyperOS', 'Basado en Android 14', 2, 2, 50,
    'f/1.8', '2MP', NULL, NULL, NULL, '1080p@30fps', 20, 'f/2.2',
    '1080p@30fps', 5160, 18, false, false, NULL, '5G', 'Wi-Fi 5', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Lateral', true, true, true, false, false, 'IP53', false, 149.00, NULL
),
-- Redmi turbo 4 
(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQinfgkLTvnMG1qNiCkM6rdA8BWSN4mZPxYbg&s',
    'Xiaomi', 'Redmi Turbo 4', 'Redmi Turbo', 2025, 169.95, 75.24, 8.06, 203.5, 'Metal y vidrio',
    'Sombra Negra, Azul Marino, Plata', 'OLED', 6.67, '2712 x 1220', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'MediaTek Dimensity 8400-Ultra', 8, 2.85, 'Mali-G715 MC10', 12, 256, true, 'HyperOS 2', 'Basado en Android 15', 2, 3, 50,
    'f/1.5', '8MP Ultra Gran Angular, 2MP Macro', NULL, NULL, 'OIS', '4K@30fps', 20, 'f/2.2',
    '1080p@30fps', 6550, 90, false, false, NULL, '5G', 'Wi-Fi 6', '6.0', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'En pantalla', true, true, true, false, false, 'IP68+IP69', false, 265.00, NULL
),
-- Poco C75 5G
(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMxQlJWMjwlKWC409nI5-Ne-3aFO6YtUMhLQ&s',
    'Xiaomi', 'POCO C75 5G', 'POCO C', 2024, 171.88, 77.8, 8.22, 204, 'Plástico y vidrio',
    'Negro, Verde, Dorado', 'IPS LCD', 6.88, '1640 x 720', NULL, 120, 'Corning Gorilla Glass',
    'MediaTek Helio G81 Ultra', 8, 2.0, 'Mali-G52 MC2', 6, 128, true, 'HyperOS', 'Basado en Android 14', NULL, 2, 50,
    'f/1.8', '2MP Sensor de profundidad', NULL, NULL, NULL, '1080p@30fps', 13, 'f/2.0',
    '1080p@30fps', 5160, 18, false, false, NULL, '4G', 'Wi-Fi 5', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Lateral', true, true, true, false, false, 'IP52', false, 129.99, NULL
),
-- Redmi Note 13R
(
    'https://www.losdistribuidores.com/wp-content/uploads/2024/05/xiaomi-redmi-note-13r-plateado.webp',
    'Xiaomi', 'Redmi Note 13R', 'Redmi Note', 2024, 168.6, 76.3, 8.2, 205, 'Plástico y vidrio',
    'Negro, Verde, Dorado', 'IPS LCD', 6.79, 'FHD+', NULL, 120, 'Corning Gorilla Glass',
    'MediaTek Dimensity 4 Gen 2 Advanced Edition', 8, NULL, 'No especificado', 6, 128, true, 'HyperOS', 'Basado en Android 14', NULL, 2, 50,
    'f/1.8', '5MP', NULL, NULL, NULL, '1080p@30fps', 5, 'f/2.0',
    '1080p@30fps', 5030, 33, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Lateral', true, true, true, false, false, 'IP52', false, 199.99, NULL
),
-- Redmi K80
(
    'https://www.giztop.com/media/catalog/product/cache/97cc1143d2e20f2b0c8ea91aaa12053c/r/e/redmi-k80-01.jpg',
    'Xiaomi', 'Redmi K80', 'Redmi K', 2024, 160.3, 75.0, 8.1, 206, 'Vidrio y metal',
    'Negro, Azul, Verde, Blanco', 'OLED', 6.67, '3200 x 1440', 526, 120, 'Corning Gorilla Glass',
    'Qualcomm Snapdragon 8 Gen 3', 8, 3.3, 'Adreno 750', 12, 256, false, 'HyperOS 2.0', 'Basado en Android 15', NULL, 2, 50,
    'f/1.6', '20MP', NULL, NULL, NULL, '8K@30fps', 20, 'f/2.2',
    '4K@30fps', 6550, 120, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 699.00, NULL

);
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  
-- Redmi k80 pro +
(
    'https://www.giztop.com/media/catalog/product/cache/97cc1143d2e20f2b0c8ea91aaa12053c/r/e/redmi-k80-black_1.jpg',
    'Xiaomi', 'Redmi K80 Pro', 'Redmi K', 2024, 161.8, 75.3, 8.4, 208, 'Vidrio y metal',
    'Negro, Azul, Verde, Blanco', 'OLED', 6.67, '3200 x 1440', 526, 120, 'Corning Gorilla Glass',
    'Qualcomm Snapdragon 8 Gen 3', 12, 3.3, 'Adreno 750', 16, 512, false, 'HyperOS 2.0', 'Basado en Android 15', NULL, 2, 200,
    'f/1.6', '20MP Ultra Gran Angular, 8MP Macro', NULL, NULL, NULL, '8K@30fps', 20, 'f/2.2',
    '4K@30fps', 7000, 120, false, false, NULL, '5G', 'Wi-Fi 6', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 799.00, NULL
),
-- Xiaomi Mix Flip 
(
    'https://i02.appmifile.com/900_item_co/27/09/2024/ab155af02e20c0ce9113221e5c0d4fc1.png',
    'Xiaomi', 'Mix Flip', 'Mix', 2025, 166.3, 76.6, 7.9, 210, 'Aluminio y vidrio',
    'Negro, Plata, Azul', 'AMOLED', 6.5, '2520 x 1080', 402, 120, 'Corning Gorilla Glass Victus',
    'Qualcomm Snapdragon 8 Gen 3', 12, 3.2, 'Adreno 750', 12, 256, false, 'MIUI 15', 'Basado en Android 15', NULL, 3, 108,
    'f/1.7', '16MP Ultra Gran Angular, 2MP Macro', NULL, NULL, 'OIS', '4K@30fps', 20, 'f/2.4',
    '1080p@30fps', 4500, 67, true, false, NULL, '5G', 'Wi-Fi 6', '5.2', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS', true, true, NULL, 2, 'En pantalla', true, true, true, false, false, 'IP68', false, 899.00, NULL
);
-- Aqui empieza Asus
  INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  
-- Zenfone 12 Ultra
(
    'https://dlcdnwebimgs.asus.com/gain/6c6890cc-2afd-480c-998a-b23cd9263963/', -- Imagen de referencia
    'Asus', 'Zenfone 12 Ultra', 'Zenfone', 2025, NULL, NULL, NULL, NULL, 'Vidrio y metal',
    'Negro, Azul, Plata', 'LTPO AMOLED', 6.78, '1080 x 2400', 388, 144, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Elite', 8, 3.3, 'Adreno 780', 16, 512, false, 'Android', '15', NULL, 3, 50,
    'f/1.9', '32MP Telefoto f/2.4, 13MP Ultra Gran Angular f/2.2', 3, NULL, 'Estabilización tipo gimbal',
    '8K@24fps, 4K@30/60fps', 32, 'f/2.5', '1080p@30fps', 5500, 65, 15, NULL, NULL, '5G', 'Wi-Fi 6E/7', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', true, true, NULL, 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 1145.00, NULL
), 
-- ROG Phone 9 Pro
(
    'https://dlcdnwebimgs.asus.com/gain/5EDAE798-5C14-4816-BCB3-010927FA8735', -- Imagen de referencia
    'Asus', 'ROG Phone 9 Pro', 'ROG Phone', 2024, 163.8, 77, 8.9, 227, 'Vidrio y metal',
    'Negro Fantasma', 'AMOLED LTPO', 6.78, '2400 x 1080', 388, 185, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Elite', 8, 4.3, 'Adreno 830', 16, 512, false, 'Android', '15', 2, 3, 50,
    'f/1.88', '13MP Ultra Gran Angular f/2.2, 32MP Telefoto f/2.4', 3, NULL, 'Estabilización óptica y gimbal',
    '8K@30fps, 4K@120fps', 32, 'f/2.5', '1080p@30fps', 5800, 65, 15, NULL, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 1300.00, NULL
),
-- ROG Phone 9 FE
(
    'https://doto.com.mx/cdn/shop/files/image-5370bcea51464775a81fd662efe21c9a_180x.jpg?v=1734594636', -- Imagen de referencia
    'Asus', 'ROG Phone 9 FE', 'ROG Phone', 2025, 163.8, 76.8, 8.9, 225, 'Vidrio y metal',
    'Negro Fantasma', 'AMOLED LTPO', 6.78, '1080 x 2400', 388, 165, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Gen 3', 8, 3.3, 'Adreno 750', 16, 256, false, 'Android', '15', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 5MP Macro f/2.4', NULL, NULL, 'Estabilización óptica y gimbal',
    '8K@30fps, 4K@60/120fps', 32, 'f/2.5', '1080p@30fps', 5500, 65, 15, 10, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS, NavIC', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, NULL, NULL
),
-- ROG Phone 9
(
    'https://dlcdnwebimgs.asus.com/gain/5EDAE798-5C14-4816-BCB3-010927FA8735', -- Imagen de referencia
    'Asus', 'ROG Phone 9', 'ROG Phone', 2024, 163.8, 77, 8.9, 227, 'Vidrio y metal',
    'Negro Fantasma, Blanco Tormenta', 'AMOLED LTPO', 6.78, '2400 x 1080', 388, 185, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Elite', 8, 4.3, 'Adreno 830', 12, 256, false, 'Android', '15', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 5MP Macro f/2.4', NULL, NULL, 'Estabilización óptica y gimbal',
    '8K@30fps, 4K@60/120fps', 32, 'f/2.5', '1080p@30fps', 5800, 65, 15, 10, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS, NavIC', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 1000.00, NULL
), 
-- Asus Zenfone 11 Ultra
(
    'https://http2.mlstatic.com/D_NQ_NP_866705-MCO77150231581_062024-O.webp', -- Imagen de referencia
    'Asus', 'Zenfone 11 Ultra', 'Zenfone', 2024, 163.8, 76.8, 8.9, 225, 'Vidrio y metal',
    'Negro Eterno, Gris Brumoso, Horizonte Azul, Arena del Desierto', 'AMOLED LTPO', 6.78, '2400 x 1080', 388, 144, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Gen 3', 8, 3.3, 'Adreno 750', 16, 512, false, 'Android', '14', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 32MP Telefoto f/2.4', 3, NULL, 'Estabilización óptica y gimbal',
    '8K@30fps, 4K@60/120fps', 32, 'f/2.5', '1080p@30fps', 5500, 65, 15, NULL, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS, NavIC', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 1000.00, NULL
),
-- Asus ROG Phone 8 Pro
(
    'https://m.media-amazon.com/images/I/51TypH9fk1L.jpg', -- Imagen de referencia
    'Asus', 'ROG Phone 8 Pro', 'ROG Phone', 2023, 173, 77, 9.9, 239, 'Vidrio y metal',
    'Negro Fantasma', 'AMOLED', 6.78, '2448 x 1080', 395, 165, 'Corning Gorilla Glass Victus',
    'Qualcomm Snapdragon 8 Gen 2', 8, 3.2, 'Adreno 740', 16, 512, false, 'Android', '13', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 5MP Macro f/2.0', NULL, NULL, 'Estabilización óptica',
    '8K@24fps, 4K@30/60/120fps', 32, 'f/2.5', '1080p@30fps', 6000, 65, 15, NULL, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP54', false, 1200.00, NULL
),
-- Asus ROG Phone 8
(
    'https://http2.mlstatic.com/D_NQ_NP_907631-MLA80020072587_102024-O.webp', -- Imagen de referencia
    'Asus', 'ROG Phone 8', 'ROG Phone', 2024, 163.8, 76.8, 8.9, 225, 'Vidrio y metal',
    'Negro Fantasma', 'AMOLED LTPO', 6.78, '2400 x 1080', 388, 165, 'Corning Gorilla Glass Victus 2',
    'Qualcomm Snapdragon 8 Gen 3', 8, 3.3, 'Adreno 750', 16, 256, false, 'Android', '14', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 32MP Telefoto f/2.4', 3, NULL, 'Estabilización óptica y gimbal',
    '8K@30fps, 4K@60/120fps', 32, 'f/2.5', '1080p@30fps', 5500, 65, 15, 10, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS, NavIC', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 999.00, NULL
),
-- Asus Zenfone 10
(
    'https://images-cdn.ubuy.com.co/6652abcacc2c916ef76a13f8-asus-zenfone-10-unlocked-5g-256gb-dual.jpg', -- Imagen de referencia
    'Asus', 'Zenfone 10', 'Zenfone', 2023, 146.5, 68.1, 9.4, 172, 'Vidrio y metal',
    'Negro Medianoche, Blanco Cometa, Verde Aurora, Rojo Eclipse, Azul Estelar', 'Super AMOLED', 5.9, '2400 x 1080', 445, 144, 'Corning Gorilla Glass Victus',
    'Qualcomm Snapdragon 8 Gen 2', 8, 3.2, 'Adreno 740', 8, 128, false, 'Android', '13', NULL, 2, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y gimbal',
    '8K@24fps, 4K@30/60fps', 32, 'f/2.45', '1080p@30fps', 4300, 30, 15, 5, NULL, '5G', 'Wi-Fi 7', '5.3', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS, NavIC', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 799.00, NULL
),
-- Asus ROG Phone 7 Ultimate
(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfm3VeL869WZGAhF0dTaGRQ5Z6_85QxMBSbg&s', -- Imagen de referencia
    'Asus', 'ROG Phone 7 Ultimate', 'ROG Phone', 2023, 173, 77, 10.3, 239, 'Vidrio y metal',
    'Blanco Tormenta', 'AMOLED', 6.78, '2448 x 1080', 395, 165, 'Corning Gorilla Glass Victus',
    'Qualcomm Snapdragon 8 Gen 2', 8, 3.2, 'Adreno 740', 16, 512, false, 'Android', '13', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 5MP Macro f/2.0', NULL, NULL, 'Estabilización óptica',
    '8K@24fps, 4K@30/60/120fps', 32, 'f/2.5', '1080p@30fps', 6000, 65, 15, NULL, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP54', false, 1429.00, NULL
),
-- Asus ROG Phone 7
(
    'https://dlcdnwebimgs.asus.com/gain/C91B34FA-D253-4E35-9C67-BDFF3EC90E9B/w250', -- Imagen de referencia
    'Asus', 'ROG Phone 7', 'ROG Phone', 2023, 173, 77, 10.3, 239, 'Vidrio y metal',
    'Negro Fantasma, Blanco Tormenta', 'AMOLED', 6.78, '2448 x 1080', 395, 165, 'Corning Gorilla Glass Victus',
    'Qualcomm Snapdragon 8 Gen 2', 8, 3.2, 'Adreno 740', 12, 256, false, 'Android', '13', NULL, 3, 50,
    'f/1.9', '13MP Ultra Gran Angular f/2.2, 5MP Macro f/2.0', NULL, NULL, 'Estabilización óptica',
    '8K@24fps, 4K@30/60/120fps', 32, 'f/2.5', '1080p@30fps', 6000, 65, 15, NULL, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, BDS, Galileo, QZSS', true, true, 'Hi-Res', 2, 'Bajo la pantalla', true, true, true, false, false, 'IP54', false, 1029.00, NULL
)
;
-- Aquí empieza Google 
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  
-- Pixel 9 Pro XL
(
    'https://m.media-amazon.com/images/I/71NRTIgZjXL.jpg', -- Imagen de referencia
    'Google', 'Pixel 9 Pro XL', 'Pixel', 2024, 162.8, 76.6, 8.5, 221, 'Vidrio y metal',
    'Porcelana, Rosa cuarzo, Verde liquen, Obsidiana', 'Super Actua OLED LTPO', 6.8, '1344 x 2992', 486, 120, 'Corning Gorilla Glass Victus 2',
    'Google Tensor G4', 8, NULL, NULL, 16, 512, false, 'Android', '14', 7, 3, 50,
    'f/1.68', '48MP Ultra Gran Angular f/1.7, 48MP Telefoto f/2.8', 5, NULL, 'Estabilización óptica de imagen',
    '8K@30fps', 42, 'f/2.2', '4K@30/60fps', 5060, 45, 23, true, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, NULL, 3, 'Bajo la pantalla (ultrasónico)', true, true, true, false, false, 'IP68', false, 1199.00, NULL
),
-- Pixel 9 Pro
(
    'https://http2.mlstatic.com/D_NQ_NP_775403-MCO78846247871_082024-O.webp', -- Imagen de referencia
    'Google', 'Pixel 9 Pro', 'Pixel', 2024, 152.8, 72.0, 8.5, 199, 'Vidrio y metal',
    'Porcelana, Rosa cuarzo, Verde liquen, Obsidiana', 'Super Actua OLED LTPO', 6.3, '1280 x 2856', 495, 120, 'Corning Gorilla Glass Victus 2',
    'Google Tensor G4', 8, NULL, NULL, 16, 256, false, 'Android', '14', 7, 3, 50,
    'f/1.68', '48MP Ultra Gran Angular f/1.7, 48MP Telefoto f/2.8', 5, NULL, 'Estabilización óptica de imagen',
    '8K@30fps', 42, 'f/2.2', '4K@30/60fps', 4700, 27, 21, true, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, NULL, 3, 'Bajo la pantalla (ultrasónico)', true, true, true, false, false, 'IP68', false, 1099.00, NULL
),
-- Pixel 9
(
    'https://http2.mlstatic.com/D_NQ_NP_798175-MCO78846536595_082024-O.webp', -- Imagen de referencia
    'Google', 'Pixel 9', 'Pixel', 2024, NULL, NULL, NULL, NULL, 'Vidrio y metal',
    'Rosa Peonía, Verde pastel, Porcelana, Obsidiana', 'Actua OLED', 6.3, '1080 x 2400', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'Google Tensor G4', 8, NULL, NULL, 12, 128, false, 'Android', '14', 7, 2, 50,
    'f/1.68', '48MP Ultra Gran Angular f/1.7', NULL, NULL, 'Estabilización óptica de imagen',
    '4K@30/60fps', 10.5, 'f/2.2', '4K@30/60fps', NULL, NULL, NULL, true, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, NULL, 3, 'Bajo la pantalla', true, true, true, false, false, 'IP68', false, 799.00, NULL
),
-- Pixel 9 Pro Fold
(
    'https://www.celulares.com/fotos/google-pixel-9-pro-fold-97670-g-alt.jpg', -- Imagen de referencia
    'Google', 'Pixel 9 Pro Fold', 'Pixel', 2024, NULL, NULL, 5.1, NULL, 'Vidrio y metal',
    'Porcelana, Obsidiana', 'Super Actua OLED LTPO', 8.0, '2208 x 1840', NULL, 120, 'Corning Gorilla Glass Victus 2',
    'Google Tensor G4', 8, NULL, NULL, 16, 512, false, 'Android', '14', 7, 3, 48,
    'f/1.7', '48MP Ultra Gran Angular f/1.7, 48MP Telefoto f/2.8', 5, NULL, 'Estabilización óptica de imagen',
    '8K@30fps', 42, 'f/2.2', '4K@30/60fps', 5000, 30, 12, true, NULL, '5G', 'Wi-Fi 7', '5.4', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, NULL, 3, 'Bajo la pantalla', true, true, true, true, true, 
    'IPX8', false, 1799.00, NULL
),
-- Pixel 8a
(
    'https://m.media-amazon.com/images/I/71n1Bn04lJL.jpg', -- Imagen de referencia
    'Google', 'Pixel 8a', 'Pixel', 2024, 152.1, 72.7, 8.9, 188, 'Plástico y aluminio',
    'Obsidiana, Porcelana, Bay, Aloe', 'Actua OLED', 6.1, '1080 x 2400', 430, 120, 'Corning Gorilla Glass 3',
    'Google Tensor G3', 8, NULL, NULL, 8, 128, false, 'Android', '14', 7, 2, 64,
    'f/1.89', '13MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica de imagen',
    '4K@30/60fps', 13, 'f/2.2', '4K@30fps', 4492, 18, 7.5, true, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, BDS', false, true, NULL, 2, 'Bajo la pantalla', true, true, true, true, true, 'IP67', false, 549.00, NULL
)
;
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  
-- Pixel 8 Pro
(
    'https://http2.mlstatic.com/D_NQ_NP_626285-MLA72983925890_112023-O.webp',
    'Google', 'Pixel 8 Pro', 'Pixel', 2023, 162.6, 76.5, 8.8, 213, 'Vidrio y aluminio',
    'Obsidiana, Porcelana, Azul Cielo', 'LTPO OLED', 6.7, '1344 x 2992', 489, 120, 'Corning Gorilla Glass Victus 2',
    'Google Tensor G3', 9, NULL, NULL, 12, 512, false, 'Android', '14', 7, 3, 50,
    'f/1.7', '48MP Ultra Gran Angular f/1.9, 48MP Telefoto f/2.8', 5, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 10.5, 'f/2.2', '4K@30/60fps', 5050, 30, 23, true, NULL, '5G', 'Wi-Fi 7', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 3, 'Bajo la pantalla', true, true, true, true, true,
    'IP68', false, 999.00, NULL
),

-- Pixel 8
(
    'https://m.media-amazon.com/images/I/81Mya-dPIOL.jpg',
    'Google', 'Pixel 8', 'Pixel', 2023, 150.5, 70.8, 8.9, 187, 'Vidrio y aluminio',
    'Obsidiana, Avellana, Rosa', 'OLED', 6.2, '1080 x 2400', 428, 120, 'Corning Gorilla Glass Victus',
    'Google Tensor G3', 9, NULL, NULL, 8, 256, false, 'Android', '14', 7, 2, 50,
    'f/1.7', '12MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 10.5, 'f/2.2', '4K@30/60fps', 4575, 30, 18, true, NULL, '5G', 'Wi-Fi 7', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 3, 'Bajo la pantalla', true, true, true, true, false,
    'IP68', false, 699.00, NULL
),

-- Pixel Fold
(
    'https://images-cdn.ubuy.co.in/659ec9d86b504a6a7f624be4-open-box-google-pixel-fold-5g-ga04411-us.jpg',
    'Google', 'Pixel Fold', 'Pixel', 2023, 139.7, 79.5, 12.1, 283, 'Vidrio y aluminio',
    'Obsidiana, Porcelana', 'OLED', 7.6, '1840 x 2208', 380, 120, 'Ultra Thin Glass',
    'Google Tensor G2', 8, NULL, NULL, 12, 512, false, 'Android', '13', 5, 3, 48,
    'f/1.7', '10.8MP Ultra Gran Angular f/2.2, 10.8MP Telefoto f/3.1', 5, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 9.5, 'f/2.2', '4K@30/60fps', 4821, 30, 15, true, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 3, 'Bajo la pantalla', true, true, true, true, true,
    'IPX8', false, 1799.00, NULL
),

-- Pixel 7a
(
    'https://m.media-amazon.com/images/I/71m09hEhnwL.jpg',
    'Google', 'Pixel 7a', 'Pixel', 2023, 152, 72.9, 9.0, 193, 'Plástico y aluminio',
    'Obsidiana, Cielo, Nieve, Coral', 'OLED', 6.1, '1080 x 2400', 429, 90, 'Corning Gorilla Glass 3',
    'Google Tensor G2', 8, NULL, NULL, 8, 256, false, 'Android', '13', 3, 2, 64,
    'f/1.9', '13MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 13, 'f/2.2', '4K@30fps', 4385, 18, 7.5, false, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 2, 'Bajo la pantalla', true, true, true, false, false,
    'IP67', false, 499.00, NULL
),

-- Pixel 7 Pro
(
    'https://m.media-amazon.com/images/I/61bFypVJVyL.jpg',
    'Google', 'Pixel 7 Pro', 'Pixel', 2022, 162.9, 76.6, 8.9, 212, 'Vidrio y aluminio',
    'Obsidiana, Nieve, Avellana', 'LTPO OLED', 6.7, '1440 x 3120', 512, 120, 'Corning Gorilla Glass Victus',
    'Google Tensor G2', 8, NULL, NULL, 12, 512, false, 'Android', '13', 5, 3, 50,
    'f/1.9', '48MP Ultra Gran Angular f/2.2, 48MP Telefoto f/3.5', 5, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 10.8, 'f/2.2', '4K@30/60fps', 5000, 30, 23, true, NULL, '5G', 'Wi-Fi 6E', '5.3', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 3, 'Bajo la pantalla', true, true, true, true, true,
    'IP68', false, 899.00, NULL
);

INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES  

-- Pixel 7
(
    'https://m.media-amazon.com/images/I/7173p0j-mbL.jpg',
    'Google', 'Pixel 7', 'Pixel', 2022, 155.6, 73.2, 8.7, 197, 'Vidrio y aluminio',
    'Obsidiana, Nieve, Avellana', 'OLED', 6.3, '1080 x 2400', 416, 90, 'Corning Gorilla Glass Victus',
    'Google Tensor G2', 8, NULL, NULL, 8, 256, false, 'Android', '13', 5, 2, 50,
    'f/1.9', '12MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 10.8, 'f/2.2', '4K@30/60fps', 4355, 30, 20, false, NULL, '5G', 'Wi-Fi 6E', '5.2', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 2, 'Bajo la pantalla', true, true, true, false, false,
    'IP68', false, 599.00, NULL
);
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES
-- Pixel 6a
(
    'https://m.media-amazon.com/images/I/61PW24157AL.jpg',
    'Google', 'Pixel 6a', 'Pixel', 2022, 152.2, 71.8, 8.9, 178, 'Plástico y aluminio',
    'Salvia, Tiza, Carbón', 'OLED', 6.1, '1080 x 2400', 429, 60, 'Corning Gorilla Glass 3',
    'Google Tensor', 8, NULL, NULL, 6, 128, false, 'Android', '12', 3, 2, 12.2,
    'f/1.7', '12MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 8, 'f/2.0', '1080p@30fps', 4410, 18, 0, false, NULL, '5G', 'Wi-Fi 6E', '5.2', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 2, 'Bajo la pantalla', true, true, true, false, false,
    'IP67', false, 449.00, NULL
),

-- Pixel 6 Pro
(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyHbecYgyE8jULst9_ZqlKlDvT0c02OHec_Q&s',
    'Google', 'Pixel 6 Pro', 'Pixel', 2021, 163.9, 75.9, 8.9, 210, 'Vidrio y aluminio',
    'Tormenta, Nieve, Amarillo Sol', 'LTPO OLED', 6.7, '1440 x 3120', 512, 120, 'Corning Gorilla Glass Victus',
    'Google Tensor', 8, NULL, NULL, 12, 512, false, 'Android', '12', 5, 3, 50,
    'f/1.9', '48MP Ultra Gran Angular f/2.2, 48MP Telefoto f/3.5', 4, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 11.1, 'f/2.2', '4K@30/60fps', 5000, 30, 23, true, NULL, '5G', 'Wi-Fi 6E', '5.2', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 3, 'Bajo la pantalla', true, true, true, true, true,
    'IP68', false, 899.00, NULL
);
INSERT INTO celulares (
    imagen_url, marca, modelo, linea, anio_lanzamiento, altura, ancho, espesor, peso, material_cuerpo, colores_disponibles,
    tipo_pantalla, tamano_pantalla, resolucion, densidad_pixeles, tasa_refresco, proteccion, procesador,
    nucleos_procesador, frecuencia_procesador, gpu, memoria_ram, almacenamiento, ranura_sd, sistema_operativo,
    version_so, actualizaciones_garantizadas, num_camaras_traseras, resolucion_camara_principal,
    apertura_camara_principal, lentes_adicionales, zoom_optico, zoom_digital, estabilizacion,
    grabacion_video_trasera, resolucion_camara_frontal, apertura_camara_frontal, grabacion_video_frontal,
    capacidad_bateria, carga_rapida, carga_inalambrica, carga_inversa, autonomia_estimada, red_movil, wifi,
    bluetooth, nfc, usb, gps, jack_35, altavoces_estereo, certificacion_sonido, microfonos, sensor_huellas,
    reconocimiento_facial, acelerometro, giroscopio, brujula, barometro, certificacion_ip, resistencia_caidas,
    precio_lanzamiento, precio_actual
)  
VALUES
-- Pixel 6
(
    'https://m.media-amazon.com/images/I/71QQZr2pNSL.jpg',
    'Google', 'Pixel 6', 'Pixel', 2021, 158.6, 74.8, 8.9, 207, 'Vidrio y aluminio',
    'Tormenta, Nieve, Coral', 'OLED', 6.4, '1080 x 2400', 411, 90, 'Corning Gorilla Glass Victus',
    'Google Tensor', 8, NULL, NULL, 8, 256, false, 'Android', '12', 5, 2, 50,
    'f/1.9', '12MP Ultra Gran Angular f/2.2', NULL, NULL, 'Estabilización óptica y electrónica',
    '4K@30/60fps', 8, 'f/2.0', '1080p@30fps', 4614, 30, 21, false, NULL, '5G', 'Wi-Fi 6E', '5.2', true, 'USB-C',
    'GPS, GLONASS, Galileo, QZSS, NavIC', false, true, 'Estéreo', 2, 'Bajo la pantalla', true, true, true, false, false,
    'IP68', false, 599.00, NULL
); 
 


 SELECT * FROM celulares;
 SELECT * FROM celulares WHERE marca = "Samsung";
 SELECT * FROM celulares WHERE marca = "apple";
SELECT * FROM celulares WHERE marca = "Xiaomi";