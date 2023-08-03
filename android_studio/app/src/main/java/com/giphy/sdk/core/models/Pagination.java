package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Pagination.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B;\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\rR\u0015\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u0011\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000b¨\u0006\u0019"}, d2 = {"Lcom/giphy/sdk/core/models/Pagination;", "Landroid/os/Parcelable;", "totalCount", "", "count", TypedValues.Cycle.S_WAVE_OFFSET, "nextPage", "", "nextCursor", "(IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getCount", "()I", "getNextCursor", "()Ljava/lang/String;", "getNextPage", "getOffset", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getTotalCount", "describeContents", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class Pagination implements Parcelable {
    public static final Parcelable.Creator<Pagination> CREATOR = new Creator();
    private final int count;
    @SerializedName("next_cursor")
    @h
    private final String nextCursor;
    @SerializedName("next_page")
    @h
    private final String nextPage;
    @h
    private final Integer offset;
    @SerializedName("total_count")
    private final int totalCount;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<Pagination> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Pagination createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new Pagination(in.readInt(), in.readInt(), in.readInt() != 0 ? Integer.valueOf(in.readInt()) : null, in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final Pagination[] newArray(int i4) {
            return new Pagination[i4];
        }
    }

    public Pagination(int i4, int i10, @h Integer num, @h String str, @h String str2) {
        this.totalCount = i4;
        this.count = i10;
        this.offset = num;
        this.nextPage = str;
        this.nextCursor = str2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final int getCount() {
        return this.count;
    }

    @h
    public final String getNextCursor() {
        return this.nextCursor;
    }

    @h
    public final String getNextPage() {
        return this.nextPage;
    }

    @h
    public final Integer getOffset() {
        return this.offset;
    }

    public final int getTotalCount() {
        return this.totalCount;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        int i10;
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeInt(this.totalCount);
        parcel.writeInt(this.count);
        Integer num = this.offset;
        if (num != null) {
            parcel.writeInt(1);
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        parcel.writeInt(i10);
        parcel.writeString(this.nextPage);
        parcel.writeString(this.nextCursor);
    }

    public /* synthetic */ Pagination(int i4, int i10, Integer num, String str, String str2, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i4, (i11 & 2) != 0 ? 0 : i10, num, (i11 & 8) != 0 ? null : str, (i11 & 16) != 0 ? null : str2);
    }
}
