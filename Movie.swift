//
//  Movie.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import Foundation
import CoreData
import UIKit


class Movie: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    func setMovieImg(img: UIImage) {
        let data = UIImagePNGRepresentation(img)
        self.image = data
    }
    
    func getMovieImg() -> UIImage {
        let img = UIImage(data: self.image!)!
        return img
    }

}
