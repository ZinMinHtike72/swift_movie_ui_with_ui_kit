//
//  HomeViewController.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/7/23.
//

import UIKit


class HomeViewController: UIViewController {
    @IBOutlet weak var  cvMovieList : UICollectionView!
    var movieList : [Movie] = []
    var favouriteMoviesId : [FavouriteMovies] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        cvMovieList.delegate = self
        cvMovieList.dataSource = self
        self.navigationItem.title = "Movies"
        setUpFavouriteMoviesCoreData()
        movieList  = movieDataSource

        // Do any additional setup after loading the view.
    }
    
    override func viewIsAppearing(_ animated: Bool) {
        getFavMoviesAndReloadCollectionView()
    }
    
    func setUpFavouriteMoviesCoreData(){
        FavouriteMoviewDataSource.shared.initCoreDataStack()
        FavouriteMoviewDataSource.shared.getAllFavouriteMovies()
    }
    
    func getFavMoviesAndReloadCollectionView(){
        favouriteMoviesId =   FavouriteMoviewDataSource.shared.getAllFavouriteMovies()
        cvMovieList.reloadData()
    }
    
    
    
    
    
}
    



extension HomeViewController : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
        cell.ivImage.layer.cornerRadius = 20
        var movie =  movieList[indexPath.row]
        movie.isFavourite = favouriteMoviesId.contains{$0.id == movie.id}
        
        cell.setData(movieData: movie,reloadFun: self.getFavMoviesAndReloadCollectionView )
        return  cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (self.view.frame.width / 2.2) , height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        detailsViewController.movie = movieList[indexPath.row]
        self.navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
}

