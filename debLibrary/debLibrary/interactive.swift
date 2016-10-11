//
//  interactive.swift
//  debLibrary
//
//  Created by Deb Ramey on 10/10/16.
//  Copyright © 2016 Deb Ramey. All rights reserved.
//

import Foundation
class libraryOfBooks{
    private var done: Bool = false
    private var currentInput: String = "q"
    private var io = Io()
    var myBooks: [String:String] =  [
        "123":"Twilight",
        "234":"New Moon",
        "345":"Eclipse",
        "456":"Breaking Dawn",
        "567":"The Phantom Tollbooth"
        
    ]
   
    func go(){
        
        while !done{
            
            //ask the user for input right here
            io.writeMessage("\nType 'Start' to Look for Books OR 'Quit' to Quit")
            currentInput = io.getInput()
            
            if currentInput.uppercased() == "Quit".uppercased(){
                done = true
            } else if currentInput.uppercased() == "Start".uppercased() {
                getBooks()
        
            }else {
                print("Can you repeat that?")
            }
        
            
        }
        print ("Exiting....")
        
        return
    }
    
    func getBooks(){
        
            io.writeMessage("\nTo obtain a listing of available books type 'list' Or 'Help' if you need Help")
            currentInput = io.getInput()
            if currentInput.uppercased() == "list".uppercased(){
                for i in myBooks{
                    print(i)
                }

                sleep(3)
                checkOutBook()
            }else if currentInput.uppercased() == "Help".uppercased(){
                helpFunction()
            }else{
                checkOutBook()
        }
    }
    
    func checkOutBook(){
        io.writeMessage("\nWould you like to Check-Out a Book?")
        currentInput = io.getInput()
        if currentInput.uppercased() == "yes".uppercased(){
            io.writeMessage("\nEnter Book Key according to Key in listing")
            currentInput = io.getInput()
            myBooks.removeValue(forKey: (currentInput))
        }else{
            io.writeMessage("\nDo you want to Check-In or Add a New Book to the Library?")
            currentInput = io.getInput()
            if currentInput.uppercased() == "yes".uppercased(){
                io.writeMessage("\nEnter Book Key")
                let key:String = io.getInput()
                io.writeMessage("\nEnter Book Title")
                let title:String = io.getInput()
                myBooks[key] = title
                
            }
            
        }
    }
    func helpFunction(){
        io.writeMessage("\nYou will need to type 'list' to see the listing of books that are available. After you see the list of available Books follow the prompts and answer each question as prompted")
        currentInput = io.getInput()
        if currentInput.uppercased() == "list".uppercased(){
            for i in myBooks{
                print(i)
            }
                sleep(3)
                checkOutBook()
            }
    }
    
    }


