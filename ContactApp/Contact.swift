//
//  Contact.swift
//  ContactApp
//
//  Created by Jordan Barkley on 8/28/16.
//  Copyright © 2016 Lee Angioletti. All rights reserved.
//

import Foundation

class Contact: NSObject {
    
    private var firstName: String!          // (required) user's first name
    private var lastName: String!           // (optional) user's last name
    private var phoneNumber: String!        // (required) user's phone number
    private var email: String!              // (optional) user's email
    private var nickname: String!           // (optional) user's nickname
    
    override init() {
        self.firstName = "Jordan"
        self.lastName = "Barkley"
        self.phoneNumber = "012-345-6789"
        self.email = "jordan@example.com"
        self.nickname = "Jobin"
        print("Use a different initializer!")
    }
    
    init(firstName: String!, lastName: String!, phoneNumber: String!, email: String!, nickname: String!) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.email = email
        self.nickname = nickname
    }
    
    func getFirstName() -> String! {
        return self.firstName
    }
    
    func setFirstName(firstName: String!) {
        self.firstName = firstName
    }
    
    func getLastName() -> String! {
        return self.lastName
    }
    
    func setLastName(lastName: String!) {
        self.lastName = lastName
    }
    
    func getPhoneNumber() -> String! {
        return self.phoneNumber
    }
    
    func setPhoneNumber(phoneNumber: String!) {
        self.phoneNumber = phoneNumber
    }
    
    func getEmail() -> String! {
        return self.email
    }
    
    func setEmail(email: String!) {
        self.email = email
    }
    
    func getNickname() -> String! {
        return self.nickname
    }
    
    func setNickname(nickname: String!) {
        self.nickname = nickname
    }
    
    func toString() -> String! {
        let str = "" +
            "First Name: " + getFirstName() + "\n" +
            "Last Name: " + getLastName() + "\n" +
            "Phone Number: " + getPhoneNumber() + "\n" +
            "Email: " + getEmail() + "\n" +
            "Nickname: " + getNickname() + "\n"
        
        return str
    }

}
