//
//  Images.swift
//  ImageListApp
//
//  Created by Charles on 29/09/24.
//

struct ImageData:Codable {
    
    var id:String
    var author:String
    var width:Int
    var height:Int
    var imageURL:String
    var downloadURL:String
    
    enum CodingKeys:String,CodingKey {
        case id = "id"
        case author = "author"
        case width = "width"
        case height = "height"
        case imageURL = "url"
        case downloadURL = "download_url"
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.author = try container.decode(String.self, forKey: .author)
        self.width = try container.decode(Int.self, forKey: .width)
        self.height = try container.decode(Int.self, forKey: .height)
        self.imageURL = try container.decode(String.self, forKey: .imageURL)
        self.downloadURL = try container.decode(String.self, forKey: .downloadURL)
    }
    
}
