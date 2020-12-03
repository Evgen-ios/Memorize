//
//  Array + Only.swift
//  Memorize
//
//  Created by Evgeniy Goncharov on 19.11.2020.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
