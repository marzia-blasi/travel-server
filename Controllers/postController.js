// 1 import connection db

const connection = require("../db/connection.js");

// 2 Index (with server error)

const index = (req, res) => {
  const sql = " SELECT * FROM posts ";
  connection.query(sql, (err, results) => {
    if (err)
      return res.status(500).json({
        error: true,
        message: err.message,
      });
    //console.log(results);
    res.json(results);
  });
};

// export
module.exports = { index };
