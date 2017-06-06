package entity;

import java.sql.Timestamp;

/**
 * Created by cutoutsy on 02/06/2017.
 */
public class Vote {
    private int id;
    private int postId;
    private int voteTypeId;
    private int userId;
    private Timestamp creationDate;
    private int bountyAmount;
}
