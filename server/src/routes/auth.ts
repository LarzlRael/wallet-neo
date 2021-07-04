import { Router } from "express";
import { check } from "express-validator";

import { registerUser, login, renewToken } from "../controllers/auth";
import { getTransactionsByUser } from "../controllers/transaction";
import { validarCampos } from "../middlewares/middelwares";
import { validarJWT } from '../middlewares/validarJwt';

const router = Router();

router.post('/register', [
    check('name', 'El nombre es obligatorio').not().isEmpty(),
    check('password', 'La contraseña is obligatoria').not().isEmpty(),
    check('email', 'El email es obligatorio').isEmail(),
    validarCampos
], registerUser);

router.post('/login', [

    check('email', 'El email es obligatorio').isEmail(),
    check('password', 'La contraseña is obligatoria').not().isEmpty(),
    validarCampos
], login);






router.get('/renew', validarJWT, renewToken);

export default router;