//
//  VoicingTemplate.swift
//  KeyFinder
//
//  Created by Travis MacDonald on 2019-08-12.
//  Copyright © 2019 Convergence Lab. All rights reserved.
//

import Foundation

public class VoicingTemplate {
    
    public let name: String
    
    public let bassTones: [BassTone]
    
    public let chordTones: [ChordTone]
    
    public var size: Int {
        get {
            return bassTones.count + chordTones.count
        }
    }
    
    public init(name: String, bassIxs: [Int], chordIxs: [Int]) {
        self.name = name
        self.bassTones = VoicingTemplate.toBassTones(ixs: bassIxs)
        self.chordTones = VoicingTemplate.toChordTones(ixs: chordIxs)
    }
    
    class func toBassTones(ixs: [Int]) -> [BassTone] {
        var tones = [BassTone]()
        for ix in ixs {
            tones.append(BassTone(degree: ix))
        }
        return tones
    }
    
    class func toChordTones(ixs: [Int]) -> [ChordTone] {
        var tones = [ChordTone]()
        for ix in ixs {
            tones.append(ChordTone(degree: ix))
        }
        return tones
    }
}
