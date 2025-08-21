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

// 3 Show
const show = (req, res) => {
  const id = parseInt(req.params.id);
  const sql = "SELECT * FROM details WHERE id = ? ";

  connection.query(sql, [id], (err, results) => {
    if (err) {
      return res.status(500).json({
        error: true,
        message: err.message,
      });
    }

    if (!(results.length > 0)) {
      return res.status(404).json({
        error: true,
        message: "dettaglio non trovato",
      });
    }

    const detail = results[0];
    return res.json(detail);
  });
};

// export
module.exports = { index, show };
