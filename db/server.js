const mysql = require("mysql2");

const connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "password",
  database: "employee_db",
});
// * will execute once connected
// * program flow should start in the prompts file,
connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  // program flow gets sent to the promptSequence file;
});
module.exports = connection;