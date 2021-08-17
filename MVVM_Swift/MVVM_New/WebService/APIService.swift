 
import Foundation

class APIService :  NSObject {
    
    private let sourcesURL = URL(string: "http://187.95.0.22/producao/indicanet/calc.php")!
    
    func apiToGetEmployeeData(completion : @escaping (Employees) -> ()) {
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                let jsonDecoder = JSONDecoder()
                let empData = try! jsonDecoder.decode(Employees.self, from: data)
                completion(empData)
            }
        }.resume()
    }
}
