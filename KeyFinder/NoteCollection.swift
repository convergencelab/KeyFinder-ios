//
//  NoteCollection.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-08.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class NoteCollection {
    
    private var allNotes: [Note]
    
    public init() {
        allNotes = Array()
        // Create note for each index.
        for noteIx in 0..<MusicTheory.OCTAVE_SIZE {
            allNotes.append(Note(ix: noteIx))
        }
    }
    
    public func getNoteAt(ix: Int) -> Note {
        return allNotes[ix]
    }
    
}
