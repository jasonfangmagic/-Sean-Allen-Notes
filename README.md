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

Get the raw values
    
        enum SocialPlatform: String {
            case twitter = "This is my favorite"
            case facebook = "ok"
            case instagram = "don't use"
            case linkedIn = "need to post more"
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
        
        //shareImage(on: .twitter)
        
        func getSeanOpinion(on platform: SocialPlatform){
            let opinion = platform.rawValue
            print(opinion)
        }
        
        getSeanOpinion(on: .twitter)
        //Printed "This is my favorite"
        
CaseIterable

        for platform in SocialPlatform.allCases {
            print(platform.rawValue)
        }

Associate Values

        enum SocialMediaPlatform {
            case tweitter(followers: Int)
            case youtube(subscribers: Int)
        }
        
        
        func getSponsorship(for platform: SocialMediaPlatform){
            switch platform {
            case .tweitter(let followers) where followers > 10000:
                print("eligible")
            case .youtube(let subscribers) where subscribers > 25000:
                print("eligible")
        }
        
        getSponsorship(for: .tweitter(followers: 500))


# 2. LazyVGrid and LazyHGrid. Lazy means the view gets initialized as they needed

A container view that arranges its child views in a grid that grows vertically, creating items only as needed.<br>
https://developer.apple.com/documentation/swiftui/lazyvgrid

# 3. ForEach is just like For Loop to iterate views in SwiftUI

        ForEach(MockData.frameworks, id: \.self) { framework in
                        FrameworkTitleView(name: framework.name, imgaeName: framework.imageName)
                    }

# 4. @StateObject
https://developer.apple.com/documentation/swiftui/stateobject <br>
A property wrapper type that instantiates an observable object.<br>
Similar to State. This viewmodel stays in the view.

        




