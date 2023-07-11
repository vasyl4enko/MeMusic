//
//  APIRouter.swift
//  MeMusic
//
//  Created by Oleksandr on 11.07.2023.
//

import Foundation

class APIRouter {
    
    // GET Request
    struct GetGenres: Request {
        typealias ReturnType = Genre
        var path: String = "/genre"
        var method: HTTPMethod = .get
        var queryParams: [String : Any]?
        init(queryParams: APIParameters.ProductParams) {
            self.queryParams = nil
        }
    }
    
//    struct AddProduct: Request {
//        typealias ReturnType = AddedProductModel
//        var path: String = "/products/add"
//        var method: HTTPMethod = .post
//        var body: [String : Any]?
//        init(body: APIParameters.AddProductParams) {
//            self.body = body.asDictionary
//        }
//    }
}
