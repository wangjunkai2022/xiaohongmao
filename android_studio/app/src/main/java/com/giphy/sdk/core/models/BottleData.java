package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m.b;
import m8.g;
import m8.h;

/* compiled from: BottleData.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010HÖ\u0001R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0016"}, d2 = {"Lcom/giphy/sdk/core/models/BottleData;", "Landroid/os/Parcelable;", b.f86919c, "", "tags", "", "(Ljava/lang/String;Ljava/util/List;)V", "getTags", "()Ljava/util/List;", "setTags", "(Ljava/util/List;)V", "getTid", "()Ljava/lang/String;", "setTid", "(Ljava/lang/String;)V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class BottleData implements Parcelable {
    public static final Parcelable.Creator<BottleData> CREATOR = new Creator();
    @h
    private List<String> tags;
    @h
    private String tid;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<BottleData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final BottleData createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new BottleData(in.readString(), in.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final BottleData[] newArray(int i4) {
            return new BottleData[i4];
        }
    }

    public BottleData() {
        this(null, null, 3, null);
    }

    public BottleData(@h String str, @h List<String> list) {
        this.tid = str;
        this.tags = list;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final List<String> getTags() {
        return this.tags;
    }

    @h
    public final String getTid() {
        return this.tid;
    }

    public final void setTags(@h List<String> list) {
        this.tags = list;
    }

    public final void setTid(@h String str) {
        this.tid = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.tid);
        parcel.writeStringList(this.tags);
    }

    public /* synthetic */ BottleData(String str, List list, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : list);
    }
}
