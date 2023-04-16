import { Injectable } from "@angular/core";

enum ShapeType {
    Square = 0,
    Rectangle,
    Triangle,
    Circle
}

interface ShapeUnion {
    type: ShapeType;
    height: number;
    width: number;
}

@Injectable({
    providedIn: 'root'
})
export class DirtyCodeService {

    private CTable: number[] = [1.0, 1.0, 0.5, Math.PI];

    public getTimeForTotalArea(): number {
        const start = Date.now();
        let total = 0;
        for (const shape of this.generatedShapeUnions()) {
            total += this.getAreaUnion(shape);
        }
        const end = Date.now();
        // Time elapsed in seconds
        return (end - start) / 1000;
    }

    private getAreaUnion(shape: ShapeUnion): number {
        return this.CTable[shape.type] * shape.height * shape.width;
    }

    private generatedShapeUnions(): ShapeUnion[] {
        let shapeUnions: ShapeUnion[] = [];
        for (let i = 1; i <= 100000; i++) {
            const type: ShapeType = Math.floor(Math.random() * 4);
            const height: number = Math.random() * 10 + 1;
            const width: number = Math.random() * 10 + 1;
            const shapeUnion: ShapeUnion = { type, height, width };
            shapeUnions.push(shapeUnion);
        }
        return shapeUnions;
    }
}
