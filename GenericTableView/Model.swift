//
//  Model.swift
//  GenericTableView
//
//  Created by Alfian Losari on 01/11/18.
//  Copyright © 2018 alfianlosari. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    
    static var stubPerson: [Person] {
        return [Person(name: "Mark Hamill"),
                Person(name: "Harrison Ford"),
                Person(name: "Carrie Fisher"),
                Person(name: "Hayden Christensen"),
                Person(name: "Ewan McGregor"),
                Person(name: "Natalie Portman"),
                Person(name: "Liam Neeson")
        ]
        
    }
}

struct Film {
    let title: String
    let releaseYear: Int
    
    static var stubFilms: [Film] {
        return [Film(title: "Star Wars: A New Hope", releaseYear: 1978),
                Film(title: "Star Wars: Empire Strikes Back", releaseYear: 1982),
                Film(title: "Star Wars: Return of the Jedi", releaseYear:  1984),
                Film(title: "Star Wars: The Phantom Menace", releaseYear: 1999),
                Film(title: "Star Wars: Clone Wars", releaseYear: 2003),
                Film(title: "Star Wars: Revenge of the Sith", releaseYear: 2005)]
    }
}
