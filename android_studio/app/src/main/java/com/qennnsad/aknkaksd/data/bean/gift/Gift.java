package com.qennnsad.aknkaksd.data.bean.gift;

import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.util.o0;

/* loaded from: classes3.dex */
public class Gift {
    private String cache_name;
    @SerializedName("giftname")
    private String displayName;
    private int exp;
    private String giftswf;
    private String id;
    @SerializedName("gifticon")
    private String imageUrl;
    @SerializedName("is_fan")
    private int isFan;
    @SerializedName("is_free")
    private int isFree;
    private String isred;
    @SerializedName("needcoin")
    private int price;
    private String redId;
    private int toy_bind;
    private String typeId;

    public String getCache_name() {
        int lastIndexOf = this.giftswf.lastIndexOf("/");
        this.cache_name = this.giftswf.substring(lastIndexOf + 1, this.giftswf.lastIndexOf("."));
        o0.g("getCache_name", "getCache_name:" + this.cache_name);
        return this.cache_name;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public int getExp() {
        return this.exp;
    }

    public String getGiftswf() {
        return this.giftswf;
    }

    public String getId() {
        return this.id;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public int getIsFan() {
        return this.isFan;
    }

    public int getIsFree() {
        return this.isFree;
    }

    public String getIsred() {
        return this.isred;
    }

    public int getPrice() {
        return this.price;
    }

    public String getRedId() {
        return this.redId;
    }

    public int getToy_bind() {
        return this.toy_bind;
    }

    public String getTypeId() {
        return this.typeId;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setExp(int i4) {
        this.exp = i4;
    }

    public void setGiftswf(String str) {
        this.giftswf = str;
    }

    public void setId(String str) {
        this.id = str;
    }

    public void setImageUrl(String str) {
        this.imageUrl = str;
    }

    public void setIsFree(int i4) {
        this.isFree = i4;
    }

    public void setIsred(String str) {
        this.isred = str;
    }

    public void setPrice(int i4) {
        this.price = i4;
    }

    public void setRedId(String str) {
        this.redId = str;
    }

    public void setToy_bind(int i4) {
        this.toy_bind = i4;
    }

    public void setTypeId(String str) {
        this.typeId = str;
    }

    public String toString() {
        return "Gift{id='" + this.id + "', typeId='" + this.typeId + "', displayName='" + this.displayName + "', imageUrl='" + this.imageUrl + "', price=" + this.price + ", exp=" + this.exp + ", isred='" + this.isred + "', redId='" + this.redId + "', toy_bind=" + this.toy_bind + ", giftswf='" + this.giftswf + "', cache_name='" + this.cache_name + "', isFan='" + this.isFan + "', isFree='" + this.isFree + "'}";
    }
}
