//
//  Note.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-07-24.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class Note: Equatable {
    
    // ix % 12
    public let ix: Int
    
    // ix
    public let rawIx: Int
    
    public let name: String
    
    public init(ix: Int) {
        self.rawIx = ix
        self.ix = ix % MusicTheory.OCTAVE_SIZE
        self.name = MusicTheory.CHROMATIC_SCALE_SHARP[self.ix]
    }
    
    public static func == (lhs: Note, rhs: Note) -> Bool {
        return lhs.rawIx == rhs.rawIx
    }
}
