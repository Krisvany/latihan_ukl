const express = require('express')
const bodyParser = require('body-parser')
const jwt = require('jsonwebtoken')

const app = express()

const secretKey='randomsecretkeyforsecurity'
const port = 3000

const db = mysql.createConecction({
    host: '127.0.0.1',
    port: '3306',
    user: 'root',
    password: '',
    database:'latihan_ukl',
})

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))

function Authorized (req, res, next){
if (typeof req.headers['header']=='undefined' ){
    return res.status(403).json({
        success:false,
        message: 'unauthorized'
    })
}
let token = req.headers['header']
jwt.verify(token, secretKey, (err, decoded)=>{
    if(err)
    return res.status(401).json({
        success: false,
        message:'Unauthorized'
    })
    next()
})
}
app.get('/',(req, res)=>{
    res.json({
        'success': true,
        'message':'Selamat Datang Di Rental Kami'
    })

})

app.post('/login', (req, res)=>{
    let username = req.body.username
    let password = req.body.password
    var token = jwt.sign({
        username: username,
        password: password
    },secretKey)
    res.json({
        success : true,
        message : 'Login Success',
        data : {
            username : username,
            password: password,
            token : token
        }

    })
    })
app.get('/barang', (req, res)=>{
    let sql =`
    select * from user;`

    db.query(sql, (err, res)=>{
        if(err) throw err
        res.json({
            message: 'Berhasil menmpilkan semua barang',
            data: res
        })
    })
})

app.post('/barang', (req, res)=>{
    let data = req.body
    let sql = `
    insert into barang (jenis_barang,hrg_sewa,deskripsi,tgl_sewa,tgl_kembali)
    values ('`+data.jenis_barang+`','`+data.hrg_sewa+`','`+data.deskripsi+`','`+data.tgl_sewa+`','`+data.tgl_kembali+`')`
    db.query(sql, (err, res)=>{
        if(err) throw err
        res.json({
           message: "berhasil membuat" ,
           data: res
        })
    })
})
app.get('/barang/:id', (req, res)=>{
    let sql =`
    select * from barang
    where id = `+req.params.id+`
    limit 1
    `
    db.query(sql, (err, res)=>{
        if(err) throw err
        res.json({
            message: "success get all data",
            data: res
        })
    })
})
   app.put('/barang/:id',(req, res)=>{
       let data = req.body
       let sql=`
       update barang set
       (jenis_barang,hrg_sewa,deskripsi,tgl_sewa,tgl_kembali)
    values ('`+data.jenis_barang+`','`+data.hrg_sewa+`','`+data.deskripsi+`','`+data.tgl_sewa+`','`+data.tgl_kembali+`')`
   }) 
