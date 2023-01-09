import { v4 as uuidv4 } from 'uuid';

import { Question } from "./question";

export class Card {
    id!: string;
    name!: string;
    phoneme!: string;
    image: string | undefined;
    questions!: Question[];

    constructor() {
        this.id = uuidv4();
        this.name = '';
        this.phoneme = '';
        this.questions = [];
    }
}

