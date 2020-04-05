//
//  main.swift
//  T-shirt shop
//
//  Created by Mac on 5/4/2563 BE.
//  Copyright © 2563 Mac. All rights reserved.
//

import Foundation

class Tshirt {
    var size : String
    var color : String
    var price : Float
    var image : String?
    
    init(size : String , color : String , price : Float , image : String){
        self.size = size
        self.color = color
        self.price = price
        self.image = image
    }
}

class User {
    var name : String
    var email : String?
    var shoppingCart : [Tshirt] = []
    var address : [Address] = []
    init(name : String , email : String){
        self.name = name
        self.email = email
    }
    func addOrder(_ order : Tshirt){
        shoppingCart.append(order)
    }
    func getOrder() -> [String] {
        return shoppingCart.map{ return $0.size}
    }
    func getOrder1() -> [String] {
          return shoppingCart.map{ return $0.color}
      }
    func addPrice(_ prices : Tshirt){
        shoppingCart.append(prices)
    }
    func getPrice() -> [Float] {
        return shoppingCart.compactMap{ return $0.price}
    }
    func addAddress(_ address1 : Address){
        address.append(address1)
    }
    func getAddress() -> [String] {
        return address.map{ return $0.street}
    }
    func getAddress1() -> [String] {
        return address.map{ return $0.city}
    }
    func getAddress2() -> [String] {
        return address.map{ return $0.zipcode}
    }
}

class Address {
    var street : String
    var city : String
    var zipcode : String
    
    init(street : String , city : String , zipcode: String){
        self.street = street
        self.city = city
        self.zipcode = zipcode
    }
}

let jame = User(name : "Jame Watson" , email : "jame@gmail.com" )
let shoppingCart : [Tshirt] = [Tshirt(size : "L" , color : "Red" , price : 500.0 , image : "Picture1"), Tshirt(size : "M" , color : "Black" , price : 750.0 , image : "Picture2"), Tshirt(size : "S" , color : "Black" , price : 625.0 , image : "Picture3")]
let address : [Address] = [Address(street : "131/75 Phutthamonthon" , city : "Nakornpathom" , zipcode : "10180")]

shoppingCart.forEach{ jame.addOrder($0) }
jame.getOrder().forEach{ print($0)}
jame.getOrder1().forEach{ print($0)}

jame.getPrice().forEach{ print($0)}

address.forEach{ jame.addAddress($0)}
jame.getAddress().forEach{ print($0)}
jame.getAddress1().forEach{ print($0)}
jame.getAddress2().forEach{ print($0)}

