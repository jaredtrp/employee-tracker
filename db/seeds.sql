INSERT INTO department (name) VALUES
    ('Marketing'),
    ('Design'),
    ('Production');

INSERT INTO roles (title, salary, department_id) VALUES 
    ('Senior Manager', 200000.00, 1),
    ('Manager', 100000.00, 2),
    ('Supervisor', 70000.00, 3);
    ('Team Lead', 50000.00, 4);
    ('Senior Associate', 40000.00, 5);
    ('Associate', 35000.00, 6);

INSERT INTO employee (first_name, last_name, department_id, role_id, manager_id) VALUES
    ('Michael', 'Irvin', 2, 1, NULL),
    ('Sammy', 'Trevino', 1, 2, NULL),
    ('Kim', 'Gower', 1, 2, NULL),
    ('Keith', 'Hoffmeister', 1, 3, 2),
    ('Erik', 'Avila', 1, 3, 2),
    ('Shayla', 'Williams', 1, 3, 3),
    ('Matt', 'Wiseman', 1, 3, 3),
    ('Adam', 'Ferrera', 2, 3, 1),
    ('Elana', 'Fell', 2, 3, 1),
    ('Tony', 'Wood', 3, 3, 1),
    ('Crystal', 'Ye', 3, 3, 1),
    ('Jared', 'Worsham', 2, 4, 1),
    ('Cheyne', 'Etie', 2, 4, 1),
    ('Nick', 'Anders', 2, 5, 1),
    ('Monte', 'Andarton', 2, 5, 1),
    ('Bri', 'Blacknall', 2, 6, 1),
    ('Kelly', 'Wilkins', 2, 6, 1),
    ('Jacob', 'Spaulding', 2, 4, 2),
    ('Ross', 'Feazell', 2, 6, 2),
    ('Rhys', 'Zimmerman', 2, 6, 2),
    ('Avery', 'Jarosh', 2, 4, 3),
    ('Hannah', 'Pfeiffer', 2, 6, 3),
    ('Laurel', 'Adams', 2, 6, 3),
    ('Karen', 'Frayer', 3, 6, 1),
    ('Lisa', 'Worsham', 3, 4, 1),
    ('Nathan', 'Stabenfeldt', 3, 6, 1),
