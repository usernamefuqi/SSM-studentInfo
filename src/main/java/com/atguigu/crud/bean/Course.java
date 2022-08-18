package com.atguigu.crud.bean;

public class Course {
    private String cid;

    private String cname;

    private String cintroduction;

    private String type;

    private String belongcoll;

    private String belongpro;

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname == null ? null : cname.trim();
    }

    public String getCintroduction() {
        return cintroduction;
    }

    public void setCintroduction(String cintroduction) {
        this.cintroduction = cintroduction == null ? null : cintroduction.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getBelongcoll() {
        return belongcoll;
    }

    public void setBelongcoll(String belongcoll) {
        this.belongcoll = belongcoll == null ? null : belongcoll.trim();
    }

    public String getBelongpro() {
        return belongpro;
    }

    public void setBelongpro(String belongpro) {
        this.belongpro = belongpro == null ? null : belongpro.trim();
    }
}