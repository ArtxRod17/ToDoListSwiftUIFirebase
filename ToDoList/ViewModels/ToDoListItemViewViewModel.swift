//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Arturo Rodriguez on 6/30/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation
//VIEW MODEL FOR A SINGLE TO DO LIST ITEM (Each row in items list)
class ToDoListItemViewViewModel: ObservableObject {
    init() {
        
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users").document(uid).collection("todos").document(itemCopy.id).setData(itemCopy.asDictionary())
    }
}
