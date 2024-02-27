//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Nigar Alaskarova on 07.02.24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isMountain = true
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic() {
        if isMountain == true {
            imageView.image = UIImage(named: "sea")
            myLabel.text = "Sea"
            isMountain = false
        } else {
            imageView.image = UIImage(named: "mountains")
            myLabel.text = "Mountain"
            isMountain = true
        }
    }
}
