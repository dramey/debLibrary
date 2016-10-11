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
    var myBooks: Set<String> =  ["Twilight", "New Moon", "Eclipse", "Breaking Dawn", "The Phantom Tollbooth"]
   
    func go(){
        
        while !done{
            
            //ask the user for input right here
            io.writeMessage("\nType 'l' to Look for Books OR 'q' to Quit")
            currentInput = io.getInput()
            
            if currentInput == "q"{
                done = true
            } else if currentInput == "l" {
                getBooks()
        
            }else {
                print("Can you repeat that?")
            }
        
            
        }
        print ("Exiting....")
        
        return
    }
    
    func getBooks(){
        
            io.writeMessage("\nTo obtain a listing of available books type 'list'")
            currentInput = io.getInput()
            if currentInput == "list"{
                print(myBooks)
                sleep(5)
                checkOutBook()
            }else{
                checkOutBook()
        }
    }
    
    func checkOutBook(){
        io.writeMessage("\nWould you like to Check-Out a Book?")
        currentInput = io.getInput()
        if currentInput == "yes"{
            io.writeMessage("\nEnter Book Title")
            currentInput = io.getInput()
            myBooks.remove(currentInput)
        }else{
            io.writeMessage("\nDo you want to Check-In or Add a New Book to the Library?")
            currentInput = io.getInput()
            if currentInput == "yes"{
                io.writeMessage("\nEnter Book Title")
                currentInput = io.getInput()
                myBooks.insert(currentInput)
            }
            
        }
    }

    
    }

    
