package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Cta.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rHÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/core/models/Cta;", "Landroid/os/Parcelable;", "link", "", "text", "(Ljava/lang/String;Ljava/lang/String;)V", "getLink", "()Ljava/lang/String;", "setLink", "(Ljava/lang/String;)V", "getText", "setText", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Cta implements Parcelable {
    public static final Parcelable.Creator<Cta> CREATOR = new Creator();
    @h
    private String link;
    @h
    private String text;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Cta> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Cta createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Cta(in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Cta[] newArray(int i4) {
            return new Cta[i4];
        }
    }

    public Cta() {
        this(null, null, 3, null);
    }

    public Cta(@h String str, @h String str2) {
        this.link = str;
        this.text = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getLink() {
        return this.link;
    }

    @h
    public final String getText() {
        return this.text;
    }

    public final void setLink(@h String str) {
        this.link = str;
    }

    public final void setText(@h String str) {
        this.text = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.link);
        parcel.writeString(this.text);
    }

    public /* synthetic */ Cta(String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2);
    }
}
