//
//  main.swift
//  BVNDay5
//
//  Created by Apple on 28/05/2021.
//

import Foundation

//MARK: - Bai 1
func stepsToOne() {
    print("Bài 1: Nhập số nguyên dương")
    let input = readLine()
    guard let strNumber = input else {
        print(-1)
        return
    }
    var n = Int(strNumber) ?? -1
    if n < 0 { // kiểm tra số có hợp lệ hay không (nguyên và > 0)
        print(-1)
        stepsToOne()
        return
    }
    
    var count = 0
    while (n > 1) {
        n % 2 == 0 ? (n = n/2) : (n = 3*n + 1)
        count += 1
    }
    print(count)
}

stepsToOne()
 
//MARK: Bai 2
func checkSymmetry() {
    print("Bài 2: Nhập số nguyên dương")
    let input = readLine()
    guard let strNumber = input else {
        print("số không hợp lệ (nil)")
        return
    }

    let number = Int(strNumber) ?? -1
    if number < 0 { // kiểm tra số có hợp lệ hay không (nguyên và > 0)
        print("số không hợp lệ")
        checkSymmetry()
        return
    }

    var newStr = ""
    for i in String(number) {
        newStr = String(i) + newStr
    }

    if newStr == String(number) {
        print("là số đối xứng")
    } else {
        print("là số không đối xứng")
    }
}

checkSymmetry()

//MARK: Bai 3

func checkTaxiMoney() {
    print("Bài 3: Nhập số km")
    let input = readLine()
    guard let str = input else {
        print("số không hợp lệ (nil)")
        return
    }

    let km = Int(str) ?? -1
    if km <= 0 {
        print("số không hợp lệ")
        checkTaxiMoney()
        return
    }

    var money = 0
    switch km {
    case 1:
    money = 5000
        print("tiền phải trả là \(money)")
    case 2...30:
    money = 5000 + (km - 1)*4000
        print("tiền phải trả là \(money)")
    default:
        money = 5000 + 29*4000 + (km - 30)*3000
        print("tiền phải trả là \(money)")
    }
}

checkTaxiMoney()
