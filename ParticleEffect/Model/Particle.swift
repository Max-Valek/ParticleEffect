//
//  Particle.swift
//  ParticleEffect
//
//  Created by Max Valek on 4/28/23.
//

import SwiftUI

// Particle Model
struct Particle: Identifiable {
    var id: UUID = .init()
    var randomX: CGFloat = 0
    var randomY: CGFloat = 0
    var scale: CGFloat = 1
    // optional
    var opacity: CGFloat = 1
    
    // reset all properties
    mutating func reset() {
        randomX = 0
        randomY = 0
        scale = 1
        opacity = 1
    }
}
