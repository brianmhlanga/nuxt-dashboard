/*
  Warnings:

  - The values [CLERK] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - The values [CLERK] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - You are about to alter the column `type` on the `clerk` table. The data in that column could be lost. The data in that column will be cast from `Enum(EnumId(2))` to `Enum(EnumId(6))`.
  - The values [CLERK] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.
  - The values [CLERK] on the enum `forum_type` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `admin` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CONTROLLER') NOT NULL DEFAULT 'ADMIN';

-- AlterTable
ALTER TABLE `approver` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CONTROLLER') NOT NULL DEFAULT 'APPROVER';

-- AlterTable
ALTER TABLE `clerk` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CONTROLLER') NOT NULL DEFAULT 'CONTROLLER';

-- AlterTable
ALTER TABLE `forum` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CONTROLLER') NOT NULL DEFAULT 'FORUM';

-- AlterTable
ALTER TABLE `normal` MODIFY `type` ENUM('ADMIN', 'FORUM', 'NORMAL', 'APPROVER', 'CONTROLLER') NOT NULL DEFAULT 'NORMAL';
