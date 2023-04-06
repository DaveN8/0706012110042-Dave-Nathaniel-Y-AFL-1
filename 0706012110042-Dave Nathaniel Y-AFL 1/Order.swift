//
//  Order.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

protocol pesan{
    func orderScreen(inputan: Int, toko: String)
}

class order: pesan {
    
//    init(_ total: Int) {
//        self.total = total
//    }
    
    func tambahTotal(totall: Int){
        total += totall
    }
    
    func resetTotal(){
        total = 0
    }
    
    func orderScreen(inputan: Int, toko: String) {
        if toko == "Tuku-Tuku"{
            print("\(daftarMenu().menuhuy1[inputan-1].0) @ \(daftarMenu().menuhuy1[inputan-1].1)")
            print("How many \(daftarMenu().menuhuy1[inputan-1].0) you want to buy?", terminator: " ")
            userInput = readLine()!
            
            if (Int(userInput) ?? 0 > 0){
                let jumlah: Int = Int(userInput) ?? 0
                for (index, check) in cart.enumerated() {
                    if check.1 == daftarMenu().menuhuy1[inputan-1].0{
                        let temp: Int = check.2 + jumlah
                        cart.remove(at: index)
                        cart.append((toko, daftarMenu().menuhuy1[inputan-1].0, temp))
                        print("ThankYou for Ordering")
                        
                        tambahTotal(totall: (daftarMenu().menuhuy1[inputan-1].1 * (Int(userInput) ?? 0)))
                        daftarMenu().menu(toko: toko)
                    }
                }
                
                cart.append((toko, daftarMenu().menuhuy1[inputan-1].0, jumlah))
                
                tambahTotal(totall: (daftarMenu().menuhuy1[inputan-1].1 * (Int(userInput) ?? 0)))
                
                print()
                print("ThankYou for Ordering")
                
                daftarMenu().menu(toko: toko)
                
            }else{
                print("Please Enter The Right Amount!")
                orderScreen(inputan: inputan, toko: toko)
            }
            
        }else if toko == "GoTri"{
            print("\(daftarMenu().menuhuy2[inputan-1].0) @ \(daftarMenu().menuhuy2[inputan-1].1)")
            print("How many \(daftarMenu().menuhuy2[inputan-1].0) you want to buy?", terminator: " ")
            userInput = readLine()!
            
            if (Int(userInput) ?? 0 > 0){
                let jumlah: Int = Int(userInput) ?? 0
                for (index, check) in cart.enumerated() {
                    if check.1 == daftarMenu().menuhuy2[inputan-1].0{
                        let temp: Int = check.2 + jumlah
                        cart.remove(at: index)
                        cart.append((toko, daftarMenu().menuhuy2[inputan-1].0, temp))
                        print("ThankYou for Ordering")
                        
                        total += (daftarMenu().menuhuy2[inputan-1].1 * (Int(userInput) ?? 0))
                        daftarMenu().menu(toko: toko)
                    }
                }
                cart.append((toko, daftarMenu().menuhuy2[inputan-1].0, jumlah))
                
                print("ThankYou for Ordering")
                
                tambahTotal(totall: (daftarMenu().menuhuy2[inputan-1].1 * (Int(userInput) ?? 0)))
                print()
                daftarMenu().menu(toko: toko)
            }else{
                print("Please Enter The Right Amount!")
                orderScreen(inputan: inputan, toko: toko)
            }
            
        }else if toko == "Madam Lie"{
            print("\(daftarMenu().menuhuy3[inputan-1].0) @ \(daftarMenu().menuhuy3[inputan-1].1)")
            print("How many \(daftarMenu().menuhuy3[inputan-1].0) you want to buy?", terminator: " ")
            userInput = readLine()!
            
            if (Int(userInput) ?? 0 > 0){
                let jumlah: Int = Int(userInput) ?? 0
                for (index, check) in cart.enumerated() {
                    if check.1 == daftarMenu().menuhuy3[inputan-1].0{
                        let temp: Int = check.2 + jumlah
                        cart.remove(at: index)
                        cart.append((toko, daftarMenu().menuhuy3[inputan-1].0, temp))
                        print("ThankYou for Ordering")
                        
                        tambahTotal(totall: (daftarMenu().menuhuy3[inputan-1].1 * (Int(userInput) ?? 0)))
                        daftarMenu().menu(toko: toko)                    }
                }
                cart.append((toko, daftarMenu().menuhuy3[inputan-1].0, jumlah))
                
                print("ThankYou for Ordering")
                
                tambahTotal(totall: (daftarMenu().menuhuy3[inputan-1].1 * (Int(userInput) ?? 0)))
                print()
                daftarMenu().menu(toko: toko)
            }else{
                print("Please Enter The Right Amount!")
                orderScreen(inputan: inputan, toko: toko)
            }
            
        }else if toko == "Kopte"{
            print("\(daftarMenu().menuhuy4[inputan-1].0) @ \(daftarMenu().menuhuy4[inputan-1].1)")
            print("How many \(daftarMenu().menuhuy4[inputan-1].0) you want to buy?", terminator: " ")
            userInput = readLine()!
            
            if (Int(userInput) ?? 0 > 0){
                let jumlah: Int = Int(userInput) ?? 0
                for (index, check) in cart.enumerated() {
                    if check.1 == daftarMenu().menuhuy4[inputan-1].0{
                        let temp: Int = check.2 + jumlah
                        cart.remove(at: index)
                        cart.append((toko, daftarMenu().menuhuy4[inputan-1].0, temp))
                        print("ThankYou for Ordering")
                        
                        tambahTotal(totall: (daftarMenu().menuhuy4[inputan-1].1 * (Int(userInput) ?? 0)))
                        daftarMenu().menu(toko: toko)
                    }
                }
                cart.append((toko, daftarMenu().menuhuy4[inputan-1].0, jumlah))
                
                print("ThankYou for Ordering")
                
                tambahTotal(totall: (daftarMenu().menuhuy4[inputan-1].1 * (Int(userInput) ?? 0)))
                print()
                daftarMenu().menu(toko: toko)
            }else{
                print("Please Enter The Right Amount!")
                orderScreen(inputan: inputan, toko: toko)
            }
            
        }else if toko == "Raburi"{
            print("\(daftarMenu().menuhuy5[inputan-1].0) @ \(daftarMenu().menuhuy5[inputan-1].1)")
            print("How many \(daftarMenu().menuhuy5[inputan-1].0) you want to buy?", terminator: " ")
            userInput = readLine()!
            
            if (Int(userInput) ?? 0 > 0){
                let jumlah: Int = Int(userInput) ?? 0
                for (index, check) in cart.enumerated() {
                    if check.1 == daftarMenu().menuhuy5[inputan-1].0{
                        let temp: Int = check.2 + jumlah
                        cart.remove(at: index)
                        cart.append((toko, daftarMenu().menuhuy5[inputan-1].0, temp))
                        print("ThankYou for Ordering")
                        
                        tambahTotal(totall: (daftarMenu().menuhuy5[inputan-1].1 * (Int(userInput) ?? 0)))
                        daftarMenu().menu(toko: toko)
                    }
                }
                cart.append((toko, daftarMenu().menuhuy5[inputan-1].0, jumlah))
                
                print("ThankYou for Ordering")
                
                tambahTotal(totall: (daftarMenu().menuhuy5[inputan-1].1 * (Int(userInput) ?? 0)))
                print()
                daftarMenu().menu(toko: toko)
            }else{
                print("Please Enter The Right Amount!")
                orderScreen(inputan: inputan, toko: toko)
            }
        }
    }
    
}
