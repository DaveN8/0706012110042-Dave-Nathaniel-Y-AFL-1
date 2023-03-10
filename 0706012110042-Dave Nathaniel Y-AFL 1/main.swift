//
//  main.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var userInput: String = ""
var userInput2: Int = 0
//var nama_food = ["Tahu Isi", "Nasi Kuning", "Nasi Campur", "Air Mineral"]
var nama_toko: [String] = ["Tuku-Tuku", "Gotri", "Madam Lie", "Kopte"]
var menuhuy1: [(String, Int)] = [("Tahu Isi", 20000), ("Nasi Kuning", 16000), ("Nasi Campur", 14000), ("Air Mineral", 12000)]
var menuhuy2: [(String, Int)] = [("Nasi Bakar Rendang", 28000), ("Nasi Bakar Kare", 28000), ("Nasi Bakar Tuna", 28000), ("Nasi Bakar Cabe Hijau", 28000)]
var menuhuy3: [(String, Int)] = [("Martabak Telur", 20000), ("Martabak Mesir", 25000), ("Martabak Bangka", 30000), ("Martabak Spesial", 35000)]
var menuhuy4: [(String, Int)] = [("Kopi Tarik Kopte", 13000), ("Kopi Tarik Cincau", 14000), ("Kopi Teh Tarik", 15000), ("Kopi Coklat Tarik", 16000)]
var cart1: [(String, String, Int)] = []
//var cart2: [Int] = []
//var harga_food = [20000, 16000, 14000, 12000]
var total: Int = 0

firstscreen()

