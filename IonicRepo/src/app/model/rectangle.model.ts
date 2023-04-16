import { Shape } from './shape.interface';

export class Rectangle implements Shape {
    constructor(private height: number, private width: number) { }

    public area(): number {
        return this.width * this.height;
    }
}