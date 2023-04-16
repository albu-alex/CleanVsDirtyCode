import { Shape } from './shape.interface';

export class Circle implements Shape {
    constructor(private radius: number) { }

    public area(): number {
        return Math.PI * (this.radius ** 2);
    }
}
