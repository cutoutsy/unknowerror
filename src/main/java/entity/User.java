package entity;

import java.sql.Timestamp;

/**
 * User Entity
 */
public class User {
    private Integer id;
    private Integer reputation;    //声望
    private Timestamp createDate;    //账号创建时间
    private String displayName;
    private Timestamp lastAccessDate;   //最后活动时间
    private String webSiteUrl;
    private String location;
    private String abountMe;
    private Integer views;
    private Integer upVotes;
    private Integer downVotes;
    private String profileImageUrl;
    private String emailHash;
    private String password;
    private Integer age;
    private Integer accountId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getReputation() {
        return reputation;
    }

    public void setReputation(Integer reputation) {
        this.reputation = reputation;
    }

    public Timestamp getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Timestamp createDate) {
        this.createDate = createDate;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public Timestamp getLastAccessDate() {
        return lastAccessDate;
    }

    public void setLastAccessDate(Timestamp lastAccessDate) {
        this.lastAccessDate = lastAccessDate;
    }

    public String getWebSiteUrl() {
        return webSiteUrl;
    }

    public void setWebSiteUrl(String webSiteUrl) {
        this.webSiteUrl = webSiteUrl;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getAbountMe() {
        return abountMe;
    }

    public void setAbountMe(String abountMe) {
        this.abountMe = abountMe;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public Integer getUpVotes() {
        return upVotes;
    }

    public void setUpVotes(Integer upVotes) {
        this.upVotes = upVotes;
    }

    public Integer getDownVotes() {
        return downVotes;
    }

    public void setDownVotes(Integer downVotes) {
        this.downVotes = downVotes;
    }

    public String getProfileImageUrl() {
        return profileImageUrl;
    }

    public void setProfileImageUrl(String profileImageUrl) {
        this.profileImageUrl = profileImageUrl;
    }

    public String getEmailHash() {
        return emailHash;
    }

    public void setEmailHash(String emailHash) {
        this.emailHash = emailHash;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }
}
