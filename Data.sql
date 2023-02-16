
SELECT * FROM [clients]
SELECT * FROM [addresses]
SELECT * FROM [factories]
SELECT * FROM [articles]
SELECT * FROM [factory_article]
SELECT * FROM [orders]

UPDATE [factories] SET [factory_name] = 'NextGen Devices' WHERE [factory_id] = 5;

/* [clients] */

INSERT INTO [clients] ([client_name], [client_balance], [client_credit], [client_discount])
VALUES ('Vanessa Bermejo', 500000, 100000, 10)

INSERT INTO [clients] ([client_name], [client_balance], [client_credit], [client_discount])
VALUES ('Sérgio Mayoral', 250000, 50000, 5)

INSERT INTO [clients] ([client_name], [client_balance], [client_credit], [client_discount])
VALUES ('Erica Jerez', 725000, 150000, 13)

/* [addresses] */

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (1, 123, 'Av. Los Pinos', 'San Miguel', 'Mexico D.F.')

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (1, 456, 'Calle Central', 'La Molina', 'Guadalajara')

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (2, 789, 'Av. Arequipa', 'Miraflores', 'Monterrey')

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (3, 246, 'Calle Las Flores', 'San Borja', 'Puebla')

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (3, 369, 'Av. Javier Prado', 'Surco', 'Tijuana')

INSERT INTO [addresses] ([client_id], [address_number], [address_street], [address_district], [address_state])
VALUES (3, 159, 'Calle Los Laureles', 'Chaclacayo', 'Queretaro')

/* [factories] */

INSERT INTO [factories] ([factory_name], [factory_phone])
VALUES ('Costa Rica Textil', 12345678)

INSERT INTO [factories] ([factory_name], [factory_phone])
VALUES ('Muebles de la Selva', 87654321)

INSERT INTO [factories] ([factory_name], [factory_phone])
VALUES ('Metalurgica del Caribe', 11111111)

INSERT INTO [factories] ([factory_name], [factory_phone])
VALUES ('Plásticos de la Montaña', 22222222)

INSERT INTO [factories] ([factory_name], [factory_phone])
VALUES ('Textiles del Pacífico', 33333333)

/* [articles] */

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Reloj Inteligente', 'Un reloj moderno con funciones inteligentes como control de fitness y notificaciones de mensajes')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Tablet Android', 'Una tablet con sistema operativo Android, pantalla de alta definición y batería de larga duración')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Altavoz Inalámbrico', 'Un altavoz compacto con conectividad Bluetooth y calidad de sonido sorprendente')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Cámara de Acción', 'Una cámara pequeña y resistente diseñada para capturar aventuras y deportes extremos')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Aspiradora Robot', 'Una aspiradora inteligente que se mueve por toda la casa sin necesidad de supervisión')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Bolsa Térmica', 'Una bolsa aislante para mantener la comida y bebidas frías o calientes por mucho tiempo')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Bolsa de Transporte para Laptops', 'Una bolsa resistente y cómoda para llevar un laptop y accesorios en el viaje')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Estabilizador de Cardán', 'Un dispositivo que ayuda a mantener la cámara estable mientras se filma en movimiento')

INSERT INTO [articles] ([article_name], [article_description])
VALUES ('Luz de Emergencia', 'Una luz portátil con batería recargable que se activa automáticamente en caso de corte de energía')

/* [factory_article] */

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (2, 10, 567, 331)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (1, 5, 923, 444)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (4, 6, 872, 196)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (5, 8, 234, 420)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (3, 2, 789, 404)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (1, 9, 456, 150)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (2, 4, 125, 468)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (5, 1, 678, 374)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (4, 3, 900, 409)

INSERT INTO [factory_article] ( [factory_id], [article_id], [article_stock], [article_max_production])
VALUES (3, 5, 111, 295)

/* [orders] */

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (2, 3, 10, 35, '2023-02-09 12:30:15')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (1, 1, 5, 48, '2023-01-07 08:45:23')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (3, 4, 2, 25, '2022-12-05 10:23:45')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (2, 3, 6, 32, '2023-03-15 14:56:12')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (1, 2, 8, 50, '2022-11-21 17:12:34')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (3, 5, 4, 17, '2023-04-10 19:08:21')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (1, 1, 9, 41, '2022-10-15 11:45:12')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (2, 3, 3, 22, '2023-05-08 14:23:55')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (3, 6, 5, 30, '2022-09-03 09:15:31')

INSERT INTO [orders] ([client_id], [address_id], [article_id], [articles_amount], [order_date] )
VALUES (1, 2, 2, 12, '2023-06-20 07:01:48')