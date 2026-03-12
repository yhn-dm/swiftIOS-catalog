// Écran qui liste tous les produits comme dans un petit catalogue en ligne.
import SwiftUI

struct ProduitListView: View {
    @State private var produits: [Produit] = []
    
    var body: some View {
        ZStack {
            Color(.systemGroupedBackground)
                .ignoresSafeArea()
            
            List(produits) { produit in
                NavigationLink(destination: ProduitDetailView(produit: produit)) {
                    HStack(alignment: .top, spacing: 12) {
                        if let url = URL(string: produit.imageUrl) {
                            AsyncImage(url: url) { image in
                                image
                                    .resizable()
                                    .scaledToFill()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 60, height: 60)
                            .background(Color.gray.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                        } else {
                            Image(systemName: "photo")
                                .foregroundColor(.secondary)
                                .frame(width: 60, height: 60)
                                .background(Color.gray.opacity(0.1))
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        }
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text(produit.nom)
                                .font(.headline)
                                .lineLimit(2)
                            
                            Text(produit.prix.formatted(.currency(code: "EUR")))
                                .font(.subheadline)
                                .foregroundColor(.blue)
                            
                            Text(produit.categorie.uppercased())
                                .font(.caption2)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 6)
                }
            }
            .listStyle(.plain)
        }
        .navigationTitle("Catalogue")
        .onAppear {
            produits = ProduitService.shared.chargerProduitsOuListeVide()
        }
    }
}

#Preview {
    NavigationStack {
        ProduitListView()
    }
}
