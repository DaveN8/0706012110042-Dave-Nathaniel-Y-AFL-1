//
//  Menu.swift
//  0706012110042-Dave Nathaniel Y-AFL 1
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

class daftarMenu {
    let menuhuy1: [(String, Int)] = [("Tahu Isi", 20000), ("Nasi Kuning", 16000), ("Nasi Campur", 14000), ("Air Mineral", 12000)]
    let menuhuy2: [(String, Int)] = [("Nasi Bakar Rendang", 28000), ("Nasi Bakar Kare", 28000), ("Nasi Bakar Tuna", 28000), ("Nasi Bakar Cabe Hijau", 28000)]
    let menuhuy3: [(String, Int)] = [("Martabak Telur", 20000), ("Martabak Mesir", 25000), ("Martabak Bangka", 30000), ("Martabak Spesial", 35000)]
    let menuhuy4: [(String, Int)] = [("Kopi Tarik Kopte", 13000), ("Kopi Tarik Cincau", 14000), ("Kopi Teh Tarik", 15000), ("Kopi Coklat Tarik", 16000)]
    let menuhuy5: [(String, Int)] = [("Kare", 30000), ("Ramen", 33000), ("Sushi", 31000), ("Teh Pucuk", 8000)]
    
    func menu(toko: String){
        print("Hi, Welcome to \(toko)!")
        print("What would you like to order?")
        print()
        
        if toko == "Tuku-Tuku"{
            var nomor: Int = 0
            for towko in menuhuy1{
                nomor += 1
                print("[\(nomor)] \(towko.0)")
            }
            
        }else if toko == "GoTri"{
            var nomor: Int = 0
            for towko in menuhuy2{
                nomor += 1
                print("[\(nomor)] \(towko.0)")
            }
            
        }else if toko == "Madam Lie"{
            var nomor: Int = 0
            for towko in menuhuy3{
                nomor += 1
                print("[\(nomor)] \(towko.0)")
            }
            
        }else if toko == "Kopte"{
            var nomor: Int = 0
            for towko in menuhuy4{
                nomor += 1
                print("[\(nomor)] \(towko.0)")
            }
            
        }else if toko == "Raburi"{
            var nomor: Int = 0
            for towko in menuhuy5{
                nomor += 1
                print("[\(nomor)] \(towko.0)")
            }
        }
        
        print("""
        -
        [B]ack to Main Menu
        Your Menu Choice?
        """, terminator: " ")
        userInput = readLine()!.lowercased()
        
        switch userInput {
        case "b" :
            mainScreen().firstscreen()
        case "1" :
            keranjang().orderScreen(inputan: Int(userInput) ?? 0, toko: toko)
        case "2" :
            keranjang().orderScreen(inputan: Int(userInput) ?? 0, toko: toko)
        case "3" :
            keranjang().orderScreen(inputan: Int(userInput) ?? 0, toko: toko)
        case "4" :
            keranjang().orderScreen(inputan: Int(userInput) ?? 0, toko: toko)
        default:
            menu(toko: toko)
        }
    }
    
}
