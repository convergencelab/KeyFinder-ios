//
//  MelodicMinorMode.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class MelodicMinorMode: Mode {
    
    public let name: String
    
    public let ix: Int
    
    public let intervals: [Int]
    
    public init(ix: Int) {
        self.ix = ix
        self.name = MusicTheory.MELODIC_MINOR_MODE_NAMES[ix]
        self.intervals = MelodicMinorMode.makeIntervals(modeIx: ix)
    }
    
    private class func makeIntervals(modeIx: Int) -> [Int] {
        let offset = MusicTheory.MELODIC_MINOR_SCALE_SEQUENCE[modeIx]
        var scaleIxs = Array(repeating: -1, count: 7)
        var curIntvl = -1
        
        for i in 0..<MusicTheory.DIATONIC_SCALE_SIZE {
            curIntvl = MusicTheory.MELODIC_MINOR_SCALE_SEQUENCE[(i + modeIx) % MusicTheory.DIATONIC_SCALE_SIZE] - offset
            if curIntvl < 0 {
                curIntvl += MusicTheory.OCTAVE_SIZE
            }
            scaleIxs[i] = curIntvl
        }
        return scaleIxs
    }

}
