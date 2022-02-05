USE corp;

INSERT INTO department (name) VALUES
    ('Marketing'),
    ('Design'),
    ('Production');

INSERT INTO role (title, salary, department_id) VALUES 
    ('Senior Manager', 200000, 1),
    ('Manager', 100000, 1),
    ('Supervisor', 70000, 2),
    ('Team Lead', 50000, 2),
    ('Senior Associate', 40000, 3),
    ('Associate', 35000, 3);

INSERT INTO employee (first_name, last_name, department_id, role_id, manager_id) VALUES
    ('Michael', 'Irvin', 1, NULL),
    ('Sammy', 'Trevino', 2, NULL),
    ('Kim', 'Gower', 3, NULL);
    -- ('Keith', 'Hoffmeister', 1, 3, 2),
    -- ('Erik', 'Avila', 1, 3, 2),
    -- ('Shayla', 'Williams', 1, 3, 3),
    -- ('Matt', 'Wiseman', 1, 3, 3),
    -- ('Adam', 'Ferrera', 2, 3, 1),
    -- ('Elana', 'Fell', 2, 3, 1),
    -- ('Tony', 'Wood', 3, 3, 1),
    -- ('Crystal', 'Ye', 3, 3, 1),
    -- ('Jared', 'Worsham', 2, 4, 1),
    -- ('Cheyne', 'Etie', 2, 4, 1),
    -- ('Nick', 'Anders', 2, 5, 1),
    -- ('Monte', 'Andarton', 2, 5, 1),
    -- ('Bri', 'Blacknall', 2, 6, 1),
    -- ('Kelly', 'Wilkins', 2, 6, 1),
    -- ('Jacob', 'Spaulding', 2, 4, 2),
    -- ('Ross', 'Feazell', 2, 6, 2),
    -- ('Rhys', 'Zimmerman', 2, 6, 2),
    -- ('Avery', 'Jarosh', 2, 4, 3),
    -- ('Hannah', 'Pfeiffer', 2, 6, 3),
    -- ('Laurel', 'Adams', 2, 6, 3),
    -- ('Karen', 'Frayer', 3, 6, 1),
    -- ('Lisa', 'Worsham', 3, 4, 1),
    -- ('Nathan', 'Stabenfeldt', 3, 6, 1);
