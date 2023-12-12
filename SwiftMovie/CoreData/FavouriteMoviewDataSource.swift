//
//  FavouriteMoviewDataSource.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/10/23.
//

import Foundation
import CoreData



class FavouriteMoviewDataSource {
    
    static let shared : FavouriteMoviewDataSource = FavouriteMoviewDataSource()
    var manageContext: NSManagedObjectContext?
    
    func initCoreDataStack(){
        let container = NSPersistentContainer(name: "FavouriteMovies")
         
        container.loadPersistentStores(completionHandler: {(desc,error) in
            if  let error = error{
                fatalError("Unable to load \(error)")
            }else{
                self.manageContext = container.viewContext
            }
        })
    }
    
    func saveMovieId(id : Int){
        if let context = self.manageContext{
            let entityDescription = NSEntityDescription.entity(forEntityName: "FavouriteMovies", in: context)
            if let entityDesc = entityDescription{
                let favouriteMovie = FavouriteMovies(entity: entityDesc, insertInto: context )
                favouriteMovie.id = Int16(id)
                do{
                    try context.save()
                    
                }catch let error{
                    print(error)
                }
            }
        }
    }
    
    func getAllFavouriteMovies () -> [FavouriteMovies]{
        if let context = manageContext{
            let fetchRequest =  FavouriteMovies.fetchRequest() as NSFetchRequest<FavouriteMovies>
            do {
                let favouriteMovies = try context.fetch(fetchRequest)
               return favouriteMovies
            } catch _ {
               print("error")
            }
        }
        return []
    }
    
    func deleteFavMovies(id: Int){
        if let context = manageContext{
            let fetchRequest = FavouriteMovies.fetchRequest() as NSFetchRequest<FavouriteMovies>
            let pred = NSPredicate(format: "id = %d", id)
            fetchRequest.predicate = pred

            do {
                let results = try context.fetch(fetchRequest)
                if let match = results.first {
                    context.delete(match)
                    try context.save()
                   
                   
                }
            } catch let error {
                print("\(error)")
            }
        }
    }
}
