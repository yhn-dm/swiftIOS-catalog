// service chargé d’aller lire les produits dans le fichier plist.
import Foundation

enum ProduitServiceError: Error {
    case fichierIntrouvable
    case donneesInvalides
}

final class ProduitService {
    static let shared = ProduitService()
    
    private init() {}
    
    func chargerTousLesProduits() throws -> [Produit] {
        guard let url = Bundle.main.url(forResource: "Produits", withExtension: "plist") else {
            throw ProduitServiceError.fichierIntrouvable
        }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = PropertyListDecoder()
            let produits = try decoder.decode([Produit].self, from: data)
            return produits
        } catch {
            throw ProduitServiceError.donneesInvalides
        }
    }
    
    func chargerProduitsOuListeVide() -> [Produit] {
        do {
            return try chargerTousLesProduits()
        } catch {
            print("Erreur lors du chargement des produits : \(error)")
            return []
        }
    }
}
