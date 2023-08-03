package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class WsBleDeviceMsg {
    private int cost;
    private int duration;
    private String model;
    private int rotation;
    private int sound;
    private String type;
    private int vibrate;

    public int getCost() {
        return this.cost;
    }

    public int getDuration() {
        return this.duration;
    }

    public String getModel() {
        return this.model;
    }

    public int getRotation() {
        return this.rotation;
    }

    public int getSound() {
        return this.sound;
    }

    public String getType() {
        return this.type;
    }

    public int getVibrate() {
        return this.vibrate;
    }

    public void setCost(int i4) {
        this.cost = i4;
    }

    public void setDuration(int i4) {
        this.duration = i4;
    }

    public void setModel(String str) {
        this.model = str;
    }

    public void setRotation(int i4) {
        this.rotation = i4;
    }

    public void setSound(int i4) {
        this.sound = i4;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setVibrate(int i4) {
        this.vibrate = i4;
    }

    public String toString() {
        return "WsBleDeviceMsg{type='" + this.type + "', model='" + this.model + "', sound=" + this.sound + ", vibrate=" + this.vibrate + ", rotation=" + this.rotation + ", duration=" + this.duration + ", cost=" + this.cost + '}';
    }
}
