//
//  DateFormaterExtension.swift
//  ZJobs
//
//  Created by Viktor Draganov on 9.05.22.
//

import Foundation

extension DateFormatter{
    static func toString(date: Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY, MMM d"
        
        let result = dateFormatter.string(from: date)
        
        return result;
    }
}
