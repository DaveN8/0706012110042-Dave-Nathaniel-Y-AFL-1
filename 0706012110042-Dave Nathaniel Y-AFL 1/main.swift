//
//  main.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation



//class main{
    var userInput: String = ""
    var userInput2: Int = 0
    var cart: [(String, String, Int)] = []
    var total: Int = 0
//    let nama_toko: [String] = ["Tuku-Tuku", "GoTri", "Madam Lie", "Kopte", "Raburi"]
//    let menuhuy1: [(String, Int)] = [("Tahu Isi", 20000), ("Nasi Kuning", 16000), ("Nasi Campur", 14000), ("Air Mineral", 12000)]
//    let menuhuy2: [(String, Int)] = [("Nasi Bakar Rendang", 28000), ("Nasi Bakar Kare", 28000), ("Nasi Bakar Tuna", 28000), ("Nasi Bakar Cabe Hijau", 28000)]
//    let menuhuy3: [(String, Int)] = [("Martabak Telur", 20000), ("Martabak Mesir", 25000), ("Martabak Bangka", 30000), ("Martabak Spesial", 35000)]
//    let menuhuy4: [(String, Int)] = [("Kopi Tarik Kopte", 13000), ("Kopi Tarik Cincau", 14000), ("Kopi Teh Tarik", 15000), ("Kopi Coklat Tarik", 16000)]
//    let menuhuy5: [(String, Int)] = [("Kare", 30000), ("Ramen", 33000), ("Sushi", 31000), ("Teh Pucuk", 8000)]
    
    
    
mainScreen().firstscreen()

struct mainScreen {
    func firstscreen(){
        print("""
        Welcome to UC Cafetaria👩‍🍳🧑‍🍳
        Please choose cafetaria:
        
        """)
        
        var nomor: Int = 0
        for towko in toko().nama_toko{
            nomor += 1
            print("[\(nomor)] \(towko)")
        }
        
        print("""
        -
        [S]hopping cart
        [Q]uit
        Your cafetaria choice?
        """, terminator: " ")
        
        userInput = readLine()!.lowercased()
        print()
        
        switch userInput {
        case "q" :
            exit(0)
        case "1" :
            daftarMenu().menu(toko: toko().nama_toko[(Int(userInput) ?? 0)-1])
        case "2" :
            daftarMenu().menu(toko: toko().nama_toko[(Int(userInput) ?? 0)-1])
        case "3" :
            daftarMenu().menu(toko: toko().nama_toko[(Int(userInput) ?? 0)-1])
        case "4" :
            daftarMenu().menu(toko: toko().nama_toko[(Int(userInput) ?? 0)-1])
        case "5" :
            daftarMenu().menu(toko: toko().nama_toko[(Int(userInput) ?? 0)-1])
        case "s" :
            keranjang().cartuhuy()
        default:
            firstscreen()
        }
    }
}
    
    
//    func menu(toko: String){
//        print("Hi, Welcome to \(toko)!")
//        print("What would you like to order?")
//        print()
//        
//        if toko == "Tuku-Tuku"{
//            var nomor: Int = 0
//            for towko in menuhuy1{
//                nomor += 1
//                print("[\(nomor)] \(towko.0)")
//            }
//            
//        }else if toko == "GoTri"{
//            var nomor: Int = 0
//            for towko in menuhuy2{
//                nomor += 1
//                print("[\(nomor)] \(towko.0)")
//            }
//            
//        }else if toko == "Madam Lie"{
//            var nomor: Int = 0
//            for towko in menuhuy3{
//                nomor += 1
//                print("[\(nomor)] \(towko.0)")
//            }
//            
//        }else if toko == "Kopte"{
//            var nomor: Int = 0
//            for towko in menuhuy4{
//                nomor += 1
//                print("[\(nomor)] \(towko.0)")
//            }
//            
//        }else if toko == "Raburi"{
//            var nomor: Int = 0
//            for towko in menuhuy5{
//                nomor += 1
//                print("[\(nomor)] \(towko.0)")
//            }
//        }
//        
//        print("""
//        -
//        [B]ack to Main Menu
//        Your Menu Choice?
//        """, terminator: " ")
//        userInput = readLine()!.lowercased()
//        
//        switch userInput {
//        case "b" :
//            firstscreen()
//        case "1" :
//            orderscreen(inputan: Int(userInput) ?? 0, toko: toko)
//        case "2" :
//            orderscreen(inputan: Int(userInput) ?? 0, toko: toko)
//        case "3" :
//            orderscreen(inputan: Int(userInput) ?? 0, toko: toko)
//        case "4" :
//            orderscreen(inputan: Int(userInput) ?? 0, toko: toko)
//        default:
//            menu(toko: toko)
//        }
//    }
    
    //func orderFrom(index: Int)->Bool{
    //    for shop in cart{
    //        if shop.0 == nama_toko[index]{
    //            return true
    //        }
    //    }
    //    return false
    //}
    
//    func cartuhuy(){
//        if cart.isEmpty {
//            print("The Keranjang is Kosong")
//            print()
//        }else{
//            for i in 0..<nama_toko.count{
//                if cart.contains(where: {$0.0 == nama_toko[i]}) {
//                    print("""
//                      Your order from \(nama_toko[i]) :
//                      """)
//                }
//                for item in cart{
//                    if item.0 == nama_toko[i]{
//                        print("- \(item.1) X\(item.2)")
//                    }
//                }
//            }
//        }
//        print("""
//        Press [B] to go back
//        Press [P] to pay / checkout
//        Your choice?
//        """, terminator: " ")
//        userInput = readLine()!.lowercased()
//        print()
//        
//        switch userInput{
//        case "b" :
//            firstscreen()
//        case "p" :
//            if total != 0 {
//                //            payout()
//                bayar().payout()
//            }else{
//                print("There is nothing to pay")
//                print()
//                cartuhuy()
//            }
//        default:
//            print("Please Enter the Right Option")
//            print()
//            cartuhuy()
//        }
//    }
    
//}

//func payout(){
//
//    print("""
//          Your Total: \(total)
//          Please Enter The Amount of your Money:
//          """, terminator: " ")
//    userInput = readLine()!.lowercased()
//
//
//    if userInput == "" {
//        print("Please enter Your payment")
//        payout()
//    }else{
//        let amount: Int? = Int(userInput)
//        if amount != nil {
//            if amount == 0{
//                print("The Amount cannot be zero")
//                print()
//                payout()
//            }else if amount! < 0 {
//                print("Please enter the valid amount")
//                print()
//                payout()
//            }else if amount! > 0{
//                if amount! >= total{
//                    print("""
//                    Your total order: \(total)
//                    You Pay: \(amount!)
//                    your changes: \(amount!-total)
//
//                    Enjoy Your Meal
//
//                    """)
//                }else{
//                    print("Your Money Kurang Woi")
//                    print()
//                    payout()
//                }
//                repeat{
//                    print("Press [return] to go back to main screen")
//                    userInput = readLine()!.lowercased()
//                }while userInput != ""
//                cart.removeAll()
//                total = 0
//                print()
//                firstscreen()
//            }
//        }else{
//            print("Please enter the valid amount")
//            print()
//            payout()
//        }
//    }
//}


