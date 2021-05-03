package arthur.dy.lee.model;

import java.io.Serializable;

public class BigObject implements Serializable {
    private static int bigObjectFinalizeCount;

    /**
     * id  id
     **/
    private Long id;

    /**
     * 名称  name
     **/
    private String name;

    /**
     * 备注  bak
     **/
    private String bak;

    /**
     * 内容  content
     **/
    private byte[] content;

    /**
     * tableName: t_big_object
     **/
    private static final long serialVersionUID = 1L;

    /**
     * id  id
     **/
    public Long getId() {
        return id;
    }

    /**
     * id  id
     **/
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 名称  name
     **/
    public String getName() {
        return name;
    }

    /**
     * 名称  name
     **/
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 备注  bak
     **/
    public String getBak() {
        return bak;
    }

    /**
     * 备注  bak
     **/
    public void setBak(String bak) {
        this.bak = bak;
    }

    /**
     * 内容  content
     **/
    public byte[] getContent() {
        return content;
    }

    /**
     * 内容  content
     **/
    public void setContent(byte[] content) {
        this.content = content;
    }

    public static int getBigObjectFinalizeCount() {
        return bigObjectFinalizeCount;
    }

    @Override
    protected void finalize() throws Throwable {
        bigObjectFinalizeCount++;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", bak=").append(bak);
        sb.append(", content=").append(content);
        sb.append("]");
        return sb.toString();
    }
}