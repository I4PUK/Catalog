//
//  Good.swift
//  Catalog
//
//  Created by sergey on 22.11.2019.
//  Copyright © 2019 sergey. All rights reserved.
//

import Foundation
import UIKit

struct Product{
    
    var productName : String
    var productImage : UIImage?
    var productDesc : String
    var productPrice: Double
    
    // An array of products
    static let qualities: [Product] = {
        let prod1 = Product(productName: "Name 1", productImage: UIImage(named: "placeholder"), productDesc: "Description1 cheap", productPrice: 25.0)
        let prod2 = Product(productName: "Name 2", productImage: UIImage(named: "placeholder"), productDesc: "Description2 good value for money", productPrice: 49.9)
        let prod3 = Product(productName: "Name 3", productImage: UIImage(named: "placeholder"), productDesc: "Description3 expensive and high quality", productPrice: 99.99)
      
      return [prod1,
              prod2,
              prod3]
    }()
    /*
    init?(json: [String:Any]) {
        
        let name = json["productName"] as? String
        let imageUrl = json["productImage"] as? String
        let description = json["productDesc"] as? String
        let price = json["productPrice"] as? Double
        
        self.productName = name ?? "No name"
        self.productImage = imageUrl ?? "No img"
        self.productDesc = description!
        self.productPrice = price ?? 0.00
    }
    
    static func getArray(from jsonArray: Any) -> [Product]? {
    
        guard let jsonArray = jsonArray as? Array<[String:Any]> else { return nil }
        return jsonArray.compactMap{ Product(json: $0) }
    }
 */

}

