package com.qennnsad.aknkaksd.data.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AppUpdateBean.kt */
@d
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0012\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J;\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u0003HÆ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aHÖ\u0003J\t\u0010\u001b\u001a\u00020\u0016HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0016HÖ\u0001R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\nR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\nR\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\n¨\u0006\""}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/AppUpdateBean;", "Landroid/os/Parcelable;", "apkVersion", "", "apkRequired", "apkAddress", "apkWeb", "description", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getApkAddress", "()Ljava/lang/String;", "getApkRequired", "getApkVersion", "getApkWeb", "getDescription", "component1", "component2", "component3", "component4", "component5", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AppUpdateBean implements Parcelable {
    @g
    public static final Parcelable.Creator<AppUpdateBean> CREATOR = new Creator();
    @SerializedName("apk_address")
    @g
    private final String apkAddress;
    @SerializedName("apk_required")
    @g
    private final String apkRequired;
    @SerializedName("apk_version")
    @g
    private final String apkVersion;
    @SerializedName("apk_web")
    @g
    private final String apkWeb;
    @g
    private final String description;

    /* compiled from: AppUpdateBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<AppUpdateBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AppUpdateBean createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new AppUpdateBean(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final AppUpdateBean[] newArray(int i4) {
            return new AppUpdateBean[i4];
        }
    }

    public AppUpdateBean(@g String apkVersion, @g String apkRequired, @g String apkAddress, @g String apkWeb, @g String description) {
        Intrinsics.checkNotNullParameter(apkVersion, "apkVersion");
        Intrinsics.checkNotNullParameter(apkRequired, "apkRequired");
        Intrinsics.checkNotNullParameter(apkAddress, "apkAddress");
        Intrinsics.checkNotNullParameter(apkWeb, "apkWeb");
        Intrinsics.checkNotNullParameter(description, "description");
        this.apkVersion = apkVersion;
        this.apkRequired = apkRequired;
        this.apkAddress = apkAddress;
        this.apkWeb = apkWeb;
        this.description = description;
    }

    public static /* synthetic */ AppUpdateBean copy$default(AppUpdateBean appUpdateBean, String str, String str2, String str3, String str4, String str5, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = appUpdateBean.apkVersion;
        }
        if ((i4 & 2) != 0) {
            str2 = appUpdateBean.apkRequired;
        }
        String str6 = str2;
        if ((i4 & 4) != 0) {
            str3 = appUpdateBean.apkAddress;
        }
        String str7 = str3;
        if ((i4 & 8) != 0) {
            str4 = appUpdateBean.apkWeb;
        }
        String str8 = str4;
        if ((i4 & 16) != 0) {
            str5 = appUpdateBean.description;
        }
        return appUpdateBean.copy(str, str6, str7, str8, str5);
    }

    @g
    public final String component1() {
        return this.apkVersion;
    }

    @g
    public final String component2() {
        return this.apkRequired;
    }

    @g
    public final String component3() {
        return this.apkAddress;
    }

    @g
    public final String component4() {
        return this.apkWeb;
    }

    @g
    public final String component5() {
        return this.description;
    }

    @g
    public final AppUpdateBean copy(@g String apkVersion, @g String apkRequired, @g String apkAddress, @g String apkWeb, @g String description) {
        Intrinsics.checkNotNullParameter(apkVersion, "apkVersion");
        Intrinsics.checkNotNullParameter(apkRequired, "apkRequired");
        Intrinsics.checkNotNullParameter(apkAddress, "apkAddress");
        Intrinsics.checkNotNullParameter(apkWeb, "apkWeb");
        Intrinsics.checkNotNullParameter(description, "description");
        return new AppUpdateBean(apkVersion, apkRequired, apkAddress, apkWeb, description);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppUpdateBean) {
            AppUpdateBean appUpdateBean = (AppUpdateBean) obj;
            return Intrinsics.areEqual(this.apkVersion, appUpdateBean.apkVersion) && Intrinsics.areEqual(this.apkRequired, appUpdateBean.apkRequired) && Intrinsics.areEqual(this.apkAddress, appUpdateBean.apkAddress) && Intrinsics.areEqual(this.apkWeb, appUpdateBean.apkWeb) && Intrinsics.areEqual(this.description, appUpdateBean.description);
        }
        return false;
    }

    @g
    public final String getApkAddress() {
        return this.apkAddress;
    }

    @g
    public final String getApkRequired() {
        return this.apkRequired;
    }

    @g
    public final String getApkVersion() {
        return this.apkVersion;
    }

    @g
    public final String getApkWeb() {
        return this.apkWeb;
    }

    @g
    public final String getDescription() {
        return this.description;
    }

    public int hashCode() {
        return (((((((this.apkVersion.hashCode() * 31) + this.apkRequired.hashCode()) * 31) + this.apkAddress.hashCode()) * 31) + this.apkWeb.hashCode()) * 31) + this.description.hashCode();
    }

    @g
    public String toString() {
        return "AppUpdateBean(apkVersion=" + this.apkVersion + ", apkRequired=" + this.apkRequired + ", apkAddress=" + this.apkAddress + ", apkWeb=" + this.apkWeb + ", description=" + this.description + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.apkVersion);
        out.writeString(this.apkRequired);
        out.writeString(this.apkAddress);
        out.writeString(this.apkWeb);
        out.writeString(this.description);
    }
}
