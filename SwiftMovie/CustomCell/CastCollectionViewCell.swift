//
//  CastCollectionViewCell.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/8/23.
//

import UIKit
import Kingfisher

class CastCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ivCastImage : UIImageView!
    @IBOutlet weak var lblCastName : UILabel!
    
    func setUiAndData(castName : String){
        ivCastImage.kf.setImage(with:  URL(string: "https://xsgames.co/randomusers/avatar.php?g=pixel"))
        ivCastImage.layer.cornerRadius = 40
        lblCastName.text = castName
    }
}
