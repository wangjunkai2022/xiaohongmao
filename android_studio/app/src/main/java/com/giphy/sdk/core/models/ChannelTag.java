package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Channel.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\r\u001a\u0004\b\u0010\u0010\n\"\u0004\b\u0011\u0010\fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u001c"}, d2 = {"Lcom/giphy/sdk/core/models/ChannelTag;", "Landroid/os/Parcelable;", "id", "", "channel", y.b.f83916d, "", "rank", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V", "getChannel", "()Ljava/lang/Integer;", "setChannel", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getId", "setId", "getRank", "setRank", "getTag", "()Ljava/lang/String;", "setTag", "(Ljava/lang/String;)V", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class ChannelTag implements Parcelable {
    public static final Parcelable.Creator<ChannelTag> CREATOR = new Creator();
    @h
    private Integer channel;
    @h
    private Integer id;
    @h
    private Integer rank;
    @h
    private String tag;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<ChannelTag> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final ChannelTag createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new ChannelTag(in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null, in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null, in.readString(), in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final ChannelTag[] newArray(int i4) {
            return new ChannelTag[i4];
        }
    }

    public ChannelTag(@h Integer num, @h Integer num2, @h String str, @h Integer num3) {
        this.id = num;
        this.channel = num2;
        this.tag = str;
        this.rank = num3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final Integer getChannel() {
        return this.channel;
    }

    @h
    public final Integer getId() {
        return this.id;
    }

    @h
    public final Integer getRank() {
        return this.rank;
    }

    @h
    public final String getTag() {
        return this.tag;
    }

    public final void setChannel(@h Integer num) {
        this.channel = num;
    }

    public final void setId(@h Integer num) {
        this.id = num;
    }

    public final void setRank(@h Integer num) {
        this.rank = num;
    }

    public final void setTag(@h String str) {
        this.tag = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        Integer num = this.id;
        if (num != null) {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        } else {
            parcel.writeInt(0);
        }
        Integer num2 = this.channel;
        if (num2 != null) {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.tag);
        Integer num3 = this.rank;
        if (num3 == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(num3.intValue());
    }
}
