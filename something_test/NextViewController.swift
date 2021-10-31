//
//  NextViewController.swift
//  something_test
//
//  Created by 河合彰紘 on 2021/10/28.
//  Copyright © 2021 河合彰紘. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var reciever = "";
    @IBOutlet var resultText: UILabel!{
        didSet{
            resultText.text = reciever
        }
    }
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        let prevViewController = self.storyboard?.instantiateViewController(withIdentifier: "View") as! ViewController
        
        prevViewController.modalPresentationStyle = .fullScreen
        
        self.present(prevViewController, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
