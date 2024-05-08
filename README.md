# 1. Enum. A group by related values<br>
https://www.youtube.com/watch?v=CdBL7m1AeII&t=4s


    enum SocialPlatform {
        case twitter
        case facebook
        case instagram
        case linkedIn
    }
    
    func shareImage(on platform: SocialPlatform){
        switch platform{
        case .twitter:
            print("twitter shared photos")
        case .facebook:
            print("facebook shared photos")
        case .instagram:
            print("instagram shared photos")
        case .linkedIn:
            print("linkedIn shared photos")
        }
    }
    
    shareImage(on: .twitter)
