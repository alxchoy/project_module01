//
//  ModulosViewController.swift
//  project_module_01
//
//  Created by Alexander Choy on 18/02/17.
//  Copyright © 2017 Alexander Choy. All rights reserved.
//

import UIKit

class ModulosViewController: UIViewController {
    
    var parametro: String?
    var color: UIColor?
    
    @IBOutlet weak var lblFirstModule: UILabel!
    
    @IBOutlet weak var lblSecondModule: UILabel!
    
    @IBOutlet weak var lblThirdModule: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func btnFirstTouch(_ sender: UIButton) {
        
        parametro = lblFirstModule.text
        color = UIColor(red: 15/255.0, green: 40/255.0, blue: 143/255.0, alpha: 1)
        self.performSegue(withIdentifier: "moduleDisplay", sender: sender)
    }
    
    
    @IBAction func btnSecondTouch(_ sender: UIButton) {
        
        parametro = lblSecondModule.text
        color = UIColor(red: 0, green: 122/255.0, blue: 1, alpha: 1)
        self.performSegue(withIdentifier: "moduleDisplay", sender: sender)
    }
    
    
    @IBAction func btnThirdTouch(_ sender: UIButton) {
        
        parametro = lblThirdModule.text
        color = UIColor(red: 49/255.0, green: 185/255.0, blue: 1, alpha: 1)
        self.performSegue(withIdentifier: "moduleDisplay", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let mostrarViewController: MostrarViewController = segue.destination as! MostrarViewController
        
        mostrarViewController.parametro = parametro
        mostrarViewController.color = color
    }
    
}
