//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Ilnur on 02.05.2023.
//

import Foundation

struct Animation {
    
    var preset: [String]
    var curve: [String]
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getValue() -> [Animation] {
        // создаем пустой массив, чтобы его заполнить объектами данных
        var animations:[Animation] = []
        // Данные берем из класса DataStore создавая экземпляры класса(массивы)
        // свойсто shuffled() перемешивает данные в массиве данных
        let animation = DataSource.shared.animations.shuffled()
        let curve = DataSource.shared.curves.shuffled()
        
        // создаем свойство, которое принимает наименьшее количество элементов массива
        let iterationCount = min(
            animation.count,
            curve.count
        )
        
        // перебираем в цикле целые числа(индексы) для дальнейшего извлечения данных
        // внутри цикла инициализируем экземпляр модели
        for _ in 0..<iterationCount {
            let animation = Animation(
                preset: animation,
                curve: curve,
                force: Double.random(in: 0...1),
                duration: Double.random(in: 0...1),
                delay: Double.random(in: 0...1)
            )
            animations.append(animation)
        }
        
        return animations
    }
}
