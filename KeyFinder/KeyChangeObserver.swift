//
//  Observer.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public protocol KeyChangeObserver {
    
    func notifyKeyChange(newKey: Key)
    
}
