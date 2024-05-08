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
    //Results: "twitter shared photos" printed

Use Enum to store constant to make them more readable<br>

        enum SFSymbols {
            static let location = UIImage(systemName: "mappin.and.ellipse")
            static let repos = UIImage(systemName: "folder")
            static let gists = UIImage(systemName: "text.alignleft")
            static let followers = UIImage(systemName: "heart")
            static let following = UIImage(systemName: "person.2")
        }

                
        func set(itemInfoType: ItemInfoType, withCount count: Int) {
            switch itemInfoType {
            case .repos:
                symbolImageView.image = SFSymbols.repos
                titleLabel.text = "Public Repos"
            case .gists:
                symbolImageView.image = SFSymbols.gists
                titleLabel.text = "Public Gists"
            case .followers:
                symbolImageView.image = SFSymbols.followers titleLabel.text = "Followers"
            case .following:
                symbolImageView.image = SFSymbols.following titleLabel.text = "Following"
            }
            countLabel.text = String (count)
        }







