//
//  Main.swift
//  StructsVSClasses
//
//  Created by Owen Henley on 12/5/18.
//  Copyright © 2018 Owen Henley. All rights reserved.
//

import Foundation

var hero = Structhero(name: "Iron Man", universe: "Marval")
var anotherHero = hero
anotherHero.name = "The Hulk"

print("hero name = \(hero.name)")
print("another hero name = \(anotherHero.name)")
