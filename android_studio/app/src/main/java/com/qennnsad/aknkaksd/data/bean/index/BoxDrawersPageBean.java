package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import java.util.List;

/* loaded from: classes3.dex */
public class BoxDrawersPageBean implements Parcelable {
    public static final Parcelable.Creator<BoxDrawersPageBean> CREATOR = new Parcelable.Creator<BoxDrawersPageBean>() { // from class: com.qennnsad.aknkaksd.data.bean.index.BoxDrawersPageBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxDrawersPageBean createFromParcel(Parcel parcel) {
            return new BoxDrawersPageBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BoxDrawersPageBean[] newArray(int i4) {
            return new BoxDrawersPageBean[i4];
        }
    };
    private List<BannerAdBean> banner;
    private List<BoxDrawersBean> list;
    private int page_count;
    private String page_index;
    private String page_size;
    private int row_count;

    protected BoxDrawersPageBean(Parcel parcel) {
        this.row_count = parcel.readInt();
        this.page_index = parcel.readString();
        this.page_size = parcel.readString();
        this.page_count = parcel.readInt();
        this.list = parcel.createTypedArrayList(BoxDrawersBean.CREATOR);
        this.banner = parcel.createTypedArrayList(BannerAdBean.CREATOR);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<BannerAdBean> getBanner() {
        return this.banner;
    }

    public List<BoxDrawersBean> getList() {
        return this.list;
    }

    public int getPage_count() {
        return this.page_count;
    }

    public String getPage_index() {
        return this.page_index;
    }

    public String getPage_size() {
        return this.page_size;
    }

    public int getRow_count() {
        return this.row_count;
    }

    public void setBanner(List<BannerAdBean> list) {
        this.banner = list;
    }

    public void setList(List<BoxDrawersBean> list) {
        this.list = list;
    }

    public void setPage_count(int i4) {
        this.page_count = i4;
    }

    public void setPage_index(String str) {
        this.page_index = str;
    }

    public void setPage_size(String str) {
        this.page_size = str;
    }

    public void setRow_count(int i4) {
        this.row_count = i4;
    }

    public String toString() {
        return "BoxDrawersPageBean{row_count=" + this.row_count + ", page_index='" + this.page_index + "', page_size='" + this.page_size + "', page_count=" + this.page_count + ", list=" + this.list + ", banner=" + this.banner + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.row_count);
        parcel.writeString(this.page_index);
        parcel.writeString(this.page_size);
        parcel.writeInt(this.page_count);
        parcel.writeTypedList(this.list);
        parcel.writeTypedList(this.banner);
    }
}
