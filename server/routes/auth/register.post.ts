import { prisma } from "~~/prisma/db";
import bcrypt from "bcrypt";

export default defineEventHandler(async (event)=>{
    const response:any = {};
    

    const { data: {email,password,username,name,surname}} = await readBody(event);
     
    const isAlreadyRegistered = await prisma.user.findUnique({
        where: {
            email: email
        }
    });

    if(isAlreadyRegistered){
        return {
            message: `User with ${email} already exists.`,
            success: false
        }
    }
   

    const salt = await bcrypt.genSalt();
    const hash = await bcrypt.hash(password, salt);
    try {

        const createClient = await prisma.user.create({
            data: {
                name: name,
                username: username,
                surname: surname,
                email: email,
                password: hash,
                salt: salt
            }
        });

        response['registred'] = createClient
        response['success'] = true


  
      } catch (error:any) {

        response['success'] = false
        response['message'] = error.toString()
      };
    
   
    return response;
});