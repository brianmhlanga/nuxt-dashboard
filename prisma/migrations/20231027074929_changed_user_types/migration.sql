/*
  Warnings:

  - You are about to alter the column `profile_type` on the `user` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(3))` to `Enum(EnumId(1))`.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `gender` ENUM('MALE', 'FEMALE') NULL,
    MODIFY `profile_type` ENUM('ADMIN', 'CLIENT') NOT NULL DEFAULT 'CLIENT';
