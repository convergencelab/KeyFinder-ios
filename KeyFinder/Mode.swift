//
//  Mode.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol Mode {
    
    var name: String { get }
    
    var ix: Int { get }
    
    var intervals: [Int] { get }

}
