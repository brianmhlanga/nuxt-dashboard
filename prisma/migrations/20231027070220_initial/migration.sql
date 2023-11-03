/*
  Warnings:

  - You are about to drop the column `current_logged_in_at` on the `user` table. All the data in the column will be lost.
  - You are about to drop the column `last_logged_in_at` on the `user` table. All the data in the column will be lost.
  - You are about to drop the `_commoditycodestosupplier` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `address` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `admin` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `approver` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `approvers` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `attachments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `budget` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `clerk` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `comments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `commoditycodes` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `costcenter` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `forum` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `generalledgercode` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `mandatoryattachments` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `normal` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `purchaseorderdiscounts` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `requisition` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `requisitionforumapprovers` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `requisitionline` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `requisitionrouting` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `requisitiontype` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `supplier` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `taxcode` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `tracking` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `profile_type` to the `user` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `_commoditycodestosupplier` DROP FOREIGN KEY `_CommodityCodesToSupplier_A_fkey`;

-- DropForeignKey
ALTER TABLE `_commoditycodestosupplier` DROP FOREIGN KEY `_CommodityCodesToSupplier_B_fkey`;

-- DropForeignKey
ALTER TABLE `admin` DROP FOREIGN KEY `admin_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `approver` DROP FOREIGN KEY `approver_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `approvers` DROP FOREIGN KEY `approvers_approver_id_fkey`;

-- DropForeignKey
ALTER TABLE `approvers` DROP FOREIGN KEY `approvers_routing_id_fkey`;

-- DropForeignKey
ALTER TABLE `budget` DROP FOREIGN KEY `Budget_cost_id_fkey`;

-- DropForeignKey
ALTER TABLE `clerk` DROP FOREIGN KEY `clerk_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `comments` DROP FOREIGN KEY `comments_requisition_id_fkey`;

-- DropForeignKey
ALTER TABLE `comments` DROP FOREIGN KEY `comments_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `commoditycodes` DROP FOREIGN KEY `commoditycodes_cost_center_id_fkey`;

-- DropForeignKey
ALTER TABLE `forum` DROP FOREIGN KEY `forum_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `generalledgercode` DROP FOREIGN KEY `generalledgercode_cost_center_id_fkey`;

-- DropForeignKey
ALTER TABLE `mandatoryattachments` DROP FOREIGN KEY `MandatoryAttachments_type_id_fkey`;

-- DropForeignKey
ALTER TABLE `normal` DROP FOREIGN KEY `normal_cost_center_id_fkey`;

-- DropForeignKey
ALTER TABLE `normal` DROP FOREIGN KEY `normal_user_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_address_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_approver_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_checked_by_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_history_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_originator_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisition` DROP FOREIGN KEY `requisition_routing_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionforumapprovers` DROP FOREIGN KEY `RequisitionForumApprovers_approver_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionforumapprovers` DROP FOREIGN KEY `RequisitionForumApprovers_requisition_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_commodity_code_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_ledger_code_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_requisition_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionline` DROP FOREIGN KEY `requisitionline_supplier_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionrouting` DROP FOREIGN KEY `requisitionrouting_originator_id_fkey`;

-- DropForeignKey
ALTER TABLE `requisitionrouting` DROP FOREIGN KEY `requisitionrouting_type_id_fkey`;

-- DropForeignKey
ALTER TABLE `tracking` DROP FOREIGN KEY `Tracking_requisition_id_fkey`;

-- AlterTable
ALTER TABLE `user` DROP COLUMN `current_logged_in_at`,
    DROP COLUMN `last_logged_in_at`,
    ADD COLUMN `profile_type` ENUM('ADMIN', 'OWNER', 'TENANT') NOT NULL;

-- DropTable
DROP TABLE `_commoditycodestosupplier`;

-- DropTable
DROP TABLE `address`;

-- DropTable
DROP TABLE `admin`;

-- DropTable
DROP TABLE `approver`;

-- DropTable
DROP TABLE `approvers`;

-- DropTable
DROP TABLE `attachments`;

-- DropTable
DROP TABLE `budget`;

-- DropTable
DROP TABLE `clerk`;

-- DropTable
DROP TABLE `comments`;

-- DropTable
DROP TABLE `commoditycodes`;

-- DropTable
DROP TABLE `costcenter`;

-- DropTable
DROP TABLE `forum`;

-- DropTable
DROP TABLE `generalledgercode`;

-- DropTable
DROP TABLE `mandatoryattachments`;

-- DropTable
DROP TABLE `normal`;

-- DropTable
DROP TABLE `purchaseorderdiscounts`;

-- DropTable
DROP TABLE `requisition`;

-- DropTable
DROP TABLE `requisitionforumapprovers`;

-- DropTable
DROP TABLE `requisitionline`;

-- DropTable
DROP TABLE `requisitionrouting`;

-- DropTable
DROP TABLE `requisitiontype`;

-- DropTable
DROP TABLE `supplier`;

-- DropTable
DROP TABLE `taxcode`;

-- DropTable
DROP TABLE `tracking`;

-- CreateTable
CREATE TABLE `Property` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `owner_id` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `rooms` INTEGER NULL,
    `image_url` VARCHAR(191) NULL,
    `price` VARCHAR(191) NULL,
    `property_status` ENUM('AVAILABLE', 'BOOKED', 'UNAVAILABLE') NOT NULL DEFAULT 'AVAILABLE',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Property` ADD CONSTRAINT `Property_owner_id_fkey` FOREIGN KEY (`owner_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
