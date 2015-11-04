//
//  Movie+CoreDataProperties.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var image: NSData?
    @NSManaged var title: String?
    @NSManaged var reason: String?
    @NSManaged var imdb: String?
    @NSManaged var plot: String?

}
