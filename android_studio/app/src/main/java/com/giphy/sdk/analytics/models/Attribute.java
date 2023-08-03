package com.giphy.sdk.analytics.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.giphy.sdk.analytics.models.enums.AttributeKey;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attribute.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u001d\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010HÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/giphy/sdk/analytics/models/Attribute;", "Landroid/os/Parcelable;", "key", "Lcom/giphy/sdk/analytics/models/enums/AttributeKey;", "value", "", "(Lcom/giphy/sdk/analytics/models/enums/AttributeKey;Ljava/lang/String;)V", "getKey", "()Lcom/giphy/sdk/analytics/models/enums/AttributeKey;", "setKey", "(Lcom/giphy/sdk/analytics/models/enums/AttributeKey;)V", "getValue", "()Ljava/lang/String;", "setValue", "(Ljava/lang/String;)V", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Companion", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Attribute implements Parcelable {
    @h
    private AttributeKey key;
    @h
    private String value;
    @g
    public static final Companion Companion = new Companion(null);
    @g
    private static String LAYOUT_TYPE_CAROUSEL = "CAROUSEL";
    @g
    private static String LAYOUT_TYPE_GRID = "GRID";
    @g
    private static String LAYOUT_TYPE_MIXED = "MIXED";
    public static final Parcelable.Creator<Attribute> CREATOR = new Creator();

    /* compiled from: Attribute.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcom/giphy/sdk/analytics/models/Attribute$Companion;", "", "()V", "LAYOUT_TYPE_CAROUSEL", "", "getLAYOUT_TYPE_CAROUSEL", "()Ljava/lang/String;", "setLAYOUT_TYPE_CAROUSEL", "(Ljava/lang/String;)V", "LAYOUT_TYPE_GRID", "getLAYOUT_TYPE_GRID", "setLAYOUT_TYPE_GRID", "LAYOUT_TYPE_MIXED", "getLAYOUT_TYPE_MIXED", "setLAYOUT_TYPE_MIXED", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static final class Companion {
        private Companion() {
        }

        @g
        public final String getLAYOUT_TYPE_CAROUSEL() {
            return Attribute.LAYOUT_TYPE_CAROUSEL;
        }

        @g
        public final String getLAYOUT_TYPE_GRID() {
            return Attribute.LAYOUT_TYPE_GRID;
        }

        @g
        public final String getLAYOUT_TYPE_MIXED() {
            return Attribute.LAYOUT_TYPE_MIXED;
        }

        public final void setLAYOUT_TYPE_CAROUSEL(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            Attribute.LAYOUT_TYPE_CAROUSEL = str;
        }

        public final void setLAYOUT_TYPE_GRID(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            Attribute.LAYOUT_TYPE_GRID = str;
        }

        public final void setLAYOUT_TYPE_MIXED(@g String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            Attribute.LAYOUT_TYPE_MIXED = str;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Attribute> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Attribute createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Attribute(in.readInt() != 0 ? (AttributeKey) Enum.valueOf(AttributeKey.class, in.readString()) : null, in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Attribute[] newArray(int i4) {
            return new Attribute[i4];
        }
    }

    public Attribute() {
        this(null, null, 3, null);
    }

    public Attribute(@h AttributeKey attributeKey, @h String str) {
        this.key = attributeKey;
        this.value = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final AttributeKey getKey() {
        return this.key;
    }

    @h
    public final String getValue() {
        return this.value;
    }

    public final void setKey(@h AttributeKey attributeKey) {
        this.key = attributeKey;
    }

    public final void setValue(@h String str) {
        this.value = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        AttributeKey attributeKey = this.key;
        if (attributeKey != null) {
            parcel.writeInt(1);
            parcel.writeString(attributeKey.name());
        } else {
            parcel.writeInt(0);
        }
        parcel.writeString(this.value);
    }

    public /* synthetic */ Attribute(AttributeKey attributeKey, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : attributeKey, (i4 & 2) != 0 ? null : str);
    }
}
