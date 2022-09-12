//
//  WebService.swift
//  pet-project
//
//  Created by Denise Fritsch on 12.09.22.
//

import Foundation

enum APICallErrors: Error {
    case invalidResponse
}

class WebService {
    func getGasStation(_ url: URL) async throws -> [GasStation] {
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw APICallErrors.invalidResponse
        }
        return try JSONDecoder().decode([GasStation].self, from: data)
    }
}
