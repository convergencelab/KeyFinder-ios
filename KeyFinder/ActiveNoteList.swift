//
//  ActiveNoteList.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

class ActiveNoteList {
        
    // Keys to increment/decrement for active notes I/O.
    // Sequence is dependent on parent scale.
    public var incrementSequence: [Int]
    
    public private(set) var noteIsActive: [Bool]
    
    public private(set) var keyStrength: [Int]
    
    public init() {
        // Increment Sequence for major
        self.incrementSequence = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
        noteIsActive = Array(repeating: false, count: MusicTheory.OCTAVE_SIZE)
        keyStrength = Array(repeating: 0, count: MusicTheory.OCTAVE_SIZE)
    }
    
    public func max() -> Int {
        return keyStrength.max()!
    }
    
    public func addNote(ix: Int) {
        if !noteIsActive[ix] {
            noteIsActive[ix] = true
            incrementKeysWith(ix: ix)
        }
    }
    
    public func removeNote(ix: Int) {
        if noteIsActive[ix] {
            noteIsActive[ix] = false
            decrementKeysWith(ix: ix)
        }
    }
    
    private func incrementKeysWith(ix: Int) {
        for intvl in incrementSequence {
            keyStrength[(intvl + ix) % MusicTheory.OCTAVE_SIZE] += 1
        }
    }
    
    private func decrementKeysWith(ix: Int) {
        for intvl in incrementSequence {
            keyStrength[(intvl + ix) % MusicTheory.OCTAVE_SIZE] -= 1
        }
    }
}
