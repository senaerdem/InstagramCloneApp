//
//  AuthenticationViewModel.swift
//  InstagramCloneApp
//
//  Created by Sena Nur Erdem on 28.09.2023.
//

import UIKit

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
    var buttonBackgroundColor: UIColor {
        return formIsValid ? #colorLiteral(red: 0.4602351785, green: 0.02153898589, blue: 0.9866748452, alpha: 1) : #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).withAlphaComponent(0.5)
    }
    var buttonTitleColor:UIColor {
        return formIsValid ? .white : UIColor(white:1, alpha: 0.67)
    }
}

struct RegistrationViewModel {
    
}
