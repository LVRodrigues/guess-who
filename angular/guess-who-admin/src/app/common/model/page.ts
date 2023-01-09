export class Page {
    totalPages!: number;
    totalElements!: number;
    number!: number;
    size!: number;

    constructor() {
        this.totalPages = 0;
        this.totalElements = 0;
        this.number = 0;
        this.size = 0;
    }
}
