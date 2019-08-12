//
//  BassTone.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class BassTone: Tone, Equatable {
    
    public private(set) var degree: Int
    
    public init(degree: Int) {
        self.degree = degree
    }
  
    public static func == (lhs: BassTone, rhs: BassTone) -> Bool {
        return lhs.degree == rhs.degree
    }
    
}
