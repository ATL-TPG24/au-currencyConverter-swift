//
//  ConvertLogic.swift
//  currencyConverter
//
//  Created by Tony Giamboy on 2/18/23.
//

import Foundation

struct ConvertLogic {
    
    var currencyOneSwitch = true
    var currencyTwoSwitch = true
    var currencyThreeSwitch = true
    var currencyFourSwitch = true
       
    var peso = 18.69
    var euro = 0.937
    var franc = 0.925
    var cad = 1.337
    
    
    mutating func setPeso(_ switchValue: Bool) {
           if switchValue {
               currencyOneSwitch = true
           } else {
               currencyOneSwitch = false
           }
       }
       
       mutating func setEuro(_ switchValue: Bool) {
           if switchValue {
               currencyTwoSwitch = true
           } else {
               currencyTwoSwitch = false
           }
       }
       
       mutating func setFranc(_ switchValue: Bool) {
           if switchValue {
               currencyThreeSwitch = true
           } else {
               currencyThreeSwitch = false
           }
       }
       
       mutating func setCAD(_ switchValue: Bool) {
           if switchValue {
               currencyFourSwitch = true
           } else {
               currencyFourSwitch = false
           }
       }

       func usdToEuro(_ userInput: String) -> String {
           let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
           if userInput != "" && character {
               let usd = Double(userInput)!
               let value = usd * Double(peso)
               let doubleStr = String(format: "%.2f", value)
               return doubleStr
           } else {
               return "0"
           }
       }

       func usdToFranc(_ userInput: String) -> String {
           let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
           if userInput != "" && character {
               let usd = Double(userInput)!
               let value = usd * Double(euro)
               let doubleStr = String(format: "%.2f", value)
               return doubleStr
           } else {
               return "0"
           }
       }

       func usdToCAD(_ userInput: String) -> String {
           let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
           if userInput != "" && character {
               let usd = Double(userInput)!
               let value = usd * Double(franc)
               let doubleStr = String(format: "%.2f", value)
               return doubleStr
           } else {
               return "0"
           }
       }

       func usdToPeso(_ userInput: String) -> String {
           let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
           if userInput != "" && character {
               let usd = Double(userInput)!
               let value = usd * Double(cad)
               let doubleStr = String(format: "%.2f", value)
               return doubleStr
           } else {
               return "0"
           }
       }
}
