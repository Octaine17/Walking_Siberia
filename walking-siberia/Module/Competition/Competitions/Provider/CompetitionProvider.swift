import Foundation

class CompetitionsProvider {
    
    func loadCompetitions(completion: @escaping(Result<[Competition], ModelError>) -> Void) {
        CompetitionAPI.competitionGet { response, error in
            if let response = response?.data {
                completion(.success(response))
            } else if let error = error {
                log.error(ModelError(err: error).message())
                completion(.failure(ModelError(err: error)))
            } else {
                completion(.failure(ModelError()))
            }
        }
    }
    
}
