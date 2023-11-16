import { prisma } from "~~/prisma/db";

export default defineEventHandler(async (event)=>{
    const response: any = {};
    let {data:{id}} = await readBody(event)
     console.log("owner id",id)
    if (!id) {
      response['properties'] =  null
      response['success'] = true
      return response
    }
    try {
        const properties = await prisma.property.findMany({
            where: {
              owner_id : id
            }
        });
  
        response['properties'] =  properties
        response['success'] = true
  
      } catch (error: any) {
        response['success'] = false
        response['message'] = error.toString()
      };
   
    return response;
});