import { Shape } from './shape.interface';

export class Triangle implements Shape {
    constructor(private base: number, private height: number) { }

    public area(): number {
        return (this.base * this.height) / 2;
    }
}
