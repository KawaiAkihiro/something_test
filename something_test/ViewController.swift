//
//  ViewController.swift
//  something_test
//
//  Created by 河合彰紘 on 2021/10/26.
//  Copyright © 2021 河合彰紘. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var nameField: UITextField!
    
    @IBAction func btnSend(_ sender: UIButton) {
        mainLabel.text = "Hello " + nameField.text!
    }
    
    @IBAction func nextBtn(_ sender: UIButton) {
        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "NextView") as! NextViewController
        
        nextViewController.modalPresentationStyle = .fullScreen
        nextViewController.reciever = "Hello! \(nameField.text!)"
        
        self.present(nextViewController, animated: false, completion: nil)
    }
    
    @IBAction func segueNextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "nextSegue", sender: nil)
    }
    
}

