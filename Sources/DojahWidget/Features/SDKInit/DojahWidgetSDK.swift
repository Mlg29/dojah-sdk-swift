//
//  DojahWidgetSDK.swift
//
//
//  Created by Isaac Iniongun on 01/12/2023.
//

import Foundation
import UIKit

public final class DojahWidgetSDK {
    
    public static func initialize(
        widgetID: String,
        referenceID: String? = nil,
        emailAddress: String? = nil,
        extraUserData: ExtraUserData? = nil,
        navController: UINavigationController) {
        let viewModel = SDKInitViewModel(
            widgetID: widgetID,
            referenceID: referenceID,
            emailAddress: emailAddress,
            extraUserData: extraUserData
        )
        let controller = SDKInitViewController(viewModel: viewModel)
    
        navController.pushViewController(controller, animated: true)
        
    }

    public static func getCachedWidgetIDs() -> [WidgetIDCache] {
        preference.WidgetIDCache
    }
    
    public static func getVerificationResultStatus() -> String {
        preference.VerificationResultStatus
    }
}







