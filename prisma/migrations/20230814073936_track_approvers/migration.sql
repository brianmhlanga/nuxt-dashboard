-- CreateTable
CREATE TABLE `Tracking` (
    `id` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `requisition_id` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Tracking` ADD CONSTRAINT `Tracking_requisition_id_fkey` FOREIGN KEY (`requisition_id`) REFERENCES `requisition`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
