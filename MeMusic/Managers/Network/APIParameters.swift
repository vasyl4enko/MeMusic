//
//  APIParameters.swift
//  MeMusic
//
//  Created by Oleksandr on 11.07.2023.
//

import Foundation

protocol DictionaryConvertor: Codable {}


//MARK: APIParameters for using in URLrequests
/// Structs that containg all parameters that needed for passing data as body or queary strings to urlrequest
/// it is conforimig to DictionaryConvertor
struct APIParameters{
    
    struct ProductParams: Encodable  {
        var skip: Int?
        var limit: Int?
    }
    
    struct AddProductParams: Encodable {
        var title: String?
    }
}
