//
//  USIGNormalizadorAddressManager.swift
//  USIGNormalizador
//
//  Created by Rita Zerrizuela on 1/8/18.
//  Copyright © 2018 GCBA. All rights reserved.
//

import Foundation
import Foundation
import RxSwift
import Moya

internal protocol USIGNormalizadorAddressManager {
    func getStreams(from sources: [Observable<USIGNormalizadorResponse>]) -> Observable<[USIGNormalizadorResponse]>
}

internal class AddressManager: USIGNormalizadorAddressManager {
    func getStreams(from sources: [Observable<USIGNormalizadorResponse>]) -> Observable<[USIGNormalizadorResponse]> {
        let streams = sources.map { stream in stream.observeOn(ConcurrentMainScheduler.instance) }
        
        return Observable.zip(streams)
    }
}
