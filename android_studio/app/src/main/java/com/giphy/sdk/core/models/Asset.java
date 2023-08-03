package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.ksyun.media.player.KSYMediaMeta;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Asset.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\f¨\u0006\u0015"}, d2 = {"Lcom/giphy/sdk/core/models/Asset;", "Landroid/os/Parcelable;", "width", "", "height", "url", "", KSYMediaMeta.IJKM_KEY_FORMAT, "(IILjava/lang/String;Ljava/lang/String;)V", "getFormat", "()Ljava/lang/String;", "getHeight", "()I", "getUrl", "getWidth", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Asset implements Parcelable {
    public static final Parcelable.Creator<Asset> CREATOR = new Creator();
    @h
    private final String format;
    private final int height;
    @h
    private final String url;
    private final int width;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Asset> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Asset createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Asset(in.readInt(), in.readInt(), in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Asset[] newArray(int i4) {
            return new Asset[i4];
        }
    }

    public Asset() {
        this(0, 0, null, null, 15, null);
    }

    public Asset(int i4, int i10, @h String str, @h String str2) {
        this.width = i4;
        this.height = i10;
        this.url = str;
        this.format = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getFormat() {
        return this.format;
    }

    public final int getHeight() {
        return this.height;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    public final int getWidth() {
        return this.width;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(this.width);
        parcel.writeInt(this.height);
        parcel.writeString(this.url);
        parcel.writeString(this.format);
    }

    public /* synthetic */ Asset(int i4, int i10, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i4, (i11 & 2) != 0 ? 0 : i10, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : str2);
    }
}
