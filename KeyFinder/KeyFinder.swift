//
//  KeyFinder.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-09.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

/* Wrapper Class for ActiveKeyList and KeyGenerator */
public class KeyFinder {
    
    // Used to set parent scale
    public static let PARENT_MAJOR = 0
    
    // Used to set parent scale
    public static let PARENT_MELODIC_MINOR = 1
    
    // Sequence to set in ActiveNoteList for Major
    private static let MAJOR_INCREMENT_SEQUENCE = MusicTheory.PHRYGIAN_SCALE_SEQUENCE
    
    // Sequence to set in ActiveNoteList for Melodic Minor
    private static let MELODIC_MINOR_INCREMENT_SEQUENCE = MusicTheory.DORIAN_FLAT2_SEQUENCE
    
    /*
     * Will take care of scheduled timing of removing notes
     * setting active key threads
     * Turning active key indices into keys and returning them
     */
    
    
    
}
