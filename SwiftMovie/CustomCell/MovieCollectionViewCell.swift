//
//  MovieCollectionViewCell.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/7/23.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ivImage : UIImageView!
    @IBOutlet weak var lblMovieTitle : UILabel!
    @IBOutlet weak var ivFavourite : UIImageView!
    @IBOutlet weak var btnFavourite : UIButton!
    var movie : Movie?
    var reloadFun : (() -> ())?
    override func awakeFromNib() {
           super.awakeFromNib()
           // Initialization code
       }
    
    func setData(movieData : Movie , reloadFun : @escaping () -> () ){
        movie = movieData
        lblMovieTitle.text = movieData.movieTitle
        self.reloadFun = reloadFun
        btnFavourite.setImage(UIImage(systemName: "heart"), for: .normal)
        if(movieData.isFavourite){
            btnFavourite.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }

        ivImage.kf.setImage(with:  URL(string: movieData.movieImage))
       
    }
    
    @IBAction func setFavourite(){
        if(!movie!.isFavourite){
            FavouriteMoviewDataSource.shared.saveMovieId(id: movie!.id )
        }else{
            FavouriteMoviewDataSource.shared.deleteFavMovies(id: movie!.id )
        }
        if(reloadFun != nil){
            reloadFun!()
            print("Reload")
        }
    }
}
