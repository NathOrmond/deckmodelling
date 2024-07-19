// TODO
// import { Injectable } from '@nestjs/common';
// // import { PrismaService } from './prisma.service'; // Assumed to be created

// @Injectable()
// export class DeckService {
//  constructor(private prisma: PrismaService) { }

//  async getDeckById(deck_id: number) {
//   return this.prisma.deck.findUnique({
//    where: { id: deck_id },
//   });
//  }

//  async updateDeck(deck_id: number, updateDeckDto: any) {
//   return this.prisma.deck.update({
//    where: { id: deck_id },
//    data: updateDeckDto,
//   });
//  }
// }