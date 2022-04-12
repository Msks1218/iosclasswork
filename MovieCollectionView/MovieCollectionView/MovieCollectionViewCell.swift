//
//  MovieCollectionViewCell.swift
//  MovieCollectionView
//
//  Created by Manavarthi,Sanjay Krishna on 4/12/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    func assignedmovie(_movies : Movie){
        ImageViewOutlet.image = _movies.image
    }
}
