package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: VideoPreviewAsset.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B=\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u0017"}, d2 = {"Lcom/giphy/sdk/core/models/VideoPreviewAsset;", "Landroid/os/Parcelable;", "width", "", "height", "url", "", "mp4", "webp", "(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHeight", "()I", "getMp4", "()Ljava/lang/String;", "getUrl", "getWebp", "getWidth", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class VideoPreviewAsset implements Parcelable {
    public static final Parcelable.Creator<VideoPreviewAsset> CREATOR = new Creator();
    private final int height;
    @h
    private final String mp4;
    @h
    private final String url;
    @h
    private final String webp;
    private final int width;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<VideoPreviewAsset> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoPreviewAsset createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new VideoPreviewAsset(in.readInt(), in.readInt(), in.readString(), in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoPreviewAsset[] newArray(int i4) {
            return new VideoPreviewAsset[i4];
        }
    }

    public VideoPreviewAsset() {
        this(0, 0, null, null, null, 31, null);
    }

    public VideoPreviewAsset(int i4, int i10, @h String str, @h String str2, @h String str3) {
        this.width = i4;
        this.height = i10;
        this.url = str;
        this.mp4 = str2;
        this.webp = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getHeight() {
        return this.height;
    }

    @h
    public final String getMp4() {
        return this.mp4;
    }

    @h
    public final String getUrl() {
        return this.url;
    }

    @h
    public final String getWebp() {
        return this.webp;
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
        parcel.writeString(this.mp4);
        parcel.writeString(this.webp);
    }

    public /* synthetic */ VideoPreviewAsset(int i4, int i10, String str, String str2, String str3, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i4, (i11 & 2) == 0 ? i10 : 0, (i11 & 4) != 0 ? null : str, (i11 & 8) != 0 ? null : str2, (i11 & 16) != 0 ? null : str3);
    }
}