func firstscreen(){
        print("""
Welcome to UC Cafetaria👩‍🍳🧑‍🍳
Please choose cafetaria:

""")
    var nomor: Int = 0
    for towko in nama_toko{
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
    
    switch userInput {
    case "q" :
        exit(0)
    case "1" :
        tukutuku(toko: nama_toko[(Int(userInput) ?? 0)-1])
    case "2" :
        gotri(toko: nama_toko[(Int(userInput) ?? 0)-1])
    case "3" :
        madamlie(toko: nama_toko[(Int(userInput) ?? 0)-1])
    case "4" :
        kopte(toko: nama_toko[(Int(userInput) ?? 0)-1])
    case "s" :
        cartuhuy()
    default:
        firstscreen()
    }
}

func orderscreen1(inputan: Int, toko: String){
    print("\(menuhuy1[inputan-1].0) @ \(menuhuy1[inputan-1].1)")
    print("How many \(menuhuy1[inputan-1].0) you want to buy?", terminator: " ")
    userInput = readLine()!
    if (Int(userInput) ?? 0 > 0){
        let jumlah: Int = Int(userInput) ?? 0
        cart1.append((toko, menuhuy1[inputan-1].0, jumlah))
        print("ThankYou for Ordering")
        total += (menuhuy1[inputan-1].1 * (Int(userInput) ?? 0))
        firstscreen()
    }else{
        tukutuku(toko: toko)
    }
}
func orderscreen2(inputan: Int, toko: String){
    print("\(menuhuy2[inputan-1].0) @ \(menuhuy2[inputan-1].1)")
    print("How many \(menuhuy2[inputan-1].0) you want to buy?", terminator: " ")
    userInput = readLine()!
    if (Int(userInput) ?? 0 > 0){
        let jumlah: Int = Int(userInput) ?? 0
        cart1.append((toko, menuhuy2[inputan-1].0, jumlah))
        print("ThankYou for Ordering")
        total += (menuhuy2[inputan-1].1 * (Int(userInput) ?? 0))
        firstscreen()
    }else{
        gotri(toko: toko)
    }
}
func orderscreen3(inputan: Int, toko: String){
    print("\(menuhuy3[inputan-1].0) @ \(menuhuy3[inputan-1].1)")
    print("How many \(menuhuy3[inputan-1].0) you want to buy?", terminator: " ")
    userInput = readLine()!
    if (Int(userInput) ?? 0 > 0){
        let jumlah: Int = Int(userInput) ?? 0
        cart1.append((toko, menuhuy3[inputan-1].0, jumlah))
        print("ThankYou for Ordering")
        total += (menuhuy3[inputan-1].1 * (Int(userInput) ?? 0))
        firstscreen()
    }else{
        madamlie(toko: toko)
    }
}
func orderscreen4(inputan: Int, toko: String){
    print("\(menuhuy4[inputan-1].0) @ \(menuhuy4[inputan-1].1)")
    print("How many \(menuhuy4[inputan-1].0) you want to buy?", terminator: " ")
    userInput = readLine()!
    if (Int(userInput) ?? 0 > 0){
        let jumlah: Int = Int(userInput) ?? 0
        cart1.append((toko, menuhuy4[inputan-1].0, jumlah))
        print("ThankYou for Ordering")
        total += (menuhuy4[inputan-1].1 * (Int(userInput) ?? 0))
        firstscreen()
    }else{
        kopte(toko: toko)
    }
}

func tukutuku(toko: String){
    print("""
Hi, Welcome to Tuku-Tuku!
What would you like to order?

""")
    
    var nomor: Int = 0
    for towko in menuhuy1{
        nomor += 1
        print("[\(nomor)] \(towko.0)")
    }
    
    print("""
-
[B]ack to Main Menu
Your Menu Choice?
""", terminator: " ")
    
    userInput = readLine()!.lowercased()
    
    switch userInput {
    case "b" :
        firstscreen()
    case "1" :
        orderscreen1(inputan: Int(userInput) ?? 0, toko: toko)
    case "2" :
        orderscreen1(inputan: Int(userInput) ?? 0, toko: toko)
    case "3" :
        orderscreen1(inputan: Int(userInput) ?? 0, toko: toko)
    case "4" :
        orderscreen1(inputan: Int(userInput) ?? 0, toko: toko)
    default:
        tukutuku(toko: toko)
    }
}

func gotri(toko: String){
    print("""
Hi, Welcome to GoTri!
What would you like to order?

""")
    
    var nomor: Int = 0
    for towko in menuhuy2{
        nomor += 1
        print("[\(nomor)] \(towko.0)")
    }
    
    print("""
-
[B]ack to Main Menu
Your Menu Choice?
""", terminator: " ")
    
    userInput = readLine()!.lowercased()
    
    switch userInput {
    case "b" :
        firstscreen()
    case "1" :
        orderscreen2(inputan: Int(userInput) ?? 0, toko: toko)
    case "2" :
        orderscreen2(inputan: Int(userInput) ?? 0, toko: toko)
    case "3" :
        orderscreen2(inputan: Int(userInput) ?? 0, toko: toko)
    case "4" :
        orderscreen2(inputan: Int(userInput) ?? 0, toko: toko)
    default:
        gotri(toko: toko)
    }
}

func madamlie(toko: String){
    print("""
Hi, Welcome to MadamLie!
What would you like to order?

""")
    
    var nomor: Int = 0
    for towko in menuhuy3{
        nomor += 1
        print("[\(nomor)] \(towko.0)")
    }
    
    print("""
-
[B]ack to Main Menu
Your Menu Choice?
""", terminator: " ")
    
    userInput = readLine()!.lowercased()
    
    switch userInput {
    case "b" :
        firstscreen()
    case "1" :
        orderscreen3(inputan: Int(userInput) ?? 0, toko: toko)
    case "2" :
        orderscreen3(inputan: Int(userInput) ?? 0, toko: toko)
    case "3" :
        orderscreen3(inputan: Int(userInput) ?? 0, toko: toko)
    case "4" :
        orderscreen3(inputan: Int(userInput) ?? 0, toko: toko)
    default:
        madamlie(toko: toko)
    }
}

func kopte(toko: String){
    print("""
Hi, Welcome to Kopte!
What would you like to order?

""")
    
    var nomor: Int = 0
    for towko in menuhuy4{
        nomor += 1
        print("[\(nomor)] \(towko.0)")
    }
    
    print("""
-
[B]ack to Main Menu
Your Menu Choice?
""", terminator: " ")
    
    userInput = readLine()!.lowercased()
    
    switch userInput {
    case "b" :
        firstscreen()
    case "1" :
        orderscreen4(inputan: Int(userInput) ?? 0, toko: toko)
    case "2" :
        orderscreen4(inputan: Int(userInput) ?? 0, toko: toko)
    case "3" :
        orderscreen4(inputan: Int(userInput) ?? 0, toko: toko)
    case "4" :
        orderscreen4(inputan: Int(userInput) ?? 0, toko: toko)
    default:
        kopte(toko: toko)
    }
}


func cartuhuy(){
    if cart1.isEmpty {
        print("Kosong bruv")
    }else{
        for i in 0..<nama_toko.count{
            for ihiy in cart1{
                if ihiy.0 == nama_toko[i]{
                    print("- \(ihiy.1) X\(ihiy.2)")
                }
            }
        }
    }
    print("""
Press [B] to go back
Press [P] to pay / checkout
Your choice?
""", terminator: " ")
    userInput = readLine()!.lowercased()
    
    switch userInput{
    case "b" :
        firstscreen()
    case "p" :
        payout()
    default:
        cartuhuy()
    }
}

func payout(){
    
    print("""
          Your Total:
          Please Enter The Amount of your Money:
          """, terminator: " ")
    let uhuhhh: Int? = Int(readLine()!)
    
    if uhuhhh == nil {
        print("Please enter Your payment")
        payout()
    }else if uhuhhh != nil {
        if uhuhhh == 0{
            print("The Amount cannot be zero")
            payout()
        }else if uhuhhh! < 0 {
            print("please enter the valid amount")
            payout()
        }else if uhuhhh! > 0{
            if uhuhhh! > total{
                print("""
                Your total order: \(total)
                You Pay: \(uhuhhh!)
                your changes: \(uhuhhh!-total)
                
                Enjoy Your Meal
                
                """)
            }else{
                print("Your Money Kurang Woi")
                payout()
            }
            repeat{
                print("Press [return] to go back to main screen")
                userInput = readLine()!.lowercased()
            }while userInput != "return"
            cart1.removeAll()
            total = 0
            firstscreen()
        }
    }
}

// kurang kondisi untuk kalau udah ada nambah jumlah
