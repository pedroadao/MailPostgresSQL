CREATE TABLE IF NOT EXISTS status (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    status varchar(50)
);

INSERT INTO status (status)
VALUES
    ('Criado'),
    ('Enviado'),
    ('Erro');