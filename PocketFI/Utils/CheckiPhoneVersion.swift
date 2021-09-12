//
//  CheckiPhoneVersion.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/11/21.
//

import UIKit

enum CheckIphoneModel {
    case iPhonePequeño
    case iPhoneRegular
    case iPhonePlus
    case iPhoneX
    case iPhoneMax
    case iPhoneXr
    
    static func checkIphoneModel() -> CheckIphoneModel{
        switch UIScreen.main.nativeBounds.height {
            case 1136: //5,5s,SE
                return CheckIphoneModel.iPhonePequeño
            case 1334: //6,7,8
                return CheckIphoneModel.iPhoneRegular
            case 1920, 2208:// 6+,7+,8+
                return CheckIphoneModel.iPhonePlus
            case 2436: // X, Xs, 11Pro
                return CheckIphoneModel.iPhoneX
            case 2688: // Xs Max, 11 Pro Max
                return CheckIphoneModel.iPhoneMax
            case 1792: // Xr, 11
                return CheckIphoneModel.iPhoneXr
            default:
                return CheckIphoneModel.iPhoneRegular
            }
    }
}
