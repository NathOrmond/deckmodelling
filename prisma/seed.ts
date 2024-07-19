import { PrismaClient } from '@prisma/client';

const prisma = new PrismaClient();

async function main() {
 // Seed Decks
 const deck1 = await prisma.deck.create({
  data: {
   name: 'Deck 1',
  },
 });

 // Seed Cards
 const card1 = await prisma.card.create({
  data: {
   content: 'Card 1 Content',
  },
 });

 const card2 = await prisma.card.create({
  data: {
   content: 'Card 2 Content',
  },
 });

// Seed DeckCards
await prisma.deckCard.create({
 data: {
  cardId: card1.card_id,
  deckId: deck1.deck_id,
  order: 1,
 },
});

await prisma.deckCard.create({
 data: {
  cardId: card2.card_id,
  deckId: deck1.deck_id,
  order: 2,
 },
});

console.log('Seeding completed.');
}

main()
 .catch((e) => {
  console.error(e);
  process.exit(1);
 })
 .finally(async () => {
  await prisma.$disconnect();
 });