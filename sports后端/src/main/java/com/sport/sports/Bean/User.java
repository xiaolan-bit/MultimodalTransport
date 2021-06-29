package com.sport.sports.Bean;
//用户实体
public class User {
    private int id;
    private String username;//用户名
    private String password;//密码
    private String telnum;//电话
    private String role;//角色
    private boolean state;//状态

    public User() {
    }

    public User(String username, String password, String telnum, String role, boolean state) {
        this.username = username;
        this.password = password;
        this.telnum = telnum;
        this.role = role;
        this.state = state;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean getState() {
        return state;
    }

    public void setState(boolean state) {
        this.state = state;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public boolean isState() {
        return state;
    }

    public String getTelnum() {
        return telnum;
    }

    public void setTelnum(String telnum) {
        this.telnum = telnum;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + telnum + '\'' +
                ", role='" + role + '\'' +
                ", state=" + state +
                '}';
    }
}
