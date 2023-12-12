//
//  DetailsViewController.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/7/23.
//

import UIKit
import Kingfisher

class DetailsViewController: UIViewController {
    @IBOutlet weak var ivMovie : UIImageView!
    @IBOutlet weak var lblTitle : UILabel!
    @IBOutlet weak var cvCastList : UICollectionView!
    @IBOutlet weak var lblDirectorName : UILabel!
    @IBOutlet weak var vRatingContainer : UIView!
    @IBOutlet weak var lblGenre : UILabel!
    @IBOutlet weak var lblReleaseAndDuration : UILabel!
    var castList : [String] = []
    var movie : Movie?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = movie!.movieTitle
        setCollectionViewDelegate()
        setCastList()
        setRating()
        self.navigationController?.navigationBar.tintColor = .blue
        ivMovie.kf.setImage(with: URL(string: movie!.movieImage))
        lblTitle.text = movie!.movieTitle
        lblDirectorName.text = "Director - \(movie!.movieDirector)"
        lblGenre.text = "Genre - \(movie!.genre)"
        lblReleaseAndDuration.text = "\(movie!.movieYear) (\(movie!.movieRuntime))"
       
    }
    
    func setRating(){
        for i in 0..<Int(movie!.rating){
            let ratingImage = UIImageView()
            ratingImage.image = UIImage(named: "star")
            ratingImage.frame = CGRect(x: i * 23, y: 0, width: 20, height: 20)
            vRatingContainer.addSubview(ratingImage)
        }
        
       
      
       
    }
    
    func setCastList(){
        for i in movie!.movieActors.split(separator:","){
            castList.append(String(i))
        }
    }
    
    func setCollectionViewDelegate(){
        cvCastList.delegate = self
        cvCastList.dataSource = self
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

extension DetailsViewController : UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return castList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CastCollectionViewCell", for: indexPath) as! CastCollectionViewCell
        cell.setUiAndData(castName: castList[indexPath.row])
        return cell
    }
}
