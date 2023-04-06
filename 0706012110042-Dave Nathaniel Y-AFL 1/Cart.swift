//
//  Cart.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

class keranjang: order {
    
    func cartuhuy(){
        if cart.isEmpty {
            print("The Keranjang is Kosong")
            print()
        }else{
            for i in 0..<toko().nama_toko.count{
                if cart.contains(where: {$0.0 == toko().nama_toko[i]}) {
                    print("""
                      Your order from \(toko().nama_toko[i]) :
                      """)
                }
                for item in cart{
                    if item.0 == toko().nama_toko[i]{
                        print("- \(item.1) X\(item.2)")
                    }
                }
            }
        }
        print()
        print("""
        Press [B] to go back
        Press [P] to pay / checkout
        Your choice?
        """, terminator: " ")
        userInput = readLine()!.lowercased()
        print()
        
        switch userInput{
        case "b" :
            mainScreen().firstscreen()
        case "p" :
            if total != 0 {
                //            payout()
                bayar().payout()
            }else{
                print("There is nothing to pay")
                print()
                cartuhuy()
            }
        default:
            print("Please Enter the Right Option")
            print()
            cartuhuy()
        }
    }
    
    
    
}
