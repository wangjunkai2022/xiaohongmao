package com.qennnsad.aknkaksd.data.bean;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: WatermarkBean.kt */
@d
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012HÖ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0005HÖ\u0001J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/WatermarkBean;", "Landroid/os/Parcelable;", "type", "", "content", "", "(ILjava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getType", "()I", "component1", "component2", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WatermarkBean implements Parcelable {
    @g
    public static final Parcelable.Creator<WatermarkBean> CREATOR = new Creator();
    @g
    private final String content;
    private final int type;

    /* compiled from: WatermarkBean.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Creator implements Parcelable.Creator<WatermarkBean> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final WatermarkBean createFromParcel(@g Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new WatermarkBean(parcel.readInt(), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final WatermarkBean[] newArray(int i4) {
            return new WatermarkBean[i4];
        }
    }

    public WatermarkBean(int i4, @g String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        this.type = i4;
        this.content = content;
    }

    public static /* synthetic */ WatermarkBean copy$default(WatermarkBean watermarkBean, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = watermarkBean.type;
        }
        if ((i10 & 2) != 0) {
            str = watermarkBean.content;
        }
        return watermarkBean.copy(i4, str);
    }

    public final int component1() {
        return this.type;
    }

    @g
    public final String component2() {
        return this.content;
    }

    @g
    public final WatermarkBean copy(int i4, @g String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return new WatermarkBean(i4, content);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WatermarkBean) {
            WatermarkBean watermarkBean = (WatermarkBean) obj;
            return this.type == watermarkBean.type && Intrinsics.areEqual(this.content, watermarkBean.content);
        }
        return false;
    }

    @g
    public final String getContent() {
        return this.content;
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return (this.type * 31) + this.content.hashCode();
    }

    @g
    public String toString() {
        return "WatermarkBean(type=" + this.type + ", content=" + this.content + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel out, int i4) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeInt(this.type);
        out.writeString(this.content);
    }
}
