//
//  CountriesServiceImplementation.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/02.
//

import Foundation
import Alamofire

class CountriesServiceImplementation: CountriesService {
    
    // Mark: Attribute(s)
    
    private let endPoint = "https://wft-geo-db.p.rapidapi.com/v1/geo/cities"
    private let serviceError = NSError(domain: "", code: 1, userInfo: nil)
    
    // Mark: Method(s)
    
    func fetchCountriesData(completion: @escaping (Result<CountriesModel, Error>) -> Void) {
        AF.request(endPoint, method: .get).validate().responseData { response in
            if let error = response.error {
                completion(.failure(error))
            }
            do {
                if let data = response.data {
                    let countriesData = try JSONDecoder().decode(CountriesModel.self, from: data)
                    completion(.success(countriesData))
                } else {
                    completion(.failure(self.serviceError))
                }
            }
            catch {
                completion(.failure(error))
            }
        }
    }
}
