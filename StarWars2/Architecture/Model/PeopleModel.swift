//
//  PeopleModel.swift
//  StarWars2
//
//  Created by Devashree KS on 24/01/22.
//

import Foundation
import CoreData

struct PeopleModel: Codable {
    let name, height, mass, hairColor: String
    let skinColor, eyeColor, birthYear: String
    let gender: String
    let homeworld: String
    let films, species, vehicles, starships: [String]
    let created, edited: String
    var filmArray: [FilmModel]?
    var speciesArray: [SpicesModel]?
    var vehiclesArray: [VehicleModel]?
    var starshipsArray: [StarshipModel]?
}

extension PeopleModel: Parceable {

    static func parseObject(data: Data) -> Result<PeopleModel, ErrorResult> {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        if let result = try? decoder.decode(PeopleModel.self, from: data) {
            return Result.success(result)
        } else {
            return Result.failure(ErrorResult.parser(string: "Unable to parse flickr results"))
        }
    }

}
