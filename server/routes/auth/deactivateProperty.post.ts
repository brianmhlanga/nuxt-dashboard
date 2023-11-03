import { prisma } from "~~/prisma/db";

export default defineEventHandler(async (event)=>{
    const response: any = {};
    let {data: {id}} = await readBody(event)
    console.log("iddddddddddddd",id)
    try {
        const properties = await prisma.property.update({
            where: {
              id : id
            },
            data: {
                property_status: "UNAVAILABLE"
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