//
//  ViewController.swift
//  QRCodeGenrator
//
//  Created by Rajeev kumar singh on 8/18/17.
//  Copyright © 2017 TalentTrobe(India.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtFiles: UITextField!

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    @IBOutlet weak var imageView5: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func genrateQRCode(_ sender: Any) {
        
        txtFiles.resignFirstResponder()
        
        
        // default
        imageView1.image = {
            var qrCode = QRCode(txtFiles.text!)!
            qrCode.size = self.imageView1.bounds.size
            qrCode.errorCorrection = .High
            return qrCode.image
        }()
        
        // medium
        // purple
        imageView2.image = {
            var qrCode = QRCode(txtFiles.text!)!
            qrCode.size = self.imageView2.bounds.size
            qrCode.color = CIColor(rgba: "8e44ad")
            return qrCode.image
        }()
        
        // small
        // red (inverted)
        imageView3.image = {
            var qrCode = QRCode(txtFiles.text!)!
            qrCode.size = self.imageView3.bounds.size
            qrCode.color = CIColor(rgba: "fff")
            qrCode.backgroundColor = CIColor(rgba: "e74c3c")
            return qrCode.image
        }()
        
        // small
        // green
        imageView4.image = {
            var qrCode = QRCode(txtFiles.text!)!
            qrCode.size = self.imageView4.bounds.size
            qrCode.color = CIColor(rgba: "16a085")
            qrCode.backgroundColor = CIColor(rgba: "000")
            return qrCode.image
        }()
        
        // small
        // orange
        imageView5.image = {
            var qrCode = QRCode(txtFiles.text!)!
            qrCode.size = self.imageView5.bounds.size
            qrCode.color = CIColor(rgba: "c0392b")
            qrCode.backgroundColor = CIColor(rgba: "f1c40f")
            return qrCode.image
        }()
        
        
        // small
        // blue
        /*  imageViewSmall4.image = {
         var qrCode = QRCode("http://example.com")!
         qrCode.size = self.imageViewSmall1.bounds.size
         qrCode.color = CIColor(rgba: "2980b9")
         return qrCode.image
         }()*/

        
        
    }
}

