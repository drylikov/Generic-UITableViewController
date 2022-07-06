//
//  AppDelegate.swift
//  GenericTableView
//
//  Created by Alfian Losari on 31/10/18.
//  Copyright © 2018 alfianlosari. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let personsVC = GenericTableViewController(items: Person.stubPerson, configure: { (cell: UITableViewCell, person) in
            cell.textLabel?.text = person.name
        }) { (person) in
            print(person.name)
        }
        personsVC.title = "Persons"
        
        let filmsVC = GenericTableViewController(items: Film.stubFilms, configure: { (cell: SubtitleTableViewCell, film) in
            cell.textLabel?.text = film.title
            cell.detailTextLabel?.text = "\(film.releaseYear)"
        }) { (film) in
            print(film.title)
        }
        filmsVC.title = "Films"

        let tabVC = UITabBarController(nibName: nil, bundle: nil)
        tabVC.setViewControllers([
            UINavigationController(rootViewController: personsVC),
            UINavigationController(rootViewController: filmsVC)
            ], animated: false)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = tabVC
        window?.makeKeyAndVisible()
        
        return true
    }


}

