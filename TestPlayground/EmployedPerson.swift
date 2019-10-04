//
//  Creature.swift
//  TestPlayground
//
//  Created by Leon Liefting on 10/4/19.
//  Copyright © 2019 Leon Liefting. All rights reserved.
//

import Foundation

enum Job {
    case engineer
    case nurse
    
    var salary: Int {
        switch self {
        case .engineer:
            return 4000
        case .nurse:
            return 2500
        }
    }
}

class EmployedPerson: NSObject {
    let job: Job
    
    public init(job: Job) {
        self.job = job
    }
    
    func getSalary() -> Int {
        return job.salary
    }
    
}
