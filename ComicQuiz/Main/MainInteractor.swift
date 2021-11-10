//
//  MainInteractor.swift
//  ComicQuiz
//
//  Created by Knpblo on 9/11/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MainBusinessLogic{
  func SignIn(request: Main.SignIn.Request)
}

protocol MainDataStore{
  var name: String { get set }
}

class MainInteractor: MainBusinessLogic, MainDataStore{
  var presenter: MainPresentationLogic?
  var worker: MainWorker?
  var name: String = ""
  
  // MARK: Do something
  
  func SignIn(request: Main.SignIn.Request){
      name = request.name
      switch name.isEmpty{
          case false:
              let response = Main.SignIn.Response(success: true)
              presenter?.presentSignIn(response: response)
          
          default:
              let response = Main.SignIn.Response(success: false)
              presenter?.presentSignIn(response: response)
    }
      
  }
}
