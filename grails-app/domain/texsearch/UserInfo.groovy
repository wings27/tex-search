package texsearch

class UserInfo {

    String userName
    String password
    String gender
    String email
    Date birthday
    Date registerDate
    Date lastLoginDate
    String nickName
    String iconURL
    String information
    static constraints = {
        userName(size: 3..15, unique: true)
        password(size: 6..15)
        gender(inList: ["male","female","secret"])
        email(email: true, nullable: true)
        birthday(nullable: true)
        registerDate()
        lastLoginDate()
        nickName(size: 3..15, nullable: true)
        iconURL(url: true, nullable: true)
        information(maxSize: 255, nullable: true)
    }
}
