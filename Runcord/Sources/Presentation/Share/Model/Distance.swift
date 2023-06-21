//
//  DistanceVO.swift
//  Runcord
//
//  Created by JunHwan Kim on 2023/06/21.
//

struct Distance {
    private let _value: Double
    
    var value: Double {
        get {
            return _value
        }
    }
    
    init(value: Double) {
        self._value = value
    }
    
    func formattedDistanceToString(type: DistanceFormatType) -> String {
        return String(format: type.distanceFormatter, value)
    }
}
