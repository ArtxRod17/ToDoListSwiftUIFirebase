//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Arturo Rodriguez on 6/30/23.
//
import FirebaseFirestore
import Foundation
//VIEWMODEL FOR LIST OF ITEMS VIEW
class ToDoListViewViewModel: ObservableObject {
    @Published var ShowingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    //Delete todo list item
    //id is item to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users").document(userId).collection("todos").document(id).delete()
    }
}
