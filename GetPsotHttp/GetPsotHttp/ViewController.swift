//
//  ViewController.swift
//  GetPsotHttp
//
//  Created by jabeed on 07/08/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    

    @IBAction func onPost(_ sender: Any) {
        
//        let oauthDictioanry = NSMutableDictionary ()
//
//
//        oauthDictioanry.setValue("", forKey: "email")
//        oauthDictioanry.setValue("", forKey: "gender")
//        oauthDictioanry.setValue("", forKey: "id")
//        oauthDictioanry.setValue("1", forKey: "login")
//        oauthDictioanry.setValue("", forKey: "name")
//        oauthDictioanry.setValue("", forKey: "profileUrl")
//        oauthDictioanry.setValue("google", forKey: "type")
//        oauthDictioanry.setValue("", forKey: "user_type")
//
//
//
//        let loginOuathDictionary = NSMutableDictionary()
//        loginOuathDictionary.setValue("7798616827", forKey: "username")
//        loginOuathDictionary.setValue("1234", forKey: "password")
//        loginOuathDictionary.setValue("M", forKey: "user_type")
//
//
//
//        //create the url with URL
//        let url = URL(string: "https://papa.fit/routes/registrationRoute.php?action=checkCredentials")! //change the url
//
//        //create the session object
//        let session = URLSession.shared
//
//        //now create the URLRequest object using the url object
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST" //set http method as POST
//
//        do {
//            request.httpBody = try JSONSerialization.data(withJSONObject: loginOuathDictionary, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
//            request.httpBody = try JSONSerialization.data(withJSONObject: oauthDictioanry, options: .prettyPrinted)
//        } catch let error {
//            print(error.localizedDescription)
//        }
//
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//
//        //create dataTask using the session object to send data to the server
//        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
//
//            guard error == nil else {
//                return
//            }
//
//            guard let data = data else {
//                return
//            }
//
//            do {
//                //create json object from data
//                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
//                    print(json)
//                    // handle json...
//                }
//            } catch let error {
//                print(error.localizedDescription)
//            }
//        })
//        task.resume()
//    }
//
//
//
//}
//
//
        //let parameters = ["id": 13, "name": "jack"] as [String : Any]
        
        
       
        
        let oauthDictioanry = NSMutableDictionary ()
        
                oauthDictioanry.setValue("", forKey: "email")
                oauthDictioanry.setValue("", forKey: "gender")
                oauthDictioanry.setValue("", forKey: "id")
                oauthDictioanry.setValue("1", forKey: "login")
                oauthDictioanry.setValue("", forKey: "name")
                oauthDictioanry.setValue("", forKey: "profileUrl")
                oauthDictioanry.setValue("google", forKey: "type")
                oauthDictioanry.setValue("", forKey: "user_type")
        
        let loginOuathDictionary = NSMutableDictionary()
                loginOuathDictionary.setValue("7798616827", forKey: "username")
                loginOuathDictionary.setValue("1234", forKey: "password")
                loginOuathDictionary.setValue("M", forKey: "user_type")
                print(loginOuathDictionary)
        
        
        print(oauthDictioanry)
        
        //create the url with URL
        let url = URL(string: "https://papa.fit/routes/registrationRoute.php?action=checkCredentials")! //change the url
        
        //create the session object
        let session = URLSession.shared
        
        
        
        
        //now create the URLRequest object using the url object
        var request = URLRequest(url: url)
        request.httpMethod = "POST" //set http method as POST
        
        do {
           request.httpBody = try JSONSerialization.data(withJSONObject: oauthDictioanry, options: .prettyPrinted) // pass dictionary to nsdata object and set it as request body
            
            request.httpBody = try JSONSerialization.data(withJSONObject: loginOuathDictionary, options: .prettyPrinted)
            
            request.addValue("", forHTTPHeaderField: "username")
            
            request.addValue("", forHTTPHeaderField: "password")
            
            
            
        } catch let error {
            print(error.localizedDescription)
        }
        
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        //create dataTask using the session object to send data to the server
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                //create json object from data
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    // handle json...
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()

}

}

