package com.netcracker.studPract.clientWeb.ChatUserUtils;

import javax.websocket.Session;

public class ChatUser {

    private String name;
    private String role;
    private Session session;
    private Session userToSession;

    public Session getUserToSession() {
        return userToSession;
    }

    public void setUserToSession(Session userToSession) {
        this.userToSession = userToSession;
    }

    public Session getSession() {
        return session;
    }

    public void setSession(Session session) {
        this.session = session;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

}
