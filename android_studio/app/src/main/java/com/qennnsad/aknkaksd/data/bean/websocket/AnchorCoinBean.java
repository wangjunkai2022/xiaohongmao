package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class AnchorCoinBean {
    private int amount;
    private int room_id;
    private String type;

    public int getAmount() {
        return this.amount;
    }

    public int getRoom_id() {
        return this.room_id;
    }

    public String getType() {
        return this.type;
    }

    public void setAmount(int i4) {
        this.amount = i4;
    }

    public void setRoom_id(int i4) {
        this.room_id = i4;
    }

    public void setType(String str) {
        this.type = str;
    }

    public String toString() {
        return "AnchorCoinBean{type='" + this.type + "', room_id=" + this.room_id + ", amount=" + this.amount + '}';
    }
}
