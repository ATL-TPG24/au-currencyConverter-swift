//
//  CurrencyConverterViewController.swift
//  currencyConverter
//
//  Created by Tony Giamboy on 2/18/23.
//

import UIKit

class CurrencyConverterViewController: UIViewController {

    @IBOutlet weak var amountEntered: UILabel!

    @IBOutlet weak var pesoText: UILabel!
    
    @IBOutlet weak var euroText: UILabel!
    
    @IBOutlet weak var francText: UILabel!
    
    @IBOutlet weak var cadText: UILabel!
    
    
    
    
    var logic = ConvertLogic()
    
    var usdAmount = ""
    var pesoConverted = ""
    var euroConverted = ""
    var francConverted = ""
    var cadConverted = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        amountEntered.text = "USD: $ \(usdAmount)"
                
                let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: usdAmount))
                
                if character {
                    
                    if pesoConverted == "0" {
                        pesoText.isHidden = true
                        
                    } else {
                        pesoText.text = "Mexican Pesos: \(pesoConverted)"
                    }
                    
                    if euroConverted == "0" {
                        euroText.isHidden = true
                    } else {
                        euroText.text = "European Euros: \(euroConverted)"
                    }
                    
                    if francConverted == "0" {
                        francText.isHidden = true
                    } else {
                        francText.text = "Swiss Franc: \(francConverted)"
                    }
                    
                    if cadConverted == "0" {
                        cadText.isHidden = true
                    } else {
                        cadText.text = "Canadian Dollar: \(cadConverted)"
                    }
                } else {
                    amountEntered.text = "Incorrect Input! Integers only."
                    pesoText.isHidden = true
                    euroText.isHidden = true
                    francText.isHidden = true
                    cadText.isHidden = true
                }
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
