//
//  AsynchronousRunner.swift
//  Countries
//
//  Created by Aldrin Gama on 2022/05/02.
//

import Foundation

public protocol AsynchronousRunner {
    func runOnConcurrent(_ action: @escaping () -> Void, _ qos: DispatchQoS.QoSClass)
    func runOnMain(_ action: @escaping () -> Void)
}
