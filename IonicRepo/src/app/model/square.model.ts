import { Shape } from './shape.interface';

export class Square implements Shape {
    constructor(private sideLength: number) { }

    public area(): number {
        return this.sideLength ** 2;
    }
}