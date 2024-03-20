import SwiftUI

struct AddBookView: View {
    @Binding var books: [Book]
    @Binding var showAlert: Bool
    @State private var newBookTitle = ""
    @State private var newBookAuthor = ""

    
    var body: some View {
        VStack {
            TextField("Enter book title", text: $newBookTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter author", text: $newBookAuthor)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Spacer()
            
            Button(action: {
                self.addBook()
                self.showAlert = true
            }) {
                Text("Add Book")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
        .transition(.slide)
    }
    
    func addBook() {
        guard !newBookTitle.isEmpty && !newBookAuthor.isEmpty else {
            return
        }
        
        let newBook = Book(title: newBookTitle, author: newBookAuthor)
        books.append(newBook)
        newBookTitle = ""
        newBookAuthor = ""
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView(books: .constant([]), showAlert: .constant(false))
    }
}
