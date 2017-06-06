package entity;

import java.sql.Timestamp;

/**
 * Question Post Entity Class
 */
public class Post {

    private int id;
    private int postTypeId;    //1表示问题，2表示评论
    private int acceptedAnswerId;
    private int parentId;   //如果post是评论，则parentId则是问题id
    private Timestamp creationDate;
    private Timestamp deletionDate;
    private int Score;
    private int viewCount;
    private String body;
    private int ownerUserId;
    private String ownerDisplayName;
    private int lastEditorUserId;
    private String lastEditorDisplayName;
    private Timestamp lastEditDate;
    private Timestamp lastActivityDate;
    private String title;
    private String tags;
    private int answerCount;    //问题答案数目
    private int commentCount;   //问题评论数目
    private int favoriteCount;
    private Timestamp closedDate;
    private Timestamp communityOwnedDate;
}
