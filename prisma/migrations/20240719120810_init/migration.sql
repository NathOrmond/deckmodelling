-- CreateTable
CREATE TABLE `deck` (
    `deck_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `parent_id` INTEGER NULL,
    `created_timestamp` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_timestamp` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`deck_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `card` (
    `card_id` INTEGER NOT NULL AUTO_INCREMENT,
    `content` VARCHAR(191) NOT NULL,
    `created_timestamp` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_timestamp` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`card_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DeckCard` (
    `cardId` INTEGER NOT NULL,
    `deckId` INTEGER NOT NULL,
    `order` INTEGER NOT NULL,

    UNIQUE INDEX `DeckCard_deckId_order_key`(`deckId`, `order`),
    PRIMARY KEY (`cardId`, `deckId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `deck` ADD CONSTRAINT `deck_parent_id_fkey` FOREIGN KEY (`parent_id`) REFERENCES `deck`(`deck_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DeckCard` ADD CONSTRAINT `DeckCard_cardId_fkey` FOREIGN KEY (`cardId`) REFERENCES `card`(`card_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DeckCard` ADD CONSTRAINT `DeckCard_deckId_fkey` FOREIGN KEY (`deckId`) REFERENCES `deck`(`deck_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
