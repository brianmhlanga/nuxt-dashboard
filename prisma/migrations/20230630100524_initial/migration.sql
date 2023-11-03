-- CreateTable
CREATE TABLE `user` (
    `id` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `surname` VARCHAR(191) NULL,
    `phone` VARCHAR(191) NULL,
    `age` INTEGER NULL,
    `gender` ENUM('MALE', 'FEMALE') NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `salt` VARCHAR(191) NOT NULL,
    `current_logged_in_at` DATETIME(3) NOT NULL,
    `last_logged_in_at` DATETIME(3) NOT NULL,
    `account_status` ENUM('ACTIVE', 'INACTIVE') NOT NULL DEFAULT 'INACTIVE',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `user_email_key`(`email`),
    UNIQUE INDEX `user_username_key`(`username`),
    UNIQUE INDEX `user_phone_key`(`phone`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `admin` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'BUYER', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'ADMIN',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `admin_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `clerk` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'BUYER', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'CLERK',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `clerk_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `normal` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'BUYER', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'NORMAL',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `normal_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `forum` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'BUYER', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'FORUM',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `forum_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `buyer` (
    `id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `type` ENUM('ADMIN', 'BUYER', 'FORUM', 'NORMAL', 'CLERK') NOT NULL DEFAULT 'BUYER',
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `buyer_user_id_key`(`user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `costcenter` (
    `id` VARCHAR(191) NOT NULL,
    `center_code` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `costcenter_center_code_key`(`center_code`),
    UNIQUE INDEX `costcenter_description_key`(`description`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `purchaseorderdiscounts` (
    `id` VARCHAR(191) NOT NULL,
    `code` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,
    `first_discount` DOUBLE NULL,
    `second_discount` DOUBLE NULL,
    `third_discount` DOUBLE NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `commoditycodes` (
    `id` VARCHAR(191) NOT NULL,
    `cost_center_id` VARCHAR(191) NOT NULL,
    `buyer_id` VARCHAR(191) NOT NULL,
    `class` VARCHAR(191) NULL,
    `code` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `requisition` (
    `id` VARCHAR(191) NOT NULL,
    `originator_id` VARCHAR(191) NOT NULL,
    `routing_id` VARCHAR(191) NOT NULL,
    `status` ENUM('DRAFT', 'PENDING', 'MOVING', 'FORUM', 'BUYING') NOT NULL DEFAULT 'DRAFT',
    `is_checked` BOOLEAN NOT NULL DEFAULT false,
    `checked_by` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `comments` (
    `id` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `user_id` VARCHAR(191) NOT NULL,
    `comment` LONGTEXT NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `attachments` (
    `id` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `attachment_name` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `requisitionrouting` (
    `id` VARCHAR(191) NOT NULL,
    `cost_center` VARCHAR(191) NOT NULL,
    `originator_id` VARCHAR(191) NOT NULL,
    `type` ENUM('CONTRACT_RELEASE', 'SPOTBUY', 'CAPEX', 'OTC') NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `approvers` (
    `id` VARCHAR(191) NOT NULL,
    `approver_number` INTEGER NOT NULL,
    `approver_id` VARCHAR(191) NOT NULL,
    `can_check` BOOLEAN NOT NULL DEFAULT false,
    `can_approve` BOOLEAN NOT NULL DEFAULT true,
    `threshold` DOUBLE NOT NULL,
    `routing_id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `requisitionline` (
    `id` VARCHAR(191) NOT NULL,
    `stock_code` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `long_description` VARCHAR(191) NULL,
    `commodity_code_id` VARCHAR(191) NULL,
    `quantity` DOUBLE NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `order_uom` VARCHAR(191) NULL,
    `quantity_uom` VARCHAR(191) NULL,
    `delivery_address` VARCHAR(191) NULL,
    `reason_for_requisition` VARCHAR(191) NULL,
    `supplier_id` VARCHAR(191) NULL,
    `price` DOUBLE NULL,
    `price_uom` DOUBLE NULL,
    `tax_code_id` VARCHAR(191) NOT NULL,
    `ledger_code` VARCHAR(191) NULL,
    `buyer_id` VARCHAR(191) NOT NULL,
    `non_conformance` BOOLEAN NOT NULL DEFAULT true,
    `warehouse` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    UNIQUE INDEX `requisitionline_tax_code_id_key`(`tax_code_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `supplier` (
    `id` VARCHAR(191) NOT NULL,
    `supplier_code` VARCHAR(191) NULL,
    `supplier_name` VARCHAR(191) NULL,
    `short_name` VARCHAR(191) NULL,
    `postal_code` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `taxcode` (
    `id` VARCHAR(191) NOT NULL,
    `tax_code` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `current_rate` DOUBLE NULL,
    `previous_rate` DOUBLE NULL,
    `basis` VARCHAR(191) NULL,
    `effective_date` DATETIME(3) NULL,
    `sales_ledger_code` VARCHAR(191) NULL,
    `ap_ledger_code` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `generalledgercode` (
    `id` VARCHAR(191) NOT NULL,
    `ledger_code` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `balance` DOUBLE NULL,
    `group` VARCHAR(191) NULL,
    `cost_center_id` VARCHAR(191) NOT NULL,
    `type` VARCHAR(191) NULL,
    `control` BOOLEAN NOT NULL,
    `on_hold` BOOLEAN NOT NULL,
    `index_1` VARCHAR(191) NULL,
    `index_2` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `admin` ADD CONSTRAINT `admin_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `clerk` ADD CONSTRAINT `clerk_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `normal` ADD CONSTRAINT `normal_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `forum` ADD CONSTRAINT `forum_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `buyer` ADD CONSTRAINT `buyer_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `commoditycodes` ADD CONSTRAINT `commoditycodes_buyer_id_fkey` FOREIGN KEY (`buyer_id`) REFERENCES `buyer`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `commoditycodes` ADD CONSTRAINT `commoditycodes_cost_center_id_fkey` FOREIGN KEY (`cost_center_id`) REFERENCES `costcenter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_routing_id_fkey` FOREIGN KEY (`routing_id`) REFERENCES `requisitionrouting`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_originator_id_fkey` FOREIGN KEY (`originator_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisition` ADD CONSTRAINT `requisition_checked_by_fkey` FOREIGN KEY (`checked_by`) REFERENCES `clerk`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `comments` ADD CONSTRAINT `comments_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `comments` ADD CONSTRAINT `comments_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `attachments` ADD CONSTRAINT `attachments_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionrouting` ADD CONSTRAINT `requisitionrouting_originator_id_fkey` FOREIGN KEY (`originator_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `approvers` ADD CONSTRAINT `approvers_approver_id_fkey` FOREIGN KEY (`approver_id`) REFERENCES `user`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `approvers` ADD CONSTRAINT `approvers_routing_id_fkey` FOREIGN KEY (`routing_id`) REFERENCES `requisitionrouting`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_commodity_code_id_fkey` FOREIGN KEY (`commodity_code_id`) REFERENCES `commoditycodes`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_supplier_id_fkey` FOREIGN KEY (`supplier_id`) REFERENCES `supplier`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_tax_code_id_fkey` FOREIGN KEY (`tax_code_id`) REFERENCES `taxcode`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `requisitionline` ADD CONSTRAINT `requisitionline_buyer_id_fkey` FOREIGN KEY (`buyer_id`) REFERENCES `buyer`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `generalledgercode` ADD CONSTRAINT `generalledgercode_cost_center_id_fkey` FOREIGN KEY (`cost_center_id`) REFERENCES `costcenter`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
