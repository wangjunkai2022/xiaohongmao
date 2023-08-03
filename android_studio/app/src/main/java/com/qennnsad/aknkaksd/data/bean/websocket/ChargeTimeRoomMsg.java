package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class ChargeTimeRoomMsg implements RoomPublicMsg {
    private double beanorignal;
    private String id;

    public double getBeanoriginal() {
        return this.beanorignal;
    }

    public double getBeanorignal() {
        return this.beanorignal;
    }

    public String getId() {
        return this.id;
    }

    public void setBeanorignal(double d4) {
        this.beanorignal = d4;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String toString() {
        return "ChargeTimeRoomMsg{id='" + this.id + "', beanorignal=" + this.beanorignal + '}';
    }
}
