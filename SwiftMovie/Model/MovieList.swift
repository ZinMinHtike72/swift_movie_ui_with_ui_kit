//
//  MovieList.swift
//  SwiftMovie
//
//  Created by ZMH Sabahna on 12/8/23.
//

import Foundation

let movieDataSource : [Movie] = [
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg", movieTitle: "Avatar", movieYear: "2009", movieActors: "Sam Worthington,Zoe Saldana,Michelle Yeoh", movieDirector: "James Cameron", movieRating: "Action", movieRuntime: "180 min",rating: 9,genre: "Action",id: 0, isFavourite: false),
    Movie(movieImage: "https://www.bestmovieposters.co.uk/wp-content/uploads/2019/01/DWsSZ7pa.jpeg", movieTitle: "UP", movieYear: "2012", movieActors: "Ed Asner,Jordan Nagai", movieDirector: "Pete Docter", movieRating: "Adventure", movieRuntime: "165min",rating: 8,genre: "Cartoon",id: 1,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/I/71yCx0m21kL.jpg", movieTitle: "Titanic", movieYear: "1974,180min", movieActors: "Leonardo Di Caprio,Kate Winslet", movieDirector: "James Cameron", movieRating: "Romance", movieRuntime: "7",rating: 7,genre: "Romance",id: 2,isFavourite: false),
    Movie(movieImage: "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg", movieTitle: "Avenger:End Game", movieYear: "2020,182min", movieActors: "Chirs Evans,Mark Ruffalo", movieDirector: "Anthony Russo,Joe Russo", movieRating: "Genre : Fantasy,Scifi", movieRuntime: "80min",rating: 5,genre: "Scifi,Adventure",id: 3,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BMjEzNzMwNjAzMl5BMl5BanBnXkFtZTgwMTI4MzY3NjM@._V1_.jpg", movieTitle: "Mirzapur", movieYear: "2019", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 3,genre: "Bollywood",id: 4,isFavourite: false),
    Movie(movieImage: "https://flxt.tmsimg.com/assets/p16926237_p_v8_aa.jpg", movieTitle: "The Call Of The Wild", movieYear: "2019,230min", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Adventure",id: 5,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/I/81I7KpnKQzL._AC_UF894,1000_QL80_.jpg", movieTitle: "Mulan", movieYear: "2019", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Chinese",id: 6,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BYzFiZjc1YzctMDY3Zi00NGE5LTlmNWEtN2Q3OWFjYjY1NGM2XkEyXkFqcGdeQXVyMTUyMTUzNjQ0._V1_FMjpg_UX1000_.jpg", movieTitle: "Mission-Impossible", movieYear: "2019,", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Action,Adventure",id: 7,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_.jpg", movieTitle: "Toy Story 4", movieYear: "2019", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Cartoon,Animation",id: 8,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BZjg5MTM4N2QtN2RlMS00NzBlLTg3NDktM2ExZDNmMmExMGU3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg", movieTitle: "Extraction", movieYear: "2019", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Action",id: 9,isFavourite: false),
    Movie(movieImage: "https://m.media-amazon.com/images/M/MV5BMTYzZWE3MDAtZjZkMi00MzhlLTlhZDUtNmI2Zjg3OWVlZWI0XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_.jpg", movieTitle: "Lord of War", movieYear: "2005", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Action",id: 10,isFavourite: false),
    Movie(movieImage: "https://filmartgallery.com/cdn/shop/products/Avengers-Infinity-War-Vintage-Movie-Poster-Original-1-Sheet-27x41_3598eaae-2806-4429-986b-218cc4f08b73.jpg?v=1670360455", movieTitle: "Avengers:Infinty War", movieYear: "2020", movieActors: "James", movieDirector: "Steven", movieRating: "9.2", movieRuntime: "180min",rating: 7,genre: "Scifi,Adventure",id: 11,isFavourite: false),
    
]

