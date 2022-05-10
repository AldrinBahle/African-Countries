//
//  CountriesService.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/02.
//

import Foundation

protocol CountriesService {
    func fetchCountriesData(completion: @escaping (Result<CountriesModel, Error>) -> Void)
}
