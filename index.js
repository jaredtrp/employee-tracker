const inquirer = require('inquirer');
const db = require('./db/connection');

const promptUser = () => {
  return inquirer
    .prompt([
      {
        type: 'list',
        message: 'Choose an option.',
        name: 'action',
        choices: [
          'View all Departments',
          'View all Roles',
          'View all Employees',
          'Add a Department',
          'Add a Role',
          'Add an Employee',
          'Update an Employee Role',
        ],
      },
    ])
    .then(({ action }) => {
      console.log(action);
      switch (action) {
        case 'View all Departments':
          viewDepartments();
          break;
        case 'View all Roles':
          viewRoles();
          break;
        case 'View all Employees':
          viewEmployee();
          break;
        case 'Add a Department':
          promptDepartment();
          break;
        case 'Add a Role':
          promptRole();
          break;
        case 'Add an Employee':
          promptEmployee();
          break;
        case 'Update an Employee Role':
          updateRole();
          break;
      }
    });
};

const viewDepartments = () => {
  const sql = `SELECT * FROM department`;

  db.query(sql, (err, rows) => {
    if (err) {
      console.log(err);
      return;
    }
    console.table(rows);
    promptUser();
  });
};

const viewRoles = () => {
  const sql = `SELECT * FROM role`;

  db.query(sql, (err, rows) => {
    if (err) {
      return err;
    }
    console.table(rows);
    promptUser();
  });
};

const viewEmployee = () => {
  const sql = `SELECT * FROM employee;`;

  db.query(sql, (err, rows) => {
    if (err) {
      return err;
    }
    console.table(rows);
    promptUser();
  });
};

const promptDepartment = () => {
  return inquirer
    .prompt([
      {
        type: 'input',
        name: 'name',
        message: 'What is the name of the department you would like to add?',
      },
    ])
    .then(({ name }) => {
      const sql = `INSERT INTO department (name) VALUES ('${name}')`;
      db.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
          return err;
        }
        promptUser();
      });
    });
};

const promptRole = () => {
  return inquirer
    .prompt([
      {
        type: 'input',
        name: 'title',
        message: 'What is the title of the role you would like to add?',
      },
      {
        type: 'input',
        name: 'salary',
        message: 'What is the salary of the role?',
      },
      {
        type: 'input',
        name: 'department_id',
        message: 'Which department does this role belong to?',
      },
    ])
    .then(answer => {
      const sql = `INSERT INTO role (title, salary, department_id) VALUES ('${answer.title}', '${answer.salary}', '${answer.department_id}')`;
      db.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
          return err;
        }
        promptUser();
      });
    });
};

const promptEmployee = () => {
  return inquirer
    .prompt([
      {
        type: 'input',
        name: 'first_name',
        message:
          'What is the first name of the employee you would like to add?',
      },
      {
        type: 'input',
        name: 'last_name',
        message: 'What is their last name?',
      },
      {
        type: 'input',
        name: 'role_id',
        message: 'What is their role?',
      },
      {
        type: 'input',
        name: 'manager_id',
        message: 'Who is their manager?',
      },
    ])
    .then(answer => {
      const sql = `INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('${answer.first_name}', '${answer.last_name}', '${answer.role_id}', '${answer.manager_id}')`;
      db.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
          return err;
        }
        promptUser();
      });
    });
};

const updateEmployee = () => {
  return inquirer
    .prompt([
      {
        type: 'input',
        name: 'role_id',
        message: 'What is their role?',
      },
    ])
    .then(answer => {
      const sql = `INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES ('${answer.first_name}', '${answer.last_name}', '${answer.role_id}', '${answer.manager_id}')`;
      db.query(sql, (err, rows) => {
        if (err) {
          console.log(err);
          return err;
        }
        promptUser();
      });
    });
};

db.connect(err => {
  if (err) throw err;
  console.log('Database connected');
  promptUser();
});
