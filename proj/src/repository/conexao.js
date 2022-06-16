import mysql from "mysql2/promise";

const connect = async () => { //função de conexão com o banco local
    const connection = await mysql.createConnection({
        host: "localhost",
        user: "root",
        password:"",
        database: "Cinema_tbl"
    });

    return connection
}

export default {connect};

