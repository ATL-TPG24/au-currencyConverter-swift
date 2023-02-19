//
//  ViewController.swift
//  currencyConverter
//
//  Created by Tony Giamboy on 2/18/23.
//

import UIKit

class ViewController: UIViewController {
    
    var logic = ConvertLogic()
    
    var amount = ""
    var amountEntered = ""
    var euroString = ""
    var francString = ""
    var cadString = ""
    var pesoString = ""
    
    @IBOutlet weak var inputUSD: UITextField!
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
           guard NSCharacterSet(charactersIn: "0123456789").isSuperset(of: NSCharacterSet(charactersIn: string) as CharacterSet) else {
               return false
           }
           return true
       }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func inputUSD(_ sender: UITextField) {
    }
    
    @IBAction func currencyOne(_ sender: UISwitch) {
        logic.setPeso(sender.isOn)
    }
    
    @IBAction func currencyTwo(_ sender: UISwitch) {
        logic.setEuro(sender.isOn)
    }
    
    @IBAction func currencyThree(_ sender: UISwitch) {
        logic.setFranc(sender.isOn)
    }
    
    @IBAction func currencyFour(_ sender: UISwitch) {
        logic.setCAD(sender.isOn)
    }
    
    @IBAction func convertBtn(_ sender: UIButton) {
        let userInput = inputUSD.text
                
                if logic.currencyOneSwitch {
                    pesoString = logic.usdToPeso(userInput!)
                } else {
                    pesoString = "0"
                }
                
                if logic.currencyTwoSwitch {
                    euroString = logic.usdToEuro(userInput!)
                } else {
                    euroString = "0"
                }

                if logic.currencyThreeSwitch {
                    francString = logic.usdToFranc(userInput!)
                } else {
                    francString = "0"
                }

                if logic.currencyFourSwitch {
                    cadString = logic.usdToCAD(userInput!)
                } else {
                    cadString = "0"
                }
                
                self.performSegue(withIdentifier: "toConversion", sender: self)
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                if segue.identifier == "toConversion" {
                    let navigation = segue.destination as! CurrencyConverterViewController
                    navigation.usdAmount = inputUSD.text!
                    navigation.pesoConverted = euroString
                    navigation.euroConverted = francString
                    navigation.francConverted = cadString
                    navigation.cadConverted = pesoString
                }
            }
    }
    
    
    


