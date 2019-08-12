//
//  ModeCollection.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class ModeCollection {
    
    public private(set) var majorModes: [Mode]
    
    public private(set) var melodicMinorModes: [Mode]
    
    public init() {
        self.majorModes = ModeCollection.setupMajorModes()
        self.melodicMinorModes = ModeCollection.setupMelodicMinorModes()
    }
    
    public class func setupMajorModes() -> [Mode] {
        var toReturn = Array<Mode>()
        for i in 0..<MusicTheory.DIATONIC_SCALE_SIZE {
            toReturn.append(MajorMode(ix: i))
        }
        return toReturn
    }
    
    public class func setupMelodicMinorModes() -> [Mode] {
        var toReturn = Array<Mode>()
        for i in 0..<MusicTheory.DIATONIC_SCALE_SIZE {
            toReturn.append(MelodicMinorMode(ix: i))
        }
        return toReturn
    }
}
