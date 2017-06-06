package entity;

import java.sql.Timestamp;

/**
 * Badge entity
 *
 * Id         UserId    Name      Date                 Class    TagBased
 * 13631468   4763974   Informed  2015-04-08 12:48:35  3        false
 *
 */
public class Badge {
    private int id;
    private int userId;
    private String name;
    private Timestamp date;
    private int badgeClass;
    private boolean tagBased;
}
