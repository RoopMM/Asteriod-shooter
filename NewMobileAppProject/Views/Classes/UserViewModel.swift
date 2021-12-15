//
//  UserViewModel.swift
//  NewMobileAppProject
//
//  Created by Roop Malhans on 2021-12-14.
//

import Foundation
import FirebaseFirestore

class userViewModel: ObservableObject{
    @Published var scores = [User]()
    private var db = Firestore.firestore()
    
    func fetchData(){
        db.collection("Topscores").addSnapshotListener{ (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else{
                print("No Data")
                return
            }
            
            self.scores = documents.map{(queryDocumentSnapshot ) -> User in
                
                let data = queryDocumentSnapshot.data()
                let name = data["Name"] as? String ?? ""
                let score = data["Score"] as? String ?? ""
                return User (name: name, score: score)
            }
        }
    }
}