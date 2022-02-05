USE corp;

INSERT INTO department (name) VALUES
    ('Marketing'),
    ('Design'),
    ('Production');

INSERT INTO role (title, salary) VALUES 
    ('Senior Manager', 200000),
    ('Manager', 100000),
    ('Supervisor', 70000),
    ('Team Lead', 50000),
    ('Senior Associate', 40000),
    ('Associate', 35000);

INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES
    ('Michael', 'Irvin', 1, NULL),
    ('Sammy', 'Trevino', 2, NULL),
    ('Kim', 'Gower', 3, NULL),
    ('Keith', 'Hoffmeister', 3, 2),
    ('Erik', 'Avila', 3, 2),
    ('Shayla', 'Williams', 3, 3),
    ('Matt', 'Wiseman', 3, 3),
    ('Adam', 'Ferrera', 3, 1),
    ('Elana', 'Fell', 3, 1),
    ('Tony', 'Wood', 3, 1),
    ('Crystal', 'Ye', 3, 1),
    ('Jared', 'Worsham', 4, 1),
    ('Cheyne', 'Etie', 4, 1),
    ('Nick', 'Anders', 5, 1),
    ('Monte', 'Andarton', 5, 1),
    ('Bri', 'Blacknall', 6, 1),
    ('Kelly', 'Wilkins', 6, 1),
    ('Jacob', 'Spaulding', 4, 2),
    ('Ross', 'Feazell', 6, 2),
    ('Rhys', 'Zimmerman', 6, 2),
    ('Avery', 'Jarosh', 4, 3),
    ('Hannah', 'Pfeiffer', 6, 3),
    ('Laurel', 'Adams', 6, 3),
    ('Karen', 'Frayer', 6, 1),
    ('Lisa', 'Worsham', 4, 1),
    ('Nathan', 'Stabenfeldt', 6, 1);
