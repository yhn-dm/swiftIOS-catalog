// Définition du “produit”
import Foundation

struct Produit: Identifiable, Codable {
    let id: Int
    let nom: String
    let description: String
    let prix: Double
    let stock: Int
    let categorie: String
    let marque: String
    let imageUrl: String
    let note: Double
    let dateAjout: String
}
