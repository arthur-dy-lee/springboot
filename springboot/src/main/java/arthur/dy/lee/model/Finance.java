package arthur.dy.lee.model;

import java.io.Serializable;
import java.util.Date;

public class Finance  implements Serializable {
    /** id  id **/
    private String id;

    /** 消费项目id  fid **/
    private Integer fid;

    /** 名称  consumerProject **/
    private String consumerproject;

    /** 消费者/买单人  consumer **/
    private String consumer;

    /** 钱花在谁身上  forwho **/
    private String forwho;

    /** 钱花在谁身上  fee **/
    private Float fee;

    /** 消费时间  consumerDate **/
    private Date consumerdate;

    /** 花费描述  comment **/
    private String comment;

    /**   deleteFlag **/
    private Boolean deleteflag;

    /** 花费描述  createDate **/
    private Date createdate;

    /** 花费描述  modifyDate **/
    private Date modifydate;

    /** 填写人  creater **/
    private String creater;

    /** 备注  bak **/
    private String bak;

    /**   tableName: finance   **/
    private static final long serialVersionUID = 1L;

    /**   id  id   **/
    public String getId() {
        return id;
    }

    /**   id  id   **/
    public void setId(String id) {
        this.id = id;
    }

    /**   消费项目id  fid   **/
    public Integer getFid() {
        return fid;
    }

    /**   消费项目id  fid   **/
    public void setFid(Integer fid) {
        this.fid = fid;
    }

    /**   名称  consumerProject   **/
    public String getConsumerproject() {
        return consumerproject;
    }

    /**   名称  consumerProject   **/
    public void setConsumerproject(String consumerproject) {
        this.consumerproject = consumerproject;
    }

    /**   消费者/买单人  consumer   **/
    public String getConsumer() {
        return consumer;
    }

    /**   消费者/买单人  consumer   **/
    public void setConsumer(String consumer) {
        this.consumer = consumer;
    }

    /**   钱花在谁身上  forwho   **/
    public String getForwho() {
        return forwho;
    }

    /**   钱花在谁身上  forwho   **/
    public void setForwho(String forwho) {
        this.forwho = forwho;
    }

    /**   钱花在谁身上  fee   **/
    public Float getFee() {
        return fee;
    }

    /**   钱花在谁身上  fee   **/
    public void setFee(Float fee) {
        this.fee = fee;
    }

    /**   消费时间  consumerDate   **/
    public Date getConsumerdate() {
        return consumerdate;
    }

    /**   消费时间  consumerDate   **/
    public void setConsumerdate(Date consumerdate) {
        this.consumerdate = consumerdate;
    }

    /**   花费描述  comment   **/
    public String getComment() {
        return comment;
    }

    /**   花费描述  comment   **/
    public void setComment(String comment) {
        this.comment = comment;
    }

    /**     deleteFlag   **/
    public Boolean getDeleteflag() {
        return deleteflag;
    }

    /**     deleteFlag   **/
    public void setDeleteflag(Boolean deleteflag) {
        this.deleteflag = deleteflag;
    }

    /**   花费描述  createDate   **/
    public Date getCreatedate() {
        return createdate;
    }

    /**   花费描述  createDate   **/
    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    /**   花费描述  modifyDate   **/
    public Date getModifydate() {
        return modifydate;
    }

    /**   花费描述  modifyDate   **/
    public void setModifydate(Date modifydate) {
        this.modifydate = modifydate;
    }

    /**   填写人  creater   **/
    public String getCreater() {
        return creater;
    }

    /**   填写人  creater   **/
    public void setCreater(String creater) {
        this.creater = creater;
    }

    /**   备注  bak   **/
    public String getBak() {
        return bak;
    }

    /**   备注  bak   **/
    public void setBak(String bak) {
        this.bak = bak;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", fid=").append(fid);
        sb.append(", consumerproject=").append(consumerproject);
        sb.append(", consumer=").append(consumer);
        sb.append(", forwho=").append(forwho);
        sb.append(", fee=").append(fee);
        sb.append(", consumerdate=").append(consumerdate);
        sb.append(", comment=").append(comment);
        sb.append(", deleteflag=").append(deleteflag);
        sb.append(", createdate=").append(createdate);
        sb.append(", modifydate=").append(modifydate);
        sb.append(", creater=").append(creater);
        sb.append(", bak=").append(bak);
        sb.append("]");
        return sb.toString();
    }

//    @Override protected Serializable pkVal() {
//        return id;
//    }
}