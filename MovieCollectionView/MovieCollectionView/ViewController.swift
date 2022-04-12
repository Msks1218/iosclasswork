//
//  ViewController.swift
//  MovieCollectionView
//
//  Created by Manavarthi,Sanjay Krishna on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //to count No of mOvies
        return movies.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "Moviecell", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignedmovie(_movies: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            TitleOutlet.text = "Movie title: \(movies[indexPath.row].title)"
            YearReleasedOutlet.text = "Year Released: \(movies[indexPath.row].releasedYear)"
            RatingsOutlet.text = "Ratings: \(movies[indexPath.row].movieRating)"
            CollectionOutlet.text = "Revenue: \(movies[indexPath.row].boxOffice)"
        }
    

    @IBOutlet weak var CollectionViewOutlet: UICollectionView!

    @IBOutlet weak var CollectionOutlet: UILabel!
    
    @IBOutlet weak var RatingsOutlet: UILabel!
    
    @IBOutlet weak var TitleOutlet: UILabel!
    
    @IBOutlet weak var YearReleasedOutlet: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
    }


}

