//
//  AddressBook.swift
//  ContactApp
//
//  Created by Jordan Barkley on 8/28/16.
//  Copyright © 2016 Lee Angioletti. All rights reserved.
//

import Foundation

class AddressBook: NSObject {
    
    private var contacts: [Contact]     // (optional) the contacts associated with the group
    private var groupName: String!      // (required) the group's name
    private var password: String!       // (required) the group's password
    
    override init() {
        contacts = []
        groupName = "Lambda Chi Alpha - Psi Zeta (Purdue)"
        password = "zbtSucks123"
        print("Use a different initializer!")
    }
    
    init(contacts: [Contact], groupName: String!, password: String!) {
        self.contacts = contacts
        self.groupName = groupName
        self.password = password
    }
    
    func getContacts() -> [Contact] {
        return self.contacts
    }
    
    func setContacts(contacts: [Contact]) {
        self.contacts = contacts
    }
    
    func addContacts(contacts: [Contact]) {
        var arr = self.contacts         // duplicate current contact list
        var index = 0
        
        while (index < arr.count) {     // append contacts as needed
            arr.append(contacts[index]) // add contact
            index += 1                  // increment index
        }
        
    }
    
    func getGroupName() -> String! {
        return self.groupName
    }
    
    func setGroupName(groupName: String) {
        self.groupName = groupName
    }
    
    func getPassword() -> String! {
        return self.password
    }
    
    func setPassword(password: String!) {
        self.password = password
    }

    
    func toString() -> String {
        let str = "" +
            "Group Name: " + getGroupName() + "\n" +
            "Total Contacts: " + String(getContacts().count) + "\n" +
            "Password: " + getPassword() + "\n"

        return str
    }
    
}
