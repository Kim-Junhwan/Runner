//
//  RecordRunningCoordinator.swift
//  RunningCrew
//
//  Created by JunHwan Kim on 2023/02/12.
//

import UIKit

final class RecordRunningCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    var childCoordinators: [Coordinator]
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.childCoordinators = []
    }
    
    func start() {
        showRecordRunningViewController()
    }
    
    func showRecordRunningViewController() {
        self.navigationController.isNavigationBarHidden = true
        let runningStartVC = RunningStartViewController(locationManager: CoreLocationManager())
        self.navigationController.pushViewController(runningStartVC, animated: false)
    }
    
    deinit {
        print("deinit recordRunningCoordinator")
    }
    
}
