//
//  MovieCell.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var movieTitleLbl: UILabel!
    @IBOutlet weak var movieReasonLbl: UILabel!
    @IBOutlet weak var imdbLbl: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        movieImg.clipsToBounds = true
        movieImg.layer.cornerRadius = 5.0
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(movie: Movie) {
        movieTitleLbl.text = movie.title
        movieReasonLbl.text = movie.reason
        imdbLbl.text = movie.imdb
        movieImg.image = movie.getMovieImg()
    }

}
