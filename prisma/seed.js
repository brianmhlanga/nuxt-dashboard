const { PrismaClient } = require('@prisma/client');
const bcrypt = require('bcrypt');
const prisma = new PrismaClient();

const load = async () => {
    try {
        // await prisma.user.deleteMany();
        // console.log("Deleted records in user table");

        const lastLoginIpAddress = "127.0.0.1";

        //Hash password
        const password = "password";
        const salt = await bcrypt.genSalt();
        const hash = await bcrypt.hash(password, salt);

        const demo_user = await prisma.user.create({

           data: {

            name: "Demo",
            surname: "Demo",
            username: "Adminstrator",
            phone: "099999998",
            password: hash,
            email: "admin@gmail.com",
            profile_type: "ADMIN",
            salt: salt,
           }

        });



        console.log("Added Admin User");
    } catch (e) {
        console.error(e);
        process.exit(1);
    } finally {
        await prisma.$disconnect();
    };
}

load();