//
//  Voicing.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class Voicing {
    
    public let voices: [Note]
    
    public var size: Int {
        get {
            return voices.count
        }
    }
    
    // Todo: Should throw error if min bass is greater than min chord?
    public init(voicingTemplate: VoicingTemplate, key: Key, minBassIx: Int, minChordIx: Int) {
        voices = Voicing.makeVoices(voicingTemplate: voicingTemplate, key: key, minBassIx: minBassIx, minChordIx: minChordIx)
    }
    
    /* Makes notes from tones */
    public class func makeVoices(voicingTemplate: VoicingTemplate, key: Key, minBassIx: Int, minChordIx: Int) -> [Note] {
        var toReturn = [Note]()
        
        // Make Bass Notes
        let bassMin = MusicTheory.getLowestIx(root: key.ix, min: minBassIx)
        for tone in voicingTemplate.bassTones {
            let curNote = Note(ix: bassMin + (MusicTheory.OCTAVE_SIZE * (tone.degree / MusicTheory.DIATONIC_SCALE_SIZE)) + key.mode.intervals[tone.degree % MusicTheory.DIATONIC_SCALE_SIZE])
            toReturn.append(curNote)
        }
        
        // Make Chord Notes
        let chordMin = MusicTheory.getLowestIx(root: key.ix, min: minChordIx)
        for tone in voicingTemplate.chordTones {
            let curNote = Note(ix: chordMin + (MusicTheory.OCTAVE_SIZE * (tone.degree / MusicTheory.DIATONIC_SCALE_SIZE)) + key.mode.intervals[tone.degree % MusicTheory.DIATONIC_SCALE_SIZE])
            toReturn.append(curNote)
        }
        
        return toReturn
    }
    
}
