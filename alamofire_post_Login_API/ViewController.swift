//
//  ViewController.swift
//  alamofire_post_Login_API
//
//  Created by codemac-012i on 11/05/18.
//  Copyright © 2018 codemac-012i. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var loglabel: UILabel!
    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var pass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loginpost(){
    //let url = URL(string: "http://attapp.appcyan.com/api/validate")
        let nm = [
            "username" : user.text,   /* there parameters must be the keys that are provided in the api arrays */
            "password" : pass.text
        
        ]
        Alamofire.request("http://attapp.appcyan.com/api/validate", method: .post, parameters: nm, encoding: JSONEncoding.default, headers: nil).responseJSON { (respoo) in
            print(respoo.result.value)
        }
        
       }
    
    
    
    @IBAction func login(_ sender: Any) {
        
        loginpost() /*calling the function bcos, we have to perform the posing functions when we are clicking on the button*/
    }
    
}








