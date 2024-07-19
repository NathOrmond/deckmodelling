// TODO
// import { Controller, Get, Put, Param, Body, NotFoundException } from '@nestjs/common';

// @Controller('decks')
// export class DeckController {

//  //TODO: services

//  constructor(private readonly deckService: DeckService) { }

//  @Get(':deck_id')
//  async getDeck(@Param('deck_id') deck_id: number) {
//   const deck = await this.deckService.getDeckById(deck_id);
//   if (!deck) {
//    throw new NotFoundException('Deck not found');
//   }
//   return deck;
//  }

//  @Put(':deck_id')
//  async updateDeck(@Param('deck_id') deck_id: number, @Body() updateDeckDto: any) {
//   const updatedDeck = await this.deckService.updateDeck(deck_id, updateDeckDto);
//   if (!updatedDeck) {
//    throw new NotFoundException('Deck not found');
//   }
//   return updatedDeck;
//  }
// }