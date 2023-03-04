//
//  Event.swift
//  
//
//  Created by Raphael on 18/02/23.
//

import UIKit

public protocol Event {
    associatedtype EventType
    
    func handle(_ handler: EventType)
}

