package com.giphy.sdk.analytics.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: User.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\rHÖ\u0001J\u0019\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rHÖ\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0013"}, d2 = {"Lcom/giphy/sdk/analytics/models/User;", "Landroid/os/Parcelable;", "userId", "", "loggedInUserId", "(Ljava/lang/String;Ljava/lang/String;)V", "getLoggedInUserId", "()Ljava/lang/String;", "setLoggedInUserId", "(Ljava/lang/String;)V", "getUserId", "setUserId", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class User implements Parcelable {
    public static final Parcelable.Creator<User> CREATOR = new Creator();
    @SerializedName("logged_in_user_id")
    @h
    private String loggedInUserId;
    @SerializedName("user_id")
    @g
    private String userId;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<User> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final User createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new User(in.readString(), in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final User[] newArray(int i4) {
            return new User[i4];
        }
    }

    public User(@g String userId, @h String str) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        this.userId = userId;
        this.loggedInUserId = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getLoggedInUserId() {
        return this.loggedInUserId;
    }

    @g
    public final String getUserId() {
        return this.userId;
    }

    public final void setLoggedInUserId(@h String str) {
        this.loggedInUserId = str;
    }

    public final void setUserId(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userId = str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.userId);
        parcel.writeString(this.loggedInUserId);
    }

    public /* synthetic */ User(String str, String str2, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i4 & 2) != 0 ? null : str2);
    }
}
