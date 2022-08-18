package com.atguigu.crud.bean;

public class CoursePlan {
    private String courseclass;

    private String coursetime;

    private String courseweek;

    private String cid;

    private String tid;

    private String classroom;

    private String credits;

    private String period;

    private String totalnum;

    public CoursePlan() {
    }

    public String getCourseclass() {
        return courseclass;
    }

    public void setCourseclass(String courseclass) {
        this.courseclass = courseclass == null ? null : courseclass.trim();
    }

    public String getCoursetime() {
        return coursetime;
    }

    public void setCoursetime(String coursetime) {
        this.coursetime = coursetime == null ? null : coursetime.trim();
    }

    public String getCourseweek() {
        return courseweek;
    }

    public void setCourseweek(String courseweek) {
        this.courseweek = courseweek == null ? null : courseweek.trim();
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid == null ? null : cid.trim();
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid == null ? null : tid.trim();
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom == null ? null : classroom.trim();
    }

    public void setCredits(String credits) {
        this.credits = credits;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public void setTotalnum(String totalnum) {
        this.totalnum = totalnum;
    }

    public String getCredits() {
        return credits;
    }

    public String getPeriod() {
        return period;
    }

    public String getTotalnum() {
        return totalnum;
    }
}