//
//  SampleRouter.swift
//  CoordinatorsSample
//
//  Created by Raphael on 18/02/23.
//  Copyright © 2023 TBD-patrichel. All rights reserved.
//

import UIKit
import RCoordinator

protocol SampleEventProtocol {
    func handle(event: SampleEvents)
}

enum SampleEvents: Event {

    case goToBuyVC
    case createAccount
    
    func handle(_ handler: SampleEventProtocol) {
        handler.handle(event: self)
    }
}
