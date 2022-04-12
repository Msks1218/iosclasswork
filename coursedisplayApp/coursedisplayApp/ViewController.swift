//
//  ViewController.swift
//  coursedisplayApp
//
//  Created by Manavarthi,Sanjay Krishna on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayimage: UIImageView!
    
    @IBOutlet weak var crsnum: UILabel!
    
    
    @IBOutlet weak var crstitle: UILabel!
    
    
    @IBOutlet weak var crssem: UILabel!
    
    @IBOutlet weak var previousbutton: UIButton!
    
    @IBOutlet weak var nextbutton: UIButton!
    
    let courses = [["img01","44555","network security","Fall 2022"],["img02","44656","mobile computing","fall 2022"],["img03","45678","data science","Fall2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // load the first course details image course number title and sem offerred
        displayimage.image = UIImage(named:courses[0][0])
        crsnum.text=courses[0][1]
        crstitle.text=courses[0][2]
        crssem.text=courses[0][3]
        updateUI(imageNumber)
        // previouse buttton should be disable
        previousbutton.isEnabled=false
    }

    @IBAction func previousbtnclk(_ sender: UIButton) {
        //next button should be enabled
        nextbutton.isEnabled=true
        //updateUi
        imageNumber-=1
        updateUI(imageNumber)
        //when the course position is at 0 next button should be dissabled
        if(imageNumber==0){
            previousbutton.isEnabled=false
        }
    }
    
    @IBAction func nextbtnclk(_ sender: UIButton) {
        //update the UI
        imageNumber+=1
        updateUI(imageNumber)
        //previous button should be enabled
        previousbutton.isEnabled=true
        //once you resch the end of an aray next button should be dissabled
        if(imageNumber==courses.count-1){
            nextbutton.isEnabled=false
        }
    }
    
    
    func updateUI(_ imageNumber: Int){
        displayimage.image = UIImage(named:courses[imageNumber][0])
        crsnum.text=courses[imageNumber][1]
        crstitle.text=courses[imageNumber][2]
        crssem.text=courses[imageNumber][3]
        
    }
}

