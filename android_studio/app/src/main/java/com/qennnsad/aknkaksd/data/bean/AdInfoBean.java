package com.qennnsad.aknkaksd.data.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdInfoBean.kt */
@d
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002BW\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\u0002\u0010\u0010J\u0011\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0000H\u0096\u0002J\u0010\u0010!\u001a\u0004\u0018\u00010\u0004HÆ\u0003¢\u0006\u0002\u0010\u0016J\t\u0010\"\u001a\u00020\u0004HÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010$\u001a\u00020\u0004HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0011\u0010'\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fHÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000fHÆ\u0003Jp\u0010)\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00072\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÆ\u0001¢\u0006\u0002\u0010*J\t\u0010+\u001a\u00020\u0004HÖ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010 \u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\u0004HÖ\u0001J\t\u00100\u001a\u00020\u0007HÖ\u0001J\u0019\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0004HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0019\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0015\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0012R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019¨\u00066"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;", "Landroid/os/Parcelable;", "", "id", "", "adType", "scene", "", "rowNo", "picPath", "targetUrl", "content", "", "Lcom/qennnsad/aknkaksd/data/bean/ContentBean;", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V", "getAdType", "()I", "getContent", "()Ljava/util/List;", "getId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getPicPath", "()Ljava/lang/String;", "getRowNo", "getScene", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTargetUrl", "compareTo", "other", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "(Ljava/lang/Integer;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)Lcom/qennnsad/aknkaksd/data/bean/AdInfoBean;", "describeContents", "equals", "", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AdInfoBean implements Parcelable, Comparable<AdInfoBean> {
    @g
    public static final Parcelable.Creator<AdInfoBean> CREATOR = new Creator();
    @SerializedName("adtype")
    private final int adType;
    @h
    private final List<ContentBean> content;
    @h
    private final Integer id;
    @SerializedName("pic_path")
    @h
    private final String picPath;
    @SerializedName("row_no")
    private final int rowNo;
    @h
    private final String scene;
    @h
    private final UrlTarget target;
    @SerializedName("target_url")
    @h
    private final String targetUrl;

    /* compiled from: AdInfoBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<AdInfoBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AdInfoBean createFromParcel(@g Parcel parcel) {
            ArrayList arrayList;
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            Integer valueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            int readInt = parcel.readInt();
            String readString = parcel.readString();
            int readInt2 = parcel.readInt();
            String readString2 = parcel.readString();
            String readString3 = parcel.readString();
            if (parcel.readInt() == 0) {
                arrayList = null;
            } else {
                int readInt3 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(readInt3);
                for (int i4 = 0; i4 != readInt3; i4++) {
                    arrayList2.add(ContentBean.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new AdInfoBean(valueOf, readInt, readString, readInt2, readString2, readString3, arrayList, parcel.readInt() != 0 ? UrlTarget.valueOf(parcel.readString()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AdInfoBean[] newArray(int i4) {
            return new AdInfoBean[i4];
        }
    }

    public AdInfoBean(@h Integer num, int i4, @h String str, int i10, @h String str2, @h String str3, @h List<ContentBean> list, @h UrlTarget urlTarget) {
        this.id = num;
        this.adType = i4;
        this.scene = str;
        this.rowNo = i10;
        this.picPath = str2;
        this.targetUrl = str3;
        this.content = list;
        this.target = urlTarget;
    }

    @h
    public final Integer component1() {
        return this.id;
    }

    public final int component2() {
        return this.adType;
    }

    @h
    public final String component3() {
        return this.scene;
    }

    public final int component4() {
        return this.rowNo;
    }

    @h
    public final String component5() {
        return this.picPath;
    }

    @h
    public final String component6() {
        return this.targetUrl;
    }

    @h
    public final List<ContentBean> component7() {
        return this.content;
    }

    @h
    public final UrlTarget component8() {
        return this.target;
    }

    @g
    public final AdInfoBean copy(@h Integer num, int i4, @h String str, int i10, @h String str2, @h String str3, @h List<ContentBean> list, @h UrlTarget urlTarget) {
        return new AdInfoBean(num, i4, str, i10, str2, str3, list, urlTarget);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AdInfoBean) {
            AdInfoBean adInfoBean = (AdInfoBean) obj;
            return Intrinsics.areEqual(this.id, adInfoBean.id) && this.adType == adInfoBean.adType && Intrinsics.areEqual(this.scene, adInfoBean.scene) && this.rowNo == adInfoBean.rowNo && Intrinsics.areEqual(this.picPath, adInfoBean.picPath) && Intrinsics.areEqual(this.targetUrl, adInfoBean.targetUrl) && Intrinsics.areEqual(this.content, adInfoBean.content) && this.target == adInfoBean.target;
        }
        return false;
    }

    public final int getAdType() {
        return this.adType;
    }

    @h
    public final List<ContentBean> getContent() {
        return this.content;
    }

    @h
    public final Integer getId() {
        return this.id;
    }

    @h
    public final String getPicPath() {
        return this.picPath;
    }

    public final int getRowNo() {
        return this.rowNo;
    }

    @h
    public final String getScene() {
        return this.scene;
    }

    @h
    public final UrlTarget getTarget() {
        return this.target;
    }

    @h
    public final String getTargetUrl() {
        return this.targetUrl;
    }

    public int hashCode() {
        Integer num = this.id;
        int hashCode = (((num == null ? 0 : num.hashCode()) * 31) + this.adType) * 31;
        String str = this.scene;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.rowNo) * 31;
        String str2 = this.picPath;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.targetUrl;
        int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List<ContentBean> list = this.content;
        int hashCode5 = (hashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        UrlTarget urlTarget = this.target;
        return hashCode5 + (urlTarget != null ? urlTarget.hashCode() : 0);
    }

    @g
    public String toString() {
        return "AdInfoBean(id=" + this.id + ", adType=" + this.adType + ", scene=" + this.scene + ", rowNo=" + this.rowNo + ", picPath=" + this.picPath + ", targetUrl=" + this.targetUrl + ", content=" + this.content + ", target=" + this.target + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        Integer num = this.id;
        if (num == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(num.intValue());
        }
        out.writeInt(this.adType);
        out.writeString(this.scene);
        out.writeInt(this.rowNo);
        out.writeString(this.picPath);
        out.writeString(this.targetUrl);
        List<ContentBean> list = this.content;
        if (list == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeInt(list.size());
            for (ContentBean contentBean : list) {
                contentBean.writeToParcel(out, i4);
            }
        }
        UrlTarget urlTarget = this.target;
        if (urlTarget == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeString(urlTarget.name());
    }

    @Override // java.lang.Comparable
    public int compareTo(@g AdInfoBean other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int i4 = this.rowNo - other.rowNo;
        return i4 == 0 ? this.adType - other.adType : i4;
    }
}
