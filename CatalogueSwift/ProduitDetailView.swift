// Écran de détail qui raconte l’histoire d’un produit
import SwiftUI

struct ProduitDetailView: View {
    let produit: Produit
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                if let url = URL(string: produit.imageUrl) {
                    AsyncImage(url: url) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                            .frame(maxWidth: .infinity, minHeight: 180)
                    }
                    .frame(maxWidth: .infinity)
                    .background(Color.black.opacity(0.02))
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(produit.nom)
                        .font(.title)
                        .bold()
                    
                    Text(produit.marque)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    
                    Text(produit.categorie)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Text(produit.description)
                    .font(.body)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Informations")
                        .font(.headline)
                    
                    Text("Prix : \(produit.prix.formatted(.currency(code: "EUR")))")
                    Text("Stock : \(produit.stock)")
                    Text("Note : \(produit.note, format: .number.precision(.fractionLength(1))) / 5")
                    Text("Date d’ajout : \(produit.dateAjout)")
                }
                .font(.subheadline)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(produit.nom)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ProduitDetailView(produit: Produit(id: 1,
                                           nom: "Produit de test",
                                           description: "Description de test.",
                                           prix: 9.99,
                                           stock: 3,
                                           categorie: "Test",
                                           marque: "Marque",
                                           imageUrl: "https://example.com/image.jpg",
                                           note: 4.5,
                                           dateAjout: "2026-03-12"))
    }
}
