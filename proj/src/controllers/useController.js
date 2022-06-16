import Express  from "express";
import { body, validationResult} from 'express-validator';
import db from '../services/userService.js'

const router = Express.Router();

//request é o que o front envia para o back 
//response é a resposta que o back envia para o front
router.post('/', [
    body('email').isEmail().withMessage('Informe um email válido, vascilão'),
    body('password').isLength({min: 7, max: 12}).withMessage("A senha precisa ter entre 7 3 caractéres"),
    

] ,async (request, response)=>{


    const errors = validationResult(request)
    if(!errors.isEmpty()){
        return response.status(400).json({message: errors.array()});
    }

    // const email = request.body.email;
    // const password = request.body.password;
    // const userName = request.body.userName;

    const{email, password, userName} = request.body;

    try{
        await db.insertUser(email,password,userName);

        response.status(201).json ({message:'Genero cadastrado com sucesso'})
    }catch(error){
        response.status(500).json({message:`Erro encontrado: ${error}`});
    }

});

export default router;