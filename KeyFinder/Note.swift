//
//  Note.swift
//  KeyFinder
//
//  Created by IT Services Loaner on 2019-07-24.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

class Note {
    
    // Differences from java lib:
    // Octave isn't used.
    // Note timer isn't used.
    
    private let ix: Int
    
    private let name: String
    
    init(ix: Int) {
        self.ix = ix
        self.name = MusicTheory.CHROMATIC_SCALE_SHARP[ix]
    }
}
