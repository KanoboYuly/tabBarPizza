//
//  ListaViewController.swift
//  Pizza
//
//  Created by Yuly Espinoza on 2/3/16.
//  Copyright © 2016 YE. All rights reserved.
//

import UIKit

class CookViewController: UIViewController {
    @IBOutlet weak var labelCook: UILabel!
    
    @IBOutlet weak var imageCook: UIImageView!
    var pizaLista = Dictionary<String, String>()
    @IBOutlet weak var backTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Cocinar"
        print("La pizza está lista, estos son los ingredientes: \(pizaLista)")
        // Do any additional setup after loading the view.
        
        let alert = UIAlertController(title: "Confirmar", message: "¿Está usted seguro de los ingredienrtes para la preparación de su pizza?", preferredStyle: UIAlertControllerStyle.Alert)
        
        func back(alert: UIAlertAction!) { //["Pepperoni": "1", "Aceituna": "0", "Pavo": "1", "Pizza": "Small", "Masa": "Crujiente", "Salchicha": "0", "Queso": "Sin queso", "Jamón": "1"]
           backTextView.text = "Puede regresar y cambiar los ingredientes de su pizza: \n\t 1. Pizza: \n  \(pizaLista["Pizza"]!) \n\t 2. Masa: \(pizaLista["Masa"]!) \n\t 3. Queso: \(pizaLista["Queso"]!) \n\t 4. Raciones: \n\t\t * Jamón: \(pizaLista["Jamón"]!) \n\t\t * Aceituna: \(pizaLista["Aceituna"]!) \n\t\t * Pepperoni: \(pizaLista["Pepperoni"]!)  \n\t\t * Pavo: \(pizaLista["Pavo"]!)  \n\t\t * Salchicha: \(pizaLista["Salchicha"]!) "
           backTextView.editable = false
        }
        
        func cookPizza(alert: UIAlertAction!) {
            print("Pizza")
            labelCook.text = "Su Pizza  \(pizaLista["Pizza"]!) fue enviada a la cocina."
            labelCook.numberOfLines = 2
            labelCook.adjustsFontSizeToFitWidth = true
            imageCook.image = UIImage(named: "cocinar")
            
        }

        alert.addAction(UIAlertAction(title: "Si", style: UIAlertActionStyle.Default, handler: cookPizza))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Default, handler: back))
        
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
        

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
