package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Video.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001BA\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0016HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001c"}, d2 = {"Lcom/giphy/sdk/core/models/Video;", "Landroid/os/Parcelable;", "hlsManifestURL", "", "dashManifestURL", "assets", "Lcom/giphy/sdk/core/models/Assets;", "previews", "Lcom/giphy/sdk/core/models/Previews;", "captions", "Lcom/giphy/sdk/core/models/VideoCaptions;", "(Ljava/lang/String;Ljava/lang/String;Lcom/giphy/sdk/core/models/Assets;Lcom/giphy/sdk/core/models/Previews;Lcom/giphy/sdk/core/models/VideoCaptions;)V", "getAssets", "()Lcom/giphy/sdk/core/models/Assets;", "getCaptions", "()Lcom/giphy/sdk/core/models/VideoCaptions;", "getDashManifestURL", "()Ljava/lang/String;", "getHlsManifestURL", "getPreviews", "()Lcom/giphy/sdk/core/models/Previews;", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Video implements Parcelable {
    public static final Parcelable.Creator<Video> CREATOR = new Creator();
    @h
    private final Assets assets;
    @h
    private final VideoCaptions captions;
    @h
    private final String dashManifestURL;
    @h
    private final String hlsManifestURL;
    @h
    private final Previews previews;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Video> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Video createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Video(in.readString(), in.readString(), in.readInt() != 0 ? Assets.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Previews.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? VideoCaptions.CREATOR.createFromParcel(in) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Video[] newArray(int i4) {
            return new Video[i4];
        }
    }

    public Video() {
        this(null, null, null, null, null, 31, null);
    }

    public Video(@h String str, @h String str2, @h Assets assets, @h Previews previews, @h VideoCaptions videoCaptions) {
        this.hlsManifestURL = str;
        this.dashManifestURL = str2;
        this.assets = assets;
        this.previews = previews;
        this.captions = videoCaptions;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final Assets getAssets() {
        return this.assets;
    }

    @h
    public final VideoCaptions getCaptions() {
        return this.captions;
    }

    @h
    public final String getDashManifestURL() {
        return this.dashManifestURL;
    }

    @h
    public final String getHlsManifestURL() {
        return this.hlsManifestURL;
    }

    @h
    public final Previews getPreviews() {
        return this.previews;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.hlsManifestURL);
        parcel.writeString(this.dashManifestURL);
        Assets assets = this.assets;
        if (assets != null) {
            parcel.writeInt(1);
            assets.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Previews previews = this.previews;
        if (previews != null) {
            parcel.writeInt(1);
            previews.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        VideoCaptions videoCaptions = this.captions;
        if (videoCaptions == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        videoCaptions.writeToParcel(parcel, 0);
    }

    public /* synthetic */ Video(String str, String str2, Assets assets, Previews previews, VideoCaptions videoCaptions, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : assets, (i4 & 8) != 0 ? null : previews, (i4 & 16) != 0 ? null : videoCaptions);
    }
}
