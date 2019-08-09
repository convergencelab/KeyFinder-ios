//
//  ActiveNoteList.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class ActiveNoteList {
    
    static let DEF_KEY_TIMER = Float(2000)
    
    static let PARENT_MAJOR = 0
    
    static let PARENT_MELODIC_MINOR = 1
    
    static let MAJOR_INCREMENT_SEQUENCE = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
    
    static let MELODIC_MINOR_INCREMENT_SEQUENCE = MusicTheory.DORIAN_FLAT2_SEQUENCE
    
    public private(set) var maxStrength: Int
    
    public private(set) var activeKeyIx: Int
    
    public var keyTimerLength: Float
    
    // Keys to increment when adding active notes.
    // Sequence is dependent on parent scale.
    private var incrementSequence: [Int]
    
    /* SchuduledExecutor notes */
    
    /* ScheduledExecutor keys */
    
    /* Observers observers */
    
    private let activeNotes: [Bool]
    
    private let keyStrength: [Int]
    
    public init() {
        maxStrength = 0
        activeKeyIx = -1
        keyTimerLength = ActiveNoteList.DEF_KEY_TIMER
        
        // Major by default
        incrementSequence = ActiveNoteList.MAJOR_INCREMENT_SEQUENCE

        activeNotes = Array(repeating: false, count: MusicTheory.OCTAVE_SIZE)
        keyStrength = Array(repeating: 0, count: MusicTheory.OCTAVE_SIZE)
    }
}
