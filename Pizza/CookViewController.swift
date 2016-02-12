
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
var mensaje : String = " "
@IBOutlet weak var imageCook: UIImageView!
var pizzaLista = Dictionary<String, String>()
@IBOutlet weak var backTextView: UITextView!

override func viewDidLoad() {
super.viewDidLoad()
self.navigationItem.title = "Cocinar"
print("La pizza está lista, estos son los ingredientes: \(pizzaLista)")
    // Do any additional setup after loading the view.

    print("Mensajes = \(mensaje)")

    if mensaje != "Sin ingredientes" {
        let alert = UIAlertController(title: "Confirmar", message: "¿Está usted seguro de los ingredientes para la preparación de su pizza?", preferredStyle: UIAlertControllerStyle.Alert)

        func back(alert: UIAlertAction!) {
            backTextView.text = "Puede regresar y cambiar los ingredientes de su pizza: \n\t 1. Tamaño: \(pizzaLista["Pizza"]!) \n\t 2. Masa: \(pizzaLista["Masa"]!) \n\t 3. Queso: \(pizzaLista["Queso"]!) \n\t 4. Raciones: \n\t\t * Jamón: \(pizzaLista["Jamón"]!) \n\t\t * Aceituna: \(pizzaLista["Aceituna"]!) \n\t\t * Pepperoni: \(pizzaLista["Pepperoni"]!)  \n\t\t * Pavo: \(pizzaLista["Pavo"]!)  \n\t\t * Salchicha: \(pizzaLista["Salchicha"]!)"
            backTextView.editable = false
        }

        func cookPizza(alert: UIAlertAction!) {
            labelCook.text = "Su Pizza  \(pizzaLista["Pizza"]!) fue enviada a la cocina."
            labelCook.numberOfLines = 2
            labelCook.adjustsFontSizeToFitWidth = true
            imageCook.image = UIImage(named: "cocinar")
        }

        alert.addAction(UIAlertAction(title: "Si", style: UIAlertActionStyle.Default, handler: cookPizza))
        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Default, handler: back))

        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    } else {

        let alert = UIAlertController(title: "Faltan ingredientes!", message: "Elige entre los siguientes: \n * Jamón \n * Aceituna \n * Pepperoni \n * Pavo \n * Salchicha", preferredStyle: UIAlertControllerStyle.Alert)

        func back(alert: UIAlertAction!) {
            backTextView.text = "Estos son los ingredientes que ha indicado en este momento: \n\t 1. Tamaño: \(pizzaLista["Pizza"]!) \n\t 2. Masa: \(pizzaLista["Masa"]!) \n\t 3. Queso: \(pizzaLista["Queso"]!)"
            backTextView.editable = false
        }

        alert.addAction(UIAlertAction(title: "No", style: UIAlertActionStyle.Default, handler: back))
        // show the alert
        self.presentViewController(alert, animated: true, completion: nil)
    }

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
