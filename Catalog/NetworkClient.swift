//
//  NetworkClient.swift
//  Catalog
//
//  Created by sergey on 25.11.2019.
//  Copyright © 2019 sergey. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

class NetworkClient{
    /*
        static func fetchData() -> Observable<Any>? {
            return Observable<Any>.create({observer in
            let fileName = "test.json"
            if let path = Bundle.main.path(forResource: fileName, ofType: "json"){
                let url = URL(fileURLWithPath: path)
                AF.request(url)
                        .response { response in

                            // convert data to our model and update the local variable
                            guard let responseData =  response.data else {
                                return observer.onCompleted()
                            }
                            do {
                                let model = try JSONDecoder().decode(Product.self, from: responseData)
                                observer.onNext(model)
                                observer.onCompleted()
                            }catch {
                                observer.onError(error)
                                observer.onCompleted()
                                print("Something went wrong.")
                            }
                    }
                }
                    return Disposables.create();
                })
        }
 */
    }
