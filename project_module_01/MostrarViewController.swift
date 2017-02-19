//
//  MostrarViewController.swift
//  project_module_01
//
//  Created by Alexander Choy on 19/02/17.
//  Copyright © 2017 Alexander Choy. All rights reserved.
//

import UIKit

class MostrarViewController: UIViewController {
    
    var parametro: String?
    var color: UIColor?
    
    @IBOutlet weak var txtMostrar: UILabel!

    @IBOutlet var vista: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtMostrar.text = parametro
        vista.backgroundColor = color
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
