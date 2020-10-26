INSERT INTO department (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('HR');

INSERT INTO role (title, salary, department_id)
VALUES
    ('Sales Manager', 62000, 1),
    ('Sales Agent', 54000, 1),
    ('Lawyer', 70000, 4),
    ('HR Rep', 52000, 4),
    ('Accountant', 68000, 3),
    ('Engineer', 90000, 2);
    
    

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
	('Derek', 'Fisher', 1, null),
    ('Sasha', 'Vujecic', 2, 1),
    ('Coby', 'Karl', 4, null),
    ('Slava', 'Medvedenko', 3, null),
    ('Vlade', 'Divac', 5, null),
    ('Kwame', 'Brown', 5, 5),
    ('Lisa', 'Leslie', 6, null),
    ('Sue', 'Bird', 6, 7);
    
