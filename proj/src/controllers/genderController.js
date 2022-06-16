import Express  from "express";
import { body, validationResult} from 'express-validator';
import db from '../services/genderService.js'

const router = Express.Router();

router.post('/', [
    body('genero').isString().withMessage('Diga um genero de verdade, não esse ai.')
    

] ,async (request, response)=>{


    const errors = validationResult(request)
    if(!errors.isEmpty()){
        return response.status(400).json({message: errors.array()});
    }


    const{email, password, userName} = request.body;

    try{
        await db.insertUser(email,password,userName);

        response.status(201).json ({message:'usuario cadastrado com sucesso'})
    }catch(error){
        response.status(500).json({message:`Erro encontrado: ${error}`});
    }

});

export default router;