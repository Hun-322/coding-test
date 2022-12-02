//
//  외계어 사전.swift
//  level - 0
//
//  Created by KSH on 2022/12/02.
//

import Foundation

var set1: Set<Int> = [1, 2, 5, 0]
var set2: Set<Int> = [1, 2]

set1.isSubset(of: set2)
set2.isSubset(of: set1)
