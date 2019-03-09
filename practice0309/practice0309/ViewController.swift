//
//  ViewController.swift
//  practice0309
//
//  Created by user on 2019/3/9.
//  Copyright © 2019 kane1213. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    enum JSONError: String, Error {
        case unknowError = "Error: Unknowned"
        case noData = "Error: No Data"
        case parseFailed = "Error: Parse Failed"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "https://www.mocky.io/v2/5c833c653000006a006b0c17")!)
        let requestTask = URLSession.shared.dataTask(with: request) {(data, request, error) in
            let jsonResponse = try! JSONSerialization.jsonObject(with: data!, options: [])
            print(jsonResponse)
//                guard error == nil else {
//                    throw JSONError.unknowError
//                }
//            }
        }
        requestTask.resume()
        
        
//        do {
//
//        } catch let error as JSONError {
//
//        }

    }


}

