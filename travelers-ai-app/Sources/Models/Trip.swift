class Trip {
    var destination: String
    var travelType: TravelType
    var accommodationType: AccommodationType
    var activities: [Activity]
    var rewardsCriteria: RewardsCriteria

    init(destination: String, travelType: TravelType, accommodationType: AccommodationType, activities: [Activity], rewardsCriteria: RewardsCriteria) {
        self.destination = destination
        self.travelType = travelType
        self.accommodationType = accommodationType
        self.activities = activities
        self.rewardsCriteria = rewardsCriteria
    }
}

enum TravelType {
    case solo
    case group
    case couple
}

enum AccommodationType {
    case hostel
    case hotel
}

enum Activity {
    case sightseeing
    case beach
    case city
}

struct RewardsCriteria {
    var minFollowers: Int
    var minViews: Int
}