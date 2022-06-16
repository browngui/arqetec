import conexao from "../repository/conexao.js";

const insertGender = async (genero)=> {
    const con = await conexao.connect(); //abre conexão com o banco entre API

    const sql = 'INSERT INTO Genero_tb (genero) VALUES(?);'; //os valores em interrogação serão os valores recebidos pelo front-end
    
    const dataUser = [genero]; //esses valores serão repassados pelo controller

    await con.query(sql, dataUser); //o comando .query serve para executar a ação dentro do banco. A variavel do SQL são os dados que serão que estão em "?" 

    con.end();

}

export default {insertGender}