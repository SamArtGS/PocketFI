//
//  Resource.swift
//  PocketFI
//
//  Created by Samuel Arturo Garrido Sánchez on 9/8/21.
//

struct Resource {
    let id:Int
    let imageIcon: String
    let resourceTitle: String
    let resources: [PDFelement]?
    
    init(id: Int, imageIcon: String, resourceTitle: String, resources: [PDFelement]? = nil) {
        self.id = id
        self.imageIcon = imageIcon
        self.resourceTitle = resourceTitle
        self.resources = resources
    }
}

struct PDFelement{
    let id: Int
    let name: String
    let size: Float
    let link: String
    let downloaded: Bool
    
    init(id: Int, name: String, size: Float, link: String, downloaded: Bool = false) {
        self.id = id
        self.name = name
        self.size = size
        self.link = link
        self.downloaded = downloaded
    }
    
}
