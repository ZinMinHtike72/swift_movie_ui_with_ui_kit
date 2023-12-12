//
//  MovieTableViewCell.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/8/23.
//

import UIKit
import Kingfisher

class MovieTableViewCell: UITableViewCell {
    @IBOutlet weak var ivMovieImage : UIImageView!
    @IBOutlet weak var lblMovieTitle : UILabel!
    @IBOutlet weak var lblDirector : UILabel!
    @IBOutlet weak var lblCasts : UILabel!
    @IBOutlet weak var lblYearAndRunTime : UILabel!
    
    var movie : Movie?
    var reloadFun : (() -> ())?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(movie : Movie,reloadFun : @escaping () -> ()){
        self.movie = movie
        self.reloadFun = reloadFun
        ivMovieImage.layer.cornerRadius = 10
        ivMovieImage.kf.setImage(with: URL(string: movie.movieImage))
        lblMovieTitle.text = movie.movieTitle
        lblDirector.text = "Director : \(movie.movieDirector)"
        lblCasts.text = "Casts : \(movie.movieActors)"
        lblYearAndRunTime.text = "\(movie.movieYear) (\(movie.movieRuntime))"
        
    }
    
    @IBAction func removeFromFav(){
        FavouriteMoviewDataSource.shared.deleteFavMovies(id: movie!.id)
        if(reloadFun != nil){
            reloadFun!()
        }
    }

}
