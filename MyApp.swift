import UIKit


enum SocialPlatform {
    case tweitter
    case facebook
    case instagram
    case linkedIn
}

func shareImage(on platform: SocialPlatform){
    switch platform{
    case .tweitter:
        print("shared photos")
    case .facebook:
        print("shared photos")
    case .instagram:
        print("shared photos")
    case .linkedIn:
        print("shared photos")
    }
}


