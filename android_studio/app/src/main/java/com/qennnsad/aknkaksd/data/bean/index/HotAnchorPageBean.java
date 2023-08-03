package com.qennnsad.aknkaksd.data.bean.index;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.AdInfoBean;
import com.qennnsad.aknkaksd.data.bean.BannerAdBean;
import java.util.List;

/* loaded from: classes3.dex */
public class HotAnchorPageBean implements Parcelable {
    public static final Parcelable.Creator<HotAnchorPageBean> CREATOR = new Parcelable.Creator<HotAnchorPageBean>() { // from class: com.qennnsad.aknkaksd.data.bean.index.HotAnchorPageBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HotAnchorPageBean createFromParcel(Parcel parcel) {
            return new HotAnchorPageBean(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HotAnchorPageBean[] newArray(int i4) {
            return new HotAnchorPageBean[i4];
        }
    };
    private List<AdInfoBean> adlist;
    private List<BannerAdBean> banner;
    private List<HotAnchorSummary> list;
    @SerializedName("page_count")
    private int totalCount;

    protected HotAnchorPageBean(Parcel parcel) {
        this.totalCount = parcel.readInt();
        this.list = parcel.createTypedArrayList(HotAnchorSummary.CREATOR);
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

    public List<HotAnchorSummary> getList() {
        return this.list;
    }

    public int getTotalCount() {
        return this.totalCount;
    }

    public void setAdlist(List<AdInfoBean> list) {
        this.adlist = list;
    }

    public void setBanner(List<BannerAdBean> list) {
        this.banner = list;
    }

    public void setList(List<HotAnchorSummary> list) {
        this.list = list;
    }

    public void setTotalCount(int i4) {
        this.totalCount = i4;
    }

    public String toString() {
        return "HotAnchorPageBean{totalCount=" + this.totalCount + ", list=" + this.list + ", banner=" + this.banner + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeInt(this.totalCount);
        parcel.writeTypedList(this.list);
        parcel.writeTypedList(this.adlist);
        parcel.writeTypedList(this.banner);
    }
}
