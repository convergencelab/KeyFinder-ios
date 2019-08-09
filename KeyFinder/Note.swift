//
//  Note.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-07-24.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class Note: Equatable {
    
    // Differences from java lib:
    // Octave isn't used.
    // Note timer isn't used.
    
    // Used when octave doesn't matter (eg: all C's == 0, all Db's == 1)
    // For determining key
    public let ix: Int
    
    // Used when octave matters (eg: C == 0, or C == 12, etc ... )
    // For playback
    public let rawIx: Int
    
    public let name: String
    
    public init(ix: Int) {
        self.rawIx = ix
        self.ix = ix % MusicTheory.OCTAVE_SIZE
        self.name = MusicTheory.CHROMATIC_SCALE_SHARP[self.ix]
    }
    
    public static func == (lhs: Note, rhs: Note) -> Bool {
        return lhs.ix == rhs.ix
    }
}
