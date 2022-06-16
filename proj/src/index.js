import express from "express";
import routes from "./routes.js";

const api = express();
api.use(express.json()); //o comando .json faz com que o express leia arquivos json. 

api.use('/', routes);

api.listen('3333', () => {
    console.log('Server is running...')
})

