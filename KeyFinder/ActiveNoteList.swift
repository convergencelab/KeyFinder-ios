//
//  ActiveNoteList.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

class ActiveNoteList {
        
    // Keys to increment when adding active notes.
    // Sequence is dependent on parent scale.
    public var incrementSequence: [Int]
    
    private let activeNotes: [Bool]
    
    private let keyStrength: [Int]
    
    public init() {
        // Increment Sequence for major
        self.incrementSequence = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
        activeNotes = Array(repeating: false, count: MusicTheory.OCTAVE_SIZE)
        keyStrength = Array(repeating: 0, count: MusicTheory.OCTAVE_SIZE)
    }
    
    public func findMaxStrength() -> Int {
        return keyStrength.max()!
    }
    
    public func addNote(ix: Int) {
        // Fill in later
    }
    
    public func removeNote(ix: Int) {
        // Fill in later
    }
}
