package com.qennnsad.aknkaksd.data.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;

/* loaded from: classes3.dex */
public class AnchorPageBean<T> implements Parcelable {
    public static final Parcelable.Creator<AnchorPageBean> CREATOR = new Parcelable.Creator<AnchorPageBean>() { // from class: com.qennnsad.aknkaksd.data.bean.AnchorPageBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AnchorPageBean createFromParcel(Parcel parcel) {
            return new AnchorPageBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AnchorPageBean[] newArray(int i4) {
            return new AnchorPageBean[i4];
        }
    };
    private List<AdInfoBean> adlist;
    private List<BannerAdBean> banner;
    private List<T> list;
    @SerializedName(f.f47744a)
    private int page;
    @SerializedName("page_count")
    private int page_cnt;
    @SerializedName("page_index")
    private int page_index;
    @SerializedName(f.f47745b)
    private int size;
    @SerializedName("total_cnt")
    private int total_cnt;

    protected AnchorPageBean(Parcel parcel) {
        this.page_index = 1;
        this.total_cnt = parcel.readInt();
        this.page = parcel.readInt();
        this.page_index = parcel.readInt();
        this.size = parcel.readInt();
        this.page_cnt = parcel.readInt();
        this.adlist = parcel.createTypedArrayList(AdInfoBean.CREATOR);
        this.banner = parcel.createTypedArrayList(BannerAdBean.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<AdInfoBean> getAdlist() {
        return this.adlist;
    }

    public List<BannerAdBean> getBanner() {
        return this.banner;
    }

    public List<T> getList() {
        return this.list;
    }

    public int getPage() {
        return this.page;
    }

    public int getPage_cnt() {
        return this.page_cnt;
    }

    public int getPage_index() {
        return this.page_index;
    }

    public int getSize() {
        return this.size;
    }

    public int getTotal_cnt() {
        return this.total_cnt;
    }

    public void setAdlist(List<AdInfoBean> list) {
        this.adlist = list;
    }

    public void setBanner(List<BannerAdBean> list) {
        this.banner = list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    public void setPage(int i4) {
        this.page = i4;
    }

    public void setPage_cnt(int i4) {
        this.page_cnt = i4;
    }

    public void setPage_index(int i4) {
        this.page_index = i4;
    }

    public void setSize(int i4) {
        this.size = i4;
    }

    public void setTotal_cnt(int i4) {
        this.total_cnt = i4;
    }

    public String toString() {
        return "AnchorPageBean{total_cnt=" + this.total_cnt + ", page=" + this.page + ", page_index=" + this.page_index + ", size=" + this.size + ", page_cnt=" + this.page_cnt + ", list=" + this.list + ", adlist=" + this.adlist + ", banner=" + this.banner + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.total_cnt);
        parcel.writeInt(this.page);
        parcel.writeInt(this.page_index);
        parcel.writeInt(this.size);
        parcel.writeInt(this.page_cnt);
        parcel.writeTypedList(this.adlist);
        parcel.writeTypedList(this.banner);
    }
}
