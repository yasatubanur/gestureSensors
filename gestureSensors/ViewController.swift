//
//  ViewController.swift
//  gestureSensors
//
//  Created by Tuba Nur YAŞA on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var label: UILabel!
    
    
        var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    @objc func changeImage() {
        if ankara == false {
            imageView.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        } else {
            imageView.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            ankara = false
        }
    }

}

