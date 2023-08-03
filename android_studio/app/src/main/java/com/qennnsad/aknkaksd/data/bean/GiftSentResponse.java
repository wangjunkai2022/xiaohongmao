package com.qennnsad.aknkaksd.data.bean;

import com.google.gson.annotations.SerializedName;

/* loaded from: classes3.dex */
public class GiftSentResponse {
    private int coinbalance;
    @SerializedName("emceelevel")
    private int emceeLevel;
    private int remainfornextlev;

    public int getCoinbalance() {
        return this.coinbalance;
    }

    public int getEmceeLevel() {
        return this.emceeLevel;
    }

    public int getRemainfornextlev() {
        return this.remainfornextlev;
    }

    public void setCoinbalance(int i4) {
        this.coinbalance = i4;
    }

    public void setEmceeLevel(int i4) {
        this.emceeLevel = i4;
    }

    public void setRemainfornextlev(int i4) {
        this.remainfornextlev = i4;
    }

    public String toString() {
        return "GiftSentResponse{coinbalance='" + this.coinbalance + "',remainfornextlev='" + this.remainfornextlev + "',emceeLevel='" + this.emceeLevel + "'}";
    }
}
