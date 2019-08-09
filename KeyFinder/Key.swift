//
//  AbstractKey.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-02.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

/* CLASS DOESN'T CONTAIN NOTE LIST BECAUSE IT ISN'T NECCESSARY */

public class Key {
    
    public let ix: Int
    
    public let mode: Mode
    
    public init(ix: Int, mode: Mode) {
        self.ix = ix
        self.mode = mode
    }
}
