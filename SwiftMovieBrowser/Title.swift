//
//  Title.swift
//  SwiftMovieBrowser
//
//  Created by Glen Heide on 3/9/26.
//

import Foundation

struct APIObject: Decodable {
    var results: [Title] = [];
}

struct Title: Decodable, Identifiable {
    var id: Int?;
    var title: String?;
    var name: String?;
    var overview: String?;
    var posterPath: String?;
    
    static var previewTitles = [
        Title(id: 1, title: "BeetleJuice", name: "BeetleJuice", overview: "A movie about BeetleJuice", posterPath: Constants.testTitleURL),
        Title(id: 1, title: "Pulp Fiction", name: "Pulp Fiction", overview: "A movie about Pulp Fiction", posterPath: Constants.testTitleURL2),
        Title(id: 1, title: "The Dark Knight", name: "The Dark Knight", overview: "A movie about the The Dark Knight", posterPath: Constants.testTitleURL3)
    ];
}
