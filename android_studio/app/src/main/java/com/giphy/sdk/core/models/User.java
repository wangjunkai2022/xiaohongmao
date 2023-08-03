package com.giphy.sdk.core.models;

import a8.d;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.gson.annotations.SerializedName;
import com.qennnsad.aknkaksd.data.bean.ThirdLoginPlatform;
import io.sentry.protocol.w;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: User.kt */
@d
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b)\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001Bõ\u0001\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0019J\t\u00104\u001a\u000205HÖ\u0001J\u0019\u00106\u001a\u0002072\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u000205HÖ\u0001R\u0018\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001bR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001bR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001bR\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001bR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001bR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001bR\u0016\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010#R\u001e\u0010\u0017\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010#\"\u0004\b$\u0010%R\u0016\u0010\u0013\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010#R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001bR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001bR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001bR \u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b+\u0010\u001b\"\u0004\b,\u0010-R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b.\u0010\u001b\"\u0004\b/\u0010-R\u001e\u0010\u0016\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u0010#\"\u0004\b1\u0010%R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001bR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001b¨\u0006;"}, d2 = {"Lcom/giphy/sdk/core/models/User;", "Landroid/os/Parcelable;", "id", "", "avatarUrl", "bannerUrl", "profileUrl", w.b.f83891c, "displayName", ThirdLoginPlatform.PLATFORM_TWTTER, "isPublic", "", "attributionDisplayName", "name", "description", "facebookUrl", "twitterUrl", "instagramUrl", "tumblrUrl", "isSuppressChrome", "websiteUrl", "websiteDisplayUrl", "verified", "isStaff", "userType", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V", "getAttributionDisplayName", "()Ljava/lang/String;", "getAvatarUrl", "getBannerUrl", "getDescription", "getDisplayName", "getFacebookUrl", "getId", "getInstagramUrl", "()Z", "setStaff", "(Z)V", "getName", "getProfileUrl", "getTumblrUrl", "getTwitter", "getTwitterUrl", "getUserType", "setUserType", "(Ljava/lang/String;)V", "getUsername", "setUsername", "getVerified", "setVerified", "getWebsiteDisplayUrl", "getWebsiteUrl", "describeContents", "", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class User implements Parcelable {
    public static final Parcelable.Creator<User> CREATOR = new Creator();
    @SerializedName("attribution_display_name")
    @h
    private final String attributionDisplayName;
    @SerializedName("avatar_url")
    @h
    private final String avatarUrl;
    @SerializedName("banner_url")
    @h
    private final String bannerUrl;
    @h
    private final String description;
    @SerializedName("display_name")
    @h
    private final String displayName;
    @SerializedName("facebook_url")
    @h
    private final String facebookUrl;
    @h
    private final String id;
    @SerializedName("instagram_url")
    @h
    private final String instagramUrl;
    @SerializedName("is_public")
    private final boolean isPublic;
    @SerializedName("is_staff")
    private boolean isStaff;
    @SerializedName("suppress_chrome")
    private final boolean isSuppressChrome;
    @h
    private final String name;
    @SerializedName("profile_url")
    @h
    private final String profileUrl;
    @SerializedName("tumblr_url")
    @h
    private final String tumblrUrl;
    @h
    private final String twitter;
    @SerializedName("twitter_url")
    @h
    private final String twitterUrl;
    @SerializedName("user_type")
    @h
    private String userType;
    @g
    private String username;
    @SerializedName("is_verified")
    private boolean verified;
    @SerializedName("website_display_url")
    @h
    private final String websiteDisplayUrl;
    @SerializedName("website_url")
    @h
    private final String websiteUrl;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    public static class Creator implements Parcelable.Creator<User> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final User createFromParcel(@g Parcel in) {
            Intrinsics.checkNotNullParameter(in, "in");
            return new User(in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readInt() != 0, in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readString(), in.readInt() != 0, in.readString(), in.readString(), in.readInt() != 0, in.readInt() != 0, in.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        @g
        public final User[] newArray(int i4) {
            return new User[i4];
        }
    }

    public User(@h String str, @h String str2, @h String str3, @h String str4, @g String username, @h String str5, @h String str6, boolean z9, @h String str7, @h String str8, @h String str9, @h String str10, @h String str11, @h String str12, @h String str13, boolean z10, @h String str14, @h String str15, boolean z11, boolean z12, @h String str16) {
        Intrinsics.checkNotNullParameter(username, "username");
        this.id = str;
        this.avatarUrl = str2;
        this.bannerUrl = str3;
        this.profileUrl = str4;
        this.username = username;
        this.displayName = str5;
        this.twitter = str6;
        this.isPublic = z9;
        this.attributionDisplayName = str7;
        this.name = str8;
        this.description = str9;
        this.facebookUrl = str10;
        this.twitterUrl = str11;
        this.instagramUrl = str12;
        this.tumblrUrl = str13;
        this.isSuppressChrome = z10;
        this.websiteUrl = str14;
        this.websiteDisplayUrl = str15;
        this.verified = z11;
        this.isStaff = z12;
        this.userType = str16;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @h
    public final String getAttributionDisplayName() {
        return this.attributionDisplayName;
    }

    @h
    public final String getAvatarUrl() {
        return this.avatarUrl;
    }

    @h
    public final String getBannerUrl() {
        return this.bannerUrl;
    }

    @h
    public final String getDescription() {
        return this.description;
    }

    @h
    public final String getDisplayName() {
        return this.displayName;
    }

    @h
    public final String getFacebookUrl() {
        return this.facebookUrl;
    }

    @h
    public final String getId() {
        return this.id;
    }

    @h
    public final String getInstagramUrl() {
        return this.instagramUrl;
    }

    @h
    public final String getName() {
        return this.name;
    }

    @h
    public final String getProfileUrl() {
        return this.profileUrl;
    }

    @h
    public final String getTumblrUrl() {
        return this.tumblrUrl;
    }

    @h
    public final String getTwitter() {
        return this.twitter;
    }

    @h
    public final String getTwitterUrl() {
        return this.twitterUrl;
    }

    @h
    public final String getUserType() {
        return this.userType;
    }

    @g
    public final String getUsername() {
        return this.username;
    }

    public final boolean getVerified() {
        return this.verified;
    }

    @h
    public final String getWebsiteDisplayUrl() {
        return this.websiteDisplayUrl;
    }

    @h
    public final String getWebsiteUrl() {
        return this.websiteUrl;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final boolean isStaff() {
        return this.isStaff;
    }

    public final boolean isSuppressChrome() {
        return this.isSuppressChrome;
    }

    public final void setStaff(boolean z9) {
        this.isStaff = z9;
    }

    public final void setUserType(@h String str) {
        this.userType = str;
    }

    public final void setUsername(@g String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.username = str;
    }

    public final void setVerified(boolean z9) {
        this.verified = z9;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@g Parcel parcel, int i4) {
        Intrinsics.checkNotNullParameter(parcel, "parcel");
        parcel.writeString(this.id);
        parcel.writeString(this.avatarUrl);
        parcel.writeString(this.bannerUrl);
        parcel.writeString(this.profileUrl);
        parcel.writeString(this.username);
        parcel.writeString(this.displayName);
        parcel.writeString(this.twitter);
        parcel.writeInt(this.isPublic ? 1 : 0);
        parcel.writeString(this.attributionDisplayName);
        parcel.writeString(this.name);
        parcel.writeString(this.description);
        parcel.writeString(this.facebookUrl);
        parcel.writeString(this.twitterUrl);
        parcel.writeString(this.instagramUrl);
        parcel.writeString(this.tumblrUrl);
        parcel.writeInt(this.isSuppressChrome ? 1 : 0);
        parcel.writeString(this.websiteUrl);
        parcel.writeString(this.websiteDisplayUrl);
        parcel.writeInt(this.verified ? 1 : 0);
        parcel.writeInt(this.isStaff ? 1 : 0);
        parcel.writeString(this.userType);
    }

    public /* synthetic */ User(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z9, String str8, String str9, String str10, String str11, String str12, String str13, String str14, boolean z10, String str15, String str16, boolean z11, boolean z12, String str17, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : str3, (i4 & 8) != 0 ? null : str4, str5, (i4 & 32) != 0 ? null : str6, (i4 & 64) != 0 ? null : str7, (i4 & 128) != 0 ? false : z9, (i4 & 256) != 0 ? null : str8, (i4 & 512) != 0 ? null : str9, (i4 & 1024) != 0 ? null : str10, (i4 & 2048) != 0 ? null : str11, (i4 & 4096) != 0 ? null : str12, (i4 & 8192) != 0 ? null : str13, (i4 & 16384) != 0 ? null : str14, (32768 & i4) != 0 ? false : z10, (65536 & i4) != 0 ? null : str15, (131072 & i4) != 0 ? null : str16, (262144 & i4) != 0 ? false : z11, (524288 & i4) != 0 ? false : z12, (i4 & 1048576) != 0 ? null : str17);
    }
}
