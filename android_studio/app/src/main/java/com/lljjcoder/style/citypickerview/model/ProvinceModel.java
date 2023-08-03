package com.lljjcoder.style.citypickerview.model;

import java.util.List;

/* loaded from: classes3.dex */
public class ProvinceModel {
    private List<CityModel> cityList;
    private String name;

    public ProvinceModel() {
    }

    public List<CityModel> getCityList() {
        return this.cityList;
    }

    public String getName() {
        return this.name;
    }

    public void setCityList(List<CityModel> list) {
        this.cityList = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "ProvinceModel [name=" + this.name + ", cityList=" + this.cityList + "]";
    }

    public ProvinceModel(String str, List<CityModel> list) {
        this.name = str;
        this.cityList = list;
    }
}
