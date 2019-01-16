//
//  Array2D.swift
//  Swiftris
//
//  Created by Allbee, Eamon on 1/16/19.
//  Copyright © 2019 Allbee, Eamon. All rights reserved.
//

class Array2D<T> {
    
    let columns: Int
    
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        array = Array<T?>(repeating: nil, count:rows * columns)
        
        
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
    
}
