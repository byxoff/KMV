//
//  Requests.swift
//  kmv-telekom
//
//  Created by Иван Обухов on 24.10.2021.
//
/*
import Alamofire
import SwiftUI
import SwiftyJSON

class Reqs{
    var data = [String]()
    var month = "nope"
    func autoReq(){
let params = [
    "method": "contractGet",
    "user": ["user" : "mobiapp",
        "pswd" : "5NdUyDaUpGf9"],
    "params": ["contractId" : "10743"]
] as [String : Any]

AF.request("http://stat.kmvtelecom.ru/bgbilling/executer/json/ru.bitel.bgbilling.kernel.contract.api/ContractService", method: .post, parameters: params,encoding: JSONEncoding.default).responseJSON { response in
    debugPrint(response)
    }
    }
    func balance(){
let params = [
    "method": "contractBalanceGet",
    "user": ["user" : "mobiapp",
        "pswd" : "5NdUyDaUpGf9"],
    "params": ["contractId":10744,
               "year":2021,
               "month":10]
] as [String : Any]

AF.request("http://stat.kmvtelecom.ru/bgbilling/executer/json/ru.bitel.bgbilling.kernel.contract.balance/BalanceService", method: .post, parameters: params,encoding: JSONEncoding.default).responseJSON { response in
    switch response.result{
    case .success(let value):
        let json = JSON(value)
        let payments = ("\(json["data"]["return"]["payments"])")
        let incomingSaldo = ("\(json["data"]["return"]["incomingSaldo"])")
        let charges = ("\(json["data"]["return"]["charges"])")
        let accounts = ("\(json["data"]["return"]["accounts"])")
        let balanceValue = (((payments as NSString).integerValue) + ((incomingSaldo as NSString).integerValue) - ((charges as NSString).integerValue) - ((accounts as NSString).integerValue))
        print(balanceValue)
        self.data.append("\(balanceValue)")
    case .failure(let error):
        print(error)
    }
    }
    }

    }


struct ContentRequestView: View {
    @ObservedObject var obs = observer()
    
    let variable = Reqs()
    
    var body: some View {
        HStack{
            Button("Заявка на подключение") {
                variable.autoReq()
            }
            Button("баланс") {
                variable.balance()
            }
            List(obs.datas){i in
                dataCard(accounts: i.accounts)
            }
        }
    }
}

class observer : ObservableObject{
    let params = [
        "method": "contractBalanceGet",
        "user": ["user" : "mobiapp",
            "pswd" : "5NdUyDaUpGf9"],
        "params": ["contractId":10744,
                   "year":2021,
                   "month":10]
    ] as [String : Any]
    @Published var datas =  [datatype]()
    init() {
        AF.request("http://stat.kmvtelecom.ru/bgbilling/executer/json/ru.bitel.bgbilling.kernel.contract.balance/BalanceService", method: .post, parameters: params,encoding: JSONEncoding.default).responseData { (data) in
            let json = try! JSON(data: data.data!)
            for i in json{
                print(i.1)
                self.datas.append(datatype(id: i.1["id"].intValue, accounts:  i.1["String"].stringValue))
            }
    }
}
}

struct datatype : Identifiable, Decodable{
    var id : Int
    var accounts : String

    
}


        
struct dataCard : View {
    @ObservedObject var obs = observer()
    var accounts = ""
    var body : some View{
        HStack{
                Text("\(accounts)")
        }
    }
}

typealias Users = [datatypeReturn]

struct datatypeReturn: Codable {
    var reserve : Int
    var incomingSaldo : Int
    var charges : Int
    var payments : Int
    var year : Int
    var month : Int
    var timestamp : Int
    var accounts : Int

    enum CodingKeys: String, CodingKey {
        case reserve = "reserve"
        case incomingSaldo = "incomingSaldo"
        case charges = "charges"
        case payments = "payments"
        case year = "year"
        case month = "month"
        case timestamp = "timestamp"
        case accounts = "accounts"
    }
}

extension datatypeReturn {
    init(data: Data) throws {
        self = try JSONDecoder().decode(datatypeReturn.self, from: data)
    }
}

extension Array where Element == Users.Element {
    init(user data: Data) throws {
        self = try JSONDecoder().decode(Users.self, from: data)
    }
}

struct Image: Codable {
    let imageURL: String
    let uploaderName: String
}

struct Entry: Codable {
    let images: [String: Image]
}
*/
