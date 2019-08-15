//
//  ActiveNoteList.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class ActiveNoteList {
        
    // Keys to increment/decrement for active notes I/O.
    // Sequence is dependent on parent scale.
    public var incrementSequence: [Int]?
    
    public private(set) var noteIsActive: [Bool]
    
    public private(set) var keyStrength: [Int]
    
    public init() {
        noteIsActive = Array(repeating: false, count: MusicTheory.OCTAVE_SIZE)
        keyStrength = Array(repeating: 0, count: MusicTheory.OCTAVE_SIZE)
    }
    
    public func addNote(ix: Int) {
        if !noteIsActive[ix] {
            noteIsActive[ix] = true
            incrementKeysWithNote(ix: ix)
        }
    }
    
    public func removeNote(ix: Int) {
        if noteIsActive[ix] {
            noteIsActive[ix] = false
            decrementKeysWithNote(ix: ix)
        }
    }
    
    public func clear() {
        /* Keeps reference to increment sequence */
        
        for ix in 0..<noteIsActive.count {
            noteIsActive[ix] = false
        }
        for ix in 0..<keyStrength.count {
            keyStrength[ix] = 0
        }
        
    }
    
    private func incrementKeysWithNote(ix: Int) {
        for intvl in incrementSequence! {
            keyStrength[(intvl + ix) % MusicTheory.OCTAVE_SIZE] += 1
        }
    }
    
    private func decrementKeysWithNote(ix: Int) {
        for intvl in incrementSequence! {
            keyStrength[(intvl + ix) % MusicTheory.OCTAVE_SIZE] -= 1
        }
    }
}
