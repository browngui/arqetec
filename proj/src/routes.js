import express from 'express'; 

import user from './controllers/useController.js'; 

import gender from './controllers/genderController.js';

const router = express.Router();

// router.use('/user', user);
router.gender('/gender', gender)

export default router;