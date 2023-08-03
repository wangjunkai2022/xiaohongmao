package com.qennnsad.aknkaksd.data.bean;

/* loaded from: classes3.dex */
public class AddressBean {
    private String latitude;
    private String longitude;

    public AddressBean() {
    }

    public String getLatitude() {
        return this.latitude;
    }

    public String getLongitude() {
        return this.longitude;
    }

    public void setLatitude(String str) {
        this.latitude = str;
    }

    public void setLongitude(String str) {
        this.longitude = str;
    }

    public String toString() {
        return "AddressBean{latitude='" + this.latitude + "', longitude='" + this.longitude + "'}";
    }

    public AddressBean(String str, String str2) {
        this.latitude = str;
        this.longitude = str2;
    }
}
