//
//  CharacterRepository.swift
//  Models
//
//  Created by Rafael Bartolome on 21/03/2020.
//  Copyright © 2020 Rafael Bartolome. All rights reserved.
//

import Foundation

public typealias CharacterCompletion = (_ result: Result<Character, CharacterRepositoryError>) -> Void
public typealias CharactersCompletion = (_ result: Result<[Character], CharacterRepositoryError>) -> Void

public protocol CharacterRepository: AnyObject {
    func characters(nameStartsWith: String?,
                    offset: Int?,
                    completion: @escaping CharactersCompletion)
    func character(with id: Int, completion: @escaping CharacterCompletion)
}

class InternalCharacterRepository {
    
    let characterService: CharacterServiceProtocol
    
    init(characterService: CharacterServiceProtocol) {
        #warning("TODO: WIP multicast delegate")

        self.characterService = characterService
    }
}

extension InternalCharacterRepository: CharacterRepository{
    func characters(nameStartsWith: String?,
                    offset: Int?,
                    completion: @escaping CharactersCompletion) {
        #warning("TODO: WIP storage")
        characterService.characters(nameStartsWith: nameStartsWith, offset: offset, completion: completion)
    }
    
    func character(with id: Int, completion: @escaping CharacterCompletion) {
        #warning("TODO: WIP storage")
        characterService.character(with: id, completion: completion)
    }
}
