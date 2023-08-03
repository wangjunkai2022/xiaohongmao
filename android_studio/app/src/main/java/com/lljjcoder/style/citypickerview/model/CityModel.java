package com.lljjcoder.style.citypickerview.model;

import java.util.List;

/* loaded from: classes3.dex */
public class CityModel {
    private List<DistrictModel> districtList;
    private String name;

    public CityModel() {
    }

    public List<DistrictModel> getDistrictList() {
        return this.districtList;
    }

    public String getName() {
        return this.name;
    }

    public void setDistrictList(List<DistrictModel> list) {
        this.districtList = list;
    }

    public void setName(String str) {
        this.name = str;
    }

    public String toString() {
        return "CityModel [name=" + this.name + ", districtList=" + this.districtList + "]";
    }

    public CityModel(String str, List<DistrictModel> list) {
        this.name = str;
        this.districtList = list;
    }
}
