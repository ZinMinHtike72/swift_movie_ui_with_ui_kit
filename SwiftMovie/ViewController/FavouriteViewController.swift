//
//  FavouriteViewController.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/8/23.
//

import UIKit

class FavouriteViewController: UIViewController {
    @IBOutlet weak var tbFavouriteList : UITableView!
    var favouriteMovieList : [Movie] = []
    var favouriteMoviesId : [FavouriteMovies] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Favourite Movies"
        tbFavouriteList.delegate = self
        tbFavouriteList.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    override func viewIsAppearing(_ animated: Bool) {
        getFavMoviesIdANdFilterMovies()
    }
    
    func getFavMoviesIdANdFilterMovies(){
        favouriteMoviesId =   FavouriteMoviewDataSource.shared.getAllFavouriteMovies()
        filterMovie()
        tbFavouriteList.reloadData()
    }
    
    func filterMovie(){
        let movies : [Movie] = movieDataSource
        favouriteMovieList = movies.filter{movie in return favouriteMoviesId.contains{$0.id == movie.id}}
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension FavouriteViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favouriteMovieList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Collection View")
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
      
        cell.setData(movie: favouriteMovieList[indexPath.row],reloadFun: getFavMoviesIdANdFilterMovies)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        let detailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        detailsViewController.movie = favouriteMovieList[indexPath.row]
        self.navigationController?.pushViewController(detailsViewController, animated: true)
        return indexPath
    }
    
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}
