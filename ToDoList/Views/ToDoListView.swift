//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Arturo Rodriguez on 6/30/23.
//
import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    //listening for live updates
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationStack {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                            
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.ShowingNewItemView = true                } label: {
                    Image(systemName: "plus")
                }

            }
            .sheet(isPresented: $viewModel.ShowingNewItemView) {
                NewItemView(newItemPresented: $viewModel.ShowingNewItemView)
            }
        }
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        //Just A preview, hardcode testing account userId
        //Go Ahead And Try out the preview with this account
        ToDoListView(userId: "PLtvSlJrLzOdxlxejaNjt4IS1ml1")
    }
}
