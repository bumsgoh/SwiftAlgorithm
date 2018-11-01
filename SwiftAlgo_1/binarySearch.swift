//
//  binarySearch.swift
//  SwiftAlgo_1
//
//  Created by 고상범 on 2018. 11. 1..
//  Copyright © 2018년 고상범. All rights reserved.
//

import Foundation
// 검사해야하는 자료 크기가 한번 수행할 때마다 반으로 감소하기때문에 최악의 경우라도 log N + 1 개만 검사하면된다. O(logN)
public func binarySearch(targetArray: [Int], targetValue: Int) -> Int {
    var start: Int = 0
    var end: Int = targetArray.count
    var middle: Int = 0
    var index: Int = 0
    
    while start <= end && index == 0 {
        middle = (start + end) / 2
        if targetValue == targetArray[middle] {
            index = middle
        } else if targetValue < targetArray[middle] {
            end = middle - 1
        } else {
            start = middle + 1
        }
    }
    return index;
}
