package entity;

/**
 * Question Tag Entity
 */
public class Tag {
    private int id;
    private String tagName;
    private int count;
    private int excerptPostId;    //该tag的介绍页面id

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getExcerptPostId() {
        return excerptPostId;
    }

    public void setExcerptPostId(int excerptPostId) {
        this.excerptPostId = excerptPostId;
    }

    public int getWikiPostId() {
        return wikiPostId;
    }

    public void setWikiPostId(int wikiPostId) {
        this.wikiPostId = wikiPostId;
    }

    private int wikiPostId;


}
