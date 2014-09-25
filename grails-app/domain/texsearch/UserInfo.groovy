package texsearch

class UserInfo {

    String userName
    String password
    Date registerDate
    Date lastLoginDate
    String nickName
    String iconURL
    String information
    static constraints = {
        userName(size: 3..15, unique: true)
        password()
        registerDate()
        lastLoginDate()
        nickName(size: 3..15, nullable: true)
        iconURL(url: true, nullable: true)
        information(maxSize: 255, nullable: true)
    }
}
