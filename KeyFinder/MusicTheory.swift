//
//  MusicTheory.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-07-24.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class MusicTheory {
    /**
     * Unicode for sharp sign.
     */
    public static let SHARP = "\u{266f}"
    
    /**
     * Unicode for flat sign.
     */
    public static let FLAT = "\u{266d}"
    
    /**
     * Intervals that make up the major scale.
     * Each number can be viewed as the semitone offset from the root.
     */
    public static let MAJOR_SCALE_SEQUENCE = [ 0, 2, 4, 5, 7, 9, 11 ]
    
    /**
     * Intervals that make up the melodic minor scale.
     * Each number can be viewed as the semitone offset from the root.
     */
    public static let MELODIC_MINOR_SCALE_SEQUENCE = [ 0, 2, 3, 5, 7, 9, 11 ]
    
    /**
     * Intervals that make up the Phrygian scale.
     */
    public static let PHRYGIAN_SCALE_SEQUENCE = [ 0, 1, 3, 5, 7, 8, 10 ]
    
    /**
     * Intervals that make up the Dorian Flat2 scale.
     */
    public static let DORIAN_FLAT2_SEQUENCE = [ 0, 1, 3, 5, 7, 9, 10 ]
    
    /**
     * Intervals that make up a major triad.
     */
    public static let MAJOR_TRAID_SEQUENCE = [ 0, 4, 7 ]
    
    public static let SHARP_SPELLING_CODE = 1
    public static let FLAT_SPELLING_CODE = 0
    
    /**
     * Values correspond to whether or not a key should have sharp spelling.
     * true  = sharp
     * false = flat
     */
    public static let SPELLING_CODE = [
        SHARP_SPELLING_CODE, // C
        FLAT_SPELLING_CODE,  // Db
        SHARP_SPELLING_CODE, // D
        FLAT_SPELLING_CODE,  // Eb
        SHARP_SPELLING_CODE, // E
        FLAT_SPELLING_CODE,  // F
        FLAT_SPELLING_CODE,  // Gb
        SHARP_SPELLING_CODE, // G
        FLAT_SPELLING_CODE,  // Ab
        SHARP_SPELLING_CODE, // A
        FLAT_SPELLING_CODE,  // Bb
        SHARP_SPELLING_CODE, // B
    ]
    
    /**
     * Names of all 12 tones used in western music.
     */
    public static let CHROMATIC_SCALE_SHARP = [
        "C",
        "C" + SHARP,
        "D",
        "D" + SHARP,
        "E",
        "F",
        "F" + SHARP,
        "G",
        "G" + SHARP,
        "A",
        "A" + SHARP,
        "B"
    ]
    
    public static let CHROMATIC_SCALE_FLAT = [
        "C",
        "D" + FLAT,
        "D",
        "E" + FLAT,
        "E",
        "F",
        "G" + FLAT,
        "G",
        "A" + FLAT,
        "A",
        "B" + FLAT,
        "B"
    ]
    
    /**
     * Names of modes in major scale.
     */
    public static let MAJOR_MODE_NAMES = [
        "Ionian",
        "Dorian",
        "Phrygian",
        "Lydian",
        "Mixolydian",
        "Aeolian",
        "Locrian"
    ]
    
    /**
     * Names of modes in melodic minor scale.
     */
    public static let MELODIC_MINOR_MODE_NAMES = [
        "Melodic Minor",
        "Phrygian Sharp 6",
        "Lydian Augmented",
        "Lydian Flat 7",
        "Mixolydian Flat 6",
        "Locrian Sharp 2",
        "Altered"
    ]
    
    /**
     * Total number of unique tones in western music.
     */
    public static let TOTAL_NOTES = 12
    
    /**
     * Number of notes in a diatonic scale.
     */
    public static let DIATONIC_SCALE_SIZE = 7
    
    /**
     * Names of Parent scales.
     */
    public static let PARENT_SCALE_NAMES = [
        "Major",
        "Melodic Minor"
    ]
}
