//
//  DatosViewController.swift
//  project_module_01
//
//  Created by Alexander Choy on 18/02/17.
//  Copyright © 2017 Alexander Choy. All rights reserved.
//

import UIKit

class DatosViewController: UIViewController {
    
    @IBOutlet weak var txtDias: UITextField!
    
    @IBOutlet weak var txtHoras: UITextField!

    @IBOutlet weak var sldDificultad: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtDias.isUserInteractionEnabled = false
        txtHoras.isUserInteractionEnabled = false
        sldDificultad.isUserInteractionEnabled = false

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
    
    @IBAction func sgTurnoSelected(_ sender: UISegmentedControl) {
        
        let turnoselected = sender.selectedSegmentIndex
        
        switch turnoselected {
        case 0:
            txtHoras.placeholder = "10:00 a 13:00"
        default:
            txtHoras.placeholder = "19:00 a 22:00"
        }
        
    }
    

}
