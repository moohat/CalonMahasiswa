var express = require('express');
var router = express.Router();

const { Pool } = require("pg");
// const pool = new Pool({
//     user: "postgres",
//     host: "localhost",
//     database: "belajar",
//     password: "admin",
//     port: 5432
// });
// console.log("Successful connection to the database");

/* GET home page. */
// router.get('/', function(req, res, next) {
//   res.render('index');
// });

module.exports = function(pool){



router.get('/', (req, res) => {
   
        let sql = `SELECT namasiswa, namajurusan 
        FROM data_calon_siswa, data_jurusan 
        WHERE data_calon_siswa.idsiswa = data_jurusan.idsiswa `;
       

        pool.query(sql, (err, row) => {
            res.render('index', {
                model: row.rows,              
                query: req.query,
            });
        });
    // });
});


//GET /delete/5
router.get('/delete/:id', (req, res) => {
    let id = req.params.id;
    const sqlDel = `DELETE FROM laporan WHERE id = $1`;
    pool.query(sqlDel, [id], (err) => {
        if (err) throw err;
        console.log('Delete success')
    })
    res.redirect('/');
});


return router;
}
