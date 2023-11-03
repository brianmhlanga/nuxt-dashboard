import { prisma } from "~~/prisma/db";



export default defineEventHandler(async (event)=>{
    const response :any = {};
    
    const { data: {owner_id,name,description,rooms,image_url,price}} = await readBody(event);
    try {
       
        const route = await prisma.property.create({
            data: {
               owner_id,
               name,
               description,
               rooms,
               image_url,
               price
            }
        });
  
        response['route'] = route
        response['success'] = true
  
      } catch (error:any) {
        console.log(error)
        response['success'] = false
        response['message'] = error.toString()
      };
   
    return response;
});