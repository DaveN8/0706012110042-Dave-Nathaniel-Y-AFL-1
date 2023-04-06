//
//  CheckOut.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

class bayar: order{
    func payout(){
        
        print("""
              Your Total: \(total)
              Please Enter The Amount of your Money:
              """, terminator: " ")
        userInput = readLine()!.lowercased()
        
        
        if userInput == "" {
            print("Please enter Your payment")
            payout()
        }else{
            let amount: Int? = Int(userInput)
            if amount != nil {
                if amount == 0{
                    print("The Amount cannot be zero")
                    print()
                    payout()
                }else if amount! < 0 {
                    print("Please enter the valid amount")
                    print()
                    payout()
                }else if amount! > 0{
                    if amount! >= total{
                        print("""
                        Your total order: \(total)
                        You Pay: \(amount!)
                        your changes: \(amount!-total)
                        
                        Enjoy Your Meal
                        
                        """)
                    }else{
                        print("Your Money Kurang Woi")
                        print()
                        payout()
                    }
                    repeat{
                        print("Press [return] to go back to main screen")
                        userInput = readLine()!.lowercased()
                    }while userInput != ""
                    cart.removeAll()
                    resetTotal()
                    print()
                    mainScreen().firstscreen()
                }
            }else{
                print("Please enter the valid amount")
                print()
                payout()
            }
        }
    }

}
