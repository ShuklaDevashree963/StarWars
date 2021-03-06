//
//  PlanetModel.swift
//  StarWars2
//
//  Created by Devashree KS on 24/01/22.
//

import Foundation

struct PlanetModel: Codable {
    let name, population: String
    let films, residents: [String]
    let created, edited: String
    let climate: String
    let diameter: String
    let gravity: String
    let surfaceWater: String
    let orbitalPeriod, rotationPeriod: String
    let terrain: String
    var filmArray: [FilmModel]?
    var residentArray: [PeopleModel]?
}
