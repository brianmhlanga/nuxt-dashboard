import { prisma } from "~~/prisma/db";

export default defineEventHandler(async (event)=>{
    const response: any = {};
    let {owner_id} = await readBody(event)
    try {
        const properties = await prisma.property.findMany({
            where :{
                property_status: "AVAILABLE"   
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