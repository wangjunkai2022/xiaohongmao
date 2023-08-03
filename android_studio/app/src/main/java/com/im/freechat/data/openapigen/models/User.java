package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: User.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÆ\u0003JI\u0010\u0019\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\b\b\u0003\u0010\u0007\u001a\u00020\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/data/openapigen/models/User;", "", "id", "", "name", "", "lastSeen", "reportable", ContactResponseMapperKt.BIO, "avatar", "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getBio", "getId", "()I", "getLastSeen", "getName", "getReportable", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class User {
    @h
    private final String avatar;
    @h
    private final String bio;
    private final int id;
    @g
    private final String lastSeen;
    @g
    private final String name;
    private final int reportable;

    public User(@com.squareup.moshi.g(name = "id") int i4, @com.squareup.moshi.g(name = "name") @g String name, @com.squareup.moshi.g(name = "last_seen") @g String lastSeen, @com.squareup.moshi.g(name = "reportable") int i10, @com.squareup.moshi.g(name = "bio") @h String str, @com.squareup.moshi.g(name = "avatar") @h String str2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(lastSeen, "lastSeen");
        this.id = i4;
        this.name = name;
        this.lastSeen = lastSeen;
        this.reportable = i10;
        this.bio = str;
        this.avatar = str2;
    }

    public static /* synthetic */ User copy$default(User user, int i4, String str, String str2, int i10, String str3, String str4, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = user.id;
        }
        if ((i11 & 2) != 0) {
            str = user.name;
        }
        String str5 = str;
        if ((i11 & 4) != 0) {
            str2 = user.lastSeen;
        }
        String str6 = str2;
        if ((i11 & 8) != 0) {
            i10 = user.reportable;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            str3 = user.bio;
        }
        String str7 = str3;
        if ((i11 & 32) != 0) {
            str4 = user.avatar;
        }
        return user.copy(i4, str5, str6, i12, str7, str4);
    }

    public final int component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.name;
    }

    @g
    public final String component3() {
        return this.lastSeen;
    }

    public final int component4() {
        return this.reportable;
    }

    @h
    public final String component5() {
        return this.bio;
    }

    @h
    public final String component6() {
        return this.avatar;
    }

    @g
    public final User copy(@com.squareup.moshi.g(name = "id") int i4, @com.squareup.moshi.g(name = "name") @g String name, @com.squareup.moshi.g(name = "last_seen") @g String lastSeen, @com.squareup.moshi.g(name = "reportable") int i10, @com.squareup.moshi.g(name = "bio") @h String str, @com.squareup.moshi.g(name = "avatar") @h String str2) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(lastSeen, "lastSeen");
        return new User(i4, name, lastSeen, i10, str, str2);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof User) {
            User user = (User) obj;
            return this.id == user.id && Intrinsics.areEqual(this.name, user.name) && Intrinsics.areEqual(this.lastSeen, user.lastSeen) && this.reportable == user.reportable && Intrinsics.areEqual(this.bio, user.bio) && Intrinsics.areEqual(this.avatar, user.avatar);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final String getBio() {
        return this.bio;
    }

    public final int getId() {
        return this.id;
    }

    @g
    public final String getLastSeen() {
        return this.lastSeen;
    }

    @g
    public final String getName() {
        return this.name;
    }

    public final int getReportable() {
        return this.reportable;
    }

    public int hashCode() {
        int hashCode = ((((((this.id * 31) + this.name.hashCode()) * 31) + this.lastSeen.hashCode()) * 31) + this.reportable) * 31;
        String str = this.bio;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    @g
    public String toString() {
        return "User(id=" + this.id + ", name=" + this.name + ", lastSeen=" + this.lastSeen + ", reportable=" + this.reportable + ", bio=" + this.bio + ", avatar=" + this.avatar + ')';
    }

    public /* synthetic */ User(int i4, String str, String str2, int i10, String str3, String str4, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, str2, i10, (i11 & 16) != 0 ? null : str3, (i11 & 32) != 0 ? null : str4);
    }
}
