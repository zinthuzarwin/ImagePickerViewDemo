//
//  ViewController.swift
//  imgaePickerViewDemo
//
//  Created by Zin Thuzar Win on 7/28/19.
//  Copyright © 2019 Zin Thuzar Win. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
     var imagePicker: ImagePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
         self.imagePicker = ImagePicker(presentationController: self, delegate: self)
    }

    @IBAction func showImagePicker(_ sender: UIButton) {
        
        self.imagePicker.present(from: sender)

    }
    
}

extension ViewController: ImagePickerDelegate {
    
    func didSelect(image: UIImage?) {
        self.imageView.image = image
    }
    
}
