package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: VideoCaptions.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\bHÖ\u0001R\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000e"}, d2 = {"Lcom/giphy/sdk/core/models/VideoCaptions;", "Landroid/os/Parcelable;", "videoCaption", "Lcom/giphy/sdk/core/models/VideoCaption;", "(Lcom/giphy/sdk/core/models/VideoCaption;)V", "getVideoCaption", "()Lcom/giphy/sdk/core/models/VideoCaption;", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class VideoCaptions implements Parcelable {
    public static final Parcelable.Creator<VideoCaptions> CREATOR = new Creator();
    @SerializedName("en")
    @h
    private final VideoCaption videoCaption;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<VideoCaptions> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoCaptions createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new VideoCaptions(in.readInt() != 0 ? VideoCaption.CREATOR.createFromParcel(in) : null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoCaptions[] newArray(int i4) {
            return new VideoCaptions[i4];
        }
    }

    public VideoCaptions() {
        this(null, 1, null);
    }

    public VideoCaptions(@h VideoCaption videoCaption) {
        this.videoCaption = videoCaption;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final VideoCaption getVideoCaption() {
        return this.videoCaption;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        VideoCaption videoCaption = this.videoCaption;
        if (videoCaption == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        videoCaption.writeToParcel(parcel, 0);
    }

    public /* synthetic */ VideoCaptions(VideoCaption videoCaption, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : videoCaption);
    }
}
