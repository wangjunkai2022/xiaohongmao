package com.qennnsad.aknkaksd.data.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AdConfigBean.kt */
@d
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J-\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÆ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0012HÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/BannerAdBean;", "Landroid/os/Parcelable;", "imageUrl", "", "targetUrl", TypedValues.Attributes.S_TARGET, "Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "(Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;)V", "getImageUrl", "()Ljava/lang/String;", "getTarget", "()Lcom/qennnsad/aknkaksd/data/bean/UrlTarget;", "getTargetUrl", "component1", "component2", "component3", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class BannerAdBean implements Parcelable {
    @g
    public static final Parcelable.Creator<BannerAdBean> CREATOR = new Creator();
    @SerializedName(alternate = {"img_url"}, value = "pic_path")
    @h
    private final String imageUrl;
    @h
    private final UrlTarget target;
    @SerializedName("target_url")
    @h
    private final String targetUrl;

    /* compiled from: AdConfigBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<BannerAdBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final BannerAdBean createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new BannerAdBean(parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : UrlTarget.valueOf(parcel.readString()));
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final BannerAdBean[] newArray(int i4) {
            return new BannerAdBean[i4];
        }
    }

    public BannerAdBean(@h String str, @h String str2, @h UrlTarget urlTarget) {
        this.imageUrl = str;
        this.targetUrl = str2;
        this.target = urlTarget;
    }

    public static /* synthetic */ BannerAdBean copy$default(BannerAdBean bannerAdBean, String str, String str2, UrlTarget urlTarget, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = bannerAdBean.imageUrl;
        }
        if ((i4 & 2) != 0) {
            str2 = bannerAdBean.targetUrl;
        }
        if ((i4 & 4) != 0) {
            urlTarget = bannerAdBean.target;
        }
        return bannerAdBean.copy(str, str2, urlTarget);
    }

    @h
    public final String component1() {
        return this.imageUrl;
    }

    @h
    public final String component2() {
        return this.targetUrl;
    }

    @h
    public final UrlTarget component3() {
        return this.target;
    }

    @g
    public final BannerAdBean copy(@h String str, @h String str2, @h UrlTarget urlTarget) {
        return new BannerAdBean(str, str2, urlTarget);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BannerAdBean) {
            BannerAdBean bannerAdBean = (BannerAdBean) obj;
            return Intrinsics.areEqual(this.imageUrl, bannerAdBean.imageUrl) && Intrinsics.areEqual(this.targetUrl, bannerAdBean.targetUrl) && this.target == bannerAdBean.target;
        }
        return false;
    }

    @h
    public final String getImageUrl() {
        return this.imageUrl;
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
        String str = this.imageUrl;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.targetUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        UrlTarget urlTarget = this.target;
        return hashCode2 + (urlTarget != null ? urlTarget.hashCode() : 0);
    }

    @g
    public String toString() {
        return "BannerAdBean(imageUrl=" + this.imageUrl + ", targetUrl=" + this.targetUrl + ", target=" + this.target + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.imageUrl);
        out.writeString(this.targetUrl);
        UrlTarget urlTarget = this.target;
        if (urlTarget == null) {
            out.writeInt(0);
            return;
        }
        out.writeInt(1);
        out.writeString(urlTarget.name());
    }
}
