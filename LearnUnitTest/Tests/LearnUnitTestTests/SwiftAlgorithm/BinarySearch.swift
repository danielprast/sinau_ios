//
//  BinarySearch.swift
//  
//
//  Created by Daniel Prastiwa on 29/07/21.
//

import Foundation

struct BinarySearch {
    
    // recursive
    func search<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
        printStatement("-----------------------")
        printStatement("range upperbound", range.upperBound)
        printStatement("range lowerbound", range.lowerBound)
        
        if range.lowerBound >= range.upperBound {
            return nil
        }
        
        // Calculate where to split the array.
        let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        printStatement("mid index", midIndex)
        
        // Is the search key in the left half?
        if a[midIndex] > key {
            return search(a, key: key, range: range.lowerBound ..< midIndex)
        }
        
        // Is the search key in the right half?
        if a[midIndex] < key {
            return search(a, key: key, range: midIndex + 1 ..< range.upperBound)
        }
        
        // if we get here, then we've found the search key
        return midIndex
    }
    
    
    // Iterative approach
    func searchInterative<T: Comparable>(_ a: [T], key: T) -> Int? {
        var lowerBound = 0
        var upperBound = a.count
        
        while lowerBound < upperBound {
            
            let midIndex = lowerBound + (upperBound - lowerBound) / 2
            let midValue = a[midIndex]
            
            if midValue == key {
                return midIndex
            }
            
            if midValue < key {
                lowerBound = midIndex + 1
            } else {
                upperBound = midIndex
            }
            
        }
        
        return nil
    }
    
    
    
    func binarySearch<T: Comparable>(_ searchValue: T, array: [T]) -> Int? {
        var leftIndex = 0
        var rightIndex = array.count - 1
        
        while leftIndex <= rightIndex {
            let midIndex = (leftIndex + rightIndex) / 2
            let midValue = array[midIndex]
            
            printStatement("midIndex", midIndex)
            printStatement("midValue", midValue)
            printStatement("leftIndex", leftIndex)
            printStatement("rightIndex", rightIndex)
            print("-----------------")
            
            if midValue == searchValue {
                return midIndex
            }
            
            if searchValue < midValue {
                rightIndex = midIndex - 1
            }
            
            if searchValue > midValue {
                leftIndex = midIndex + 1
            }
        }
        
        printStatement("leftIndex", leftIndex)
        printStatement("rightIndex", rightIndex)
        
        return nil
    }
}
