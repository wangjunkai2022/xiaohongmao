package com.lljjcoder.style.citypickerview.model;

/* loaded from: classes3.dex */
public class DistrictModel {
    private String name;
    private String zipcode;

    public DistrictModel() {
    }

    public String getName() {
        return this.name;
    }

    public String getZipcode() {
        return this.zipcode;
    }

    public void setName(String str) {
        this.name = str;
    }

    public void setZipcode(String str) {
        this.zipcode = str;
    }

    public String toString() {
        return "DistrictModel [name=" + this.name + ", zipcode=" + this.zipcode + "]";
    }

    public DistrictModel(String str, String str2) {
        this.name = str;
        this.zipcode = str2;
    }
}
