//
//  Genre.swift
//  MeMusic
//
//  Created by Oleksandr on 11.07.2023.
//

import Foundation

struct Genre: Codable, Identifiable {
    let id: String
    let name: String?
    let picture: String?
    let pictureSmall: String?
    let pictureMedium: String?
    let pictureBig: String?
    let pictureXl: String?
    let type: String?
}
/**
 
 "id": "0",
 "name": "Все",
 "picture": "https://api.deezer.com/genre/0/image",
 "picture_small": "https://e-cdns-images.dzcdn.net/images/misc//56x56-000000-80-0-0.jpg",
 "picture_medium": "https://e-cdns-images.dzcdn.net/images/misc//250x250-000000-80-0-0.jpg",
 "picture_big": "https://e-cdns-images.dzcdn.net/images/misc//500x500-000000-80-0-0.jpg",
 "picture_xl": "https://e-cdns-images.dzcdn.net/images/misc//1000x1000-000000-80-0-0.jpg",
 "type": "genre"
 */
