package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import io.sentry.protocol.v;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Assets.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001BM\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\tJ\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0019\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0012HÖ\u0001R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/giphy/sdk/core/models/Assets;", "Landroid/os/Parcelable;", v.b.f83881a, "Lcom/giphy/sdk/core/models/Asset;", "size360p", "size480p", "size720p", "size1080p", "size4k", "(Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;Lcom/giphy/sdk/core/models/Asset;)V", "getSize1080p", "()Lcom/giphy/sdk/core/models/Asset;", "getSize360p", "getSize480p", "getSize4k", "getSize720p", "getSource", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Assets implements Parcelable {
    public static final Parcelable.Creator<Assets> CREATOR = new Creator();
    @SerializedName("1080p")
    @h
    private final Asset size1080p;
    @SerializedName("360p")
    @h
    private final Asset size360p;
    @SerializedName("480p")
    @h
    private final Asset size480p;
    @SerializedName("4k")
    @h
    private final Asset size4k;
    @SerializedName("720p")
    @h
    private final Asset size720p;
    @SerializedName(v.b.f83881a)
    @h
    private final Asset source;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Assets> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Assets createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Assets(in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null, in.readInt() != 0 ? Asset.CREATOR.createFromParcel(in) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Assets[] newArray(int i4) {
            return new Assets[i4];
        }
    }

    public Assets() {
        this(null, null, null, null, null, null, 63, null);
    }

    public Assets(@h Asset asset, @h Asset asset2, @h Asset asset3, @h Asset asset4, @h Asset asset5, @h Asset asset6) {
        this.source = asset;
        this.size360p = asset2;
        this.size480p = asset3;
        this.size720p = asset4;
        this.size1080p = asset5;
        this.size4k = asset6;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final Asset getSize1080p() {
        return this.size1080p;
    }

    @h
    public final Asset getSize360p() {
        return this.size360p;
    }

    @h
    public final Asset getSize480p() {
        return this.size480p;
    }

    @h
    public final Asset getSize4k() {
        return this.size4k;
    }

    @h
    public final Asset getSize720p() {
        return this.size720p;
    }

    @h
    public final Asset getSource() {
        return this.source;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Asset asset = this.source;
        if (asset != null) {
            parcel.writeInt(1);
            asset.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Asset asset2 = this.size360p;
        if (asset2 != null) {
            parcel.writeInt(1);
            asset2.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Asset asset3 = this.size480p;
        if (asset3 != null) {
            parcel.writeInt(1);
            asset3.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Asset asset4 = this.size720p;
        if (asset4 != null) {
            parcel.writeInt(1);
            asset4.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Asset asset5 = this.size1080p;
        if (asset5 != null) {
            parcel.writeInt(1);
            asset5.writeToParcel(parcel, 0);
        } else {
            parcel.writeInt(0);
        }
        Asset asset6 = this.size4k;
        if (asset6 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        asset6.writeToParcel(parcel, 0);
    }

    public /* synthetic */ Assets(Asset asset, Asset asset2, Asset asset3, Asset asset4, Asset asset5, Asset asset6, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : asset, (i4 & 2) != 0 ? null : asset2, (i4 & 4) != 0 ? null : asset3, (i4 & 8) != 0 ? null : asset4, (i4 & 16) != 0 ? null : asset5, (i4 & 32) != 0 ? null : asset6);
    }
}
