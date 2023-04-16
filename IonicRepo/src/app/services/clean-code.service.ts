import { Injectable } from "@angular/core";
import { Circle } from "../model/circle.model";
import { Rectangle } from "../model/rectangle.model";
import { Shape } from "../model/shape.interface";
import { Square } from "../model/square.model";
import { Triangle } from "../model/triangle.model";

@Injectable({
    providedIn: 'root'
})
export class CleanCodeService {

    public getTimeForTotalArea(): number {
        const start = Date.now();
        let total = 0;
        for (const shape of this.generatedShapes()) {
            total += shape.area();
        }
        const end = Date.now();
        // Time elapsed in seconds
        return (end - start) / 1000;
    }

    private generatedShapes(): Shape[] {
        const shapes: Shape[] = [];

        for (let i = 1; i <= 100000; i++) {
            let shape: Shape;

            switch (i % 4) {
                case 0:
                    const side = Math.random() * (100 - 1) + 1;
                    shape = new Square(side);
                    break;
                case 1:
                    const radius = Math.random() * (100 - 1) + 1;
                    shape = new Circle(radius);
                    break;
                case 2:
                    const base = Math.random() * (100 - 1) + 1;
                    const height = Math.random() * (100 - 1) + 1;
                    shape = new Triangle(height, base);
                    break;
                case 3:
                    const width = Math.random() * (100 - 1) + 1;
                    const height2 = Math.random() * (100 - 1) + 1;
                    shape = new Rectangle(width, height2);
                    break;
                default:
                    throw new Error("Invalid random number generated");
            }

            shapes.push(shape);
        }

        return shapes;
    }
}