//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Özge Poyraz on 4.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var isJames = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePicture))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func changePicture(){
        
        if isJames == true{
            imageView.image = UIImage(named: "metallica")
            label.text = "Metallica"
            isJames = false
        }else{
            imageView.image = UIImage(named: "james")
            label.text = "James Hetfield"
            isJames = true
        }

    }
    
}

