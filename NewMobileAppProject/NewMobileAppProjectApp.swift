//
//  NewMobileAppProjectApp.swift
//  NewMobileAppProject
//
//  Created by dana on 2021-11-11.
//

import SwiftUI
import Firebase
import FirebaseFirestore

@main
struct NewMobileAppProjectApp: App {
    //add environment variables to be modify across the app 
    let colors = Colors()
    let fireDBHelper : FireDBHelper
    var images = ImagesInstruction()
    
    init(){
        FirebaseApp.configure()
        fireDBHelper = FireDBHelper(database: Firestore.firestore())
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(colors).environmentObject(fireDBHelper).environmentObject(images)
        }
    }
}
