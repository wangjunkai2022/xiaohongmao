package com.qennnsad.aknkaksd.data.bean.websocket;

/* loaded from: classes3.dex */
public class PeerageProfitMsg extends RoomMysterableMsg {
    private String amount;
    private String name;
    private String title;
    private String type;
    private String unit;

    public String getAmount() {
        return this.amount;
    }

    public String getName() {
        return this.name;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getUnit() {
        return this.unit;
    }

    public void setAmount(String str) {
        this.amount = str;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public void setUnit(String str) {
        this.unit = str;
    }

    public String toString() {
        return "PeerageProfitMsg{type='" + this.type + "', title='" + this.title + "', name='" + this.name + "', amount='" + this.amount + "', unit='" + this.unit + "', is_mystery=" + getIsMystery() + '}';
    }
}
