import { Question } from "./question";

export class Card {
    id!: string;
    name!: string;
    phoneme!: string;
    image: string | undefined;
    questions!: Question[];
}
