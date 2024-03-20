import SwiftUI

struct BookListView: View {
    @Binding var books: [Book]
    
    var body: some View {
        VStack {
            List {
                ForEach(books) { book in
                    VStack(alignment: .leading) {
                        Text("\(book.title)")
                            .font(.headline)
                        Text("by \(book.author)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    .onTapGesture {
                        // Do nothing on tap
                    }
                }
            }
            .navigationBarTitle("My Books")
        }
    }
}
