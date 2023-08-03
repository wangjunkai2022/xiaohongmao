package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: VideoCaption.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\nHÖ\u0001J\u0019\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nHÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/giphy/sdk/core/models/VideoCaption;", "Landroid/os/Parcelable;", "srt", "", "vtt", "(Ljava/lang/String;Ljava/lang/String;)V", "getSrt", "()Ljava/lang/String;", "getVtt", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class VideoCaption implements Parcelable {
    public static final Parcelable.Creator<VideoCaption> CREATOR = new Creator();
    @h
    private final String srt;
    @h
    private final String vtt;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<VideoCaption> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoCaption createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new VideoCaption(in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final VideoCaption[] newArray(int i4) {
            return new VideoCaption[i4];
        }
    }

    public VideoCaption() {
        this(null, null, 3, null);
    }

    public VideoCaption(@h String str, @h String str2) {
        this.srt = str;
        this.vtt = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getSrt() {
        return this.srt;
    }

    @h
    public final String getVtt() {
        return this.vtt;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.srt);
        parcel.writeString(this.vtt);
    }

    public /* synthetic */ VideoCaption(String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2);
    }
}
