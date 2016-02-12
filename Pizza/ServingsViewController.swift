//
//  CocinarViewController.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/3/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class ServingsViewController: UIViewController {
    var final = Dictionary<String, String>()
    var ingredientes : Int = 0
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var jamonLabel: UILabel!
    @IBOutlet weak var peperoniLabel: UILabel!
    @IBOutlet weak var pavoLabel: UILabel!
    @IBOutlet weak var salchichasLabel: UILabel!
    @IBOutlet weak var aceitunaLabel: UILabel!
    
    @IBOutlet weak var jamon: UIStepper!
    @IBOutlet weak var pepperoni: UIStepper!
    @IBOutlet weak var pavo: UIStepper!
    @IBOutlet weak var salchicha: UIStepper!
    @IBOutlet weak var aceituna: UIStepper!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        jamon.maximumValue = 4
        pepperoni.maximumValue = 4
        pavo.maximumValue = 4
        salchicha.maximumValue = 4
        aceituna.maximumValue = 4

        self.navigationItem.title = "Raciones"
        print("Ingredientes: \(final)")
    }
    
    @IBAction func incrementCountJamon(sender: AnyObject) {
        let stepControl : UIStepper = sender as! UIStepper
        self.jamonLabel.text = Int(stepControl.value).description
    }
    
    @IBAction func incrementCountPepperoni(sender: AnyObject) {
        let stepControl : UIStepper = sender as! UIStepper
         self.peperoniLabel.text = Int(stepControl.value).description
    }
    
    @IBAction func incrementCountPavo(sender: AnyObject) {
        let stepControl : UIStepper = sender as! UIStepper
        self.pavoLabel.text = Int(stepControl.value).description
    }
    
    @IBAction func incrementCountSalchicha(sender: AnyObject) {
        let stepControl : UIStepper = sender as! UIStepper
        self.salchichasLabel.text = Int(stepControl.value).description
    }
    
    @IBAction func incrementCountAceituna(sender: AnyObject) {
        let stepControl : UIStepper = sender as! UIStepper
        self.aceitunaLabel.text = Int(stepControl.value).description
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! CookViewController
        
        if (self.jamonLabel.text! != "0" || self.peperoniLabel.text! != "0" || self.pavoLabel.text! != "0" || self.salchichasLabel.text! != "0" || self.aceitunaLabel.text! != "0"){
            final ["Jamón"]  = self.jamonLabel.text
            final ["Pepperoni"] = self.peperoniLabel.text
            final ["Pavo"] = self.pavoLabel.text
            final ["Salchicha"] = self.salchichasLabel.text
            final ["Aceituna"] = self.aceitunaLabel.text
        } else {
            sigVista.mensaje = "Sin ingredientes"
        }
        
        sigVista.pizzaLista = final
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
