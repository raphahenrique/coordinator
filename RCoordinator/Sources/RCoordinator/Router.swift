//
//  Router.swift
//  
//
//  Created by Raphael on 18/02/23.
//

import UIKit

public protocol RouterEvent { }

public protocol Router {
    func handle(_ event: RouterEvent)
}
