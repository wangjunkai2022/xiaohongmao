package com.qennnsad.aknkaksd.data.bean.pk;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PkListResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J1\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/CompetitorItem;", "", "uid", "", "nickname", "avatar", "sex", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getNickname", "getSex", "getUid", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class CompetitorItem {
    @g
    private final String avatar;
    @g
    private final String nickname;
    @g
    private final String sex;
    @g
    private final String uid;

    public CompetitorItem(@g String uid, @g String nickname, @g String avatar, @g String sex) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(sex, "sex");
        this.uid = uid;
        this.nickname = nickname;
        this.avatar = avatar;
        this.sex = sex;
    }

    public static /* synthetic */ CompetitorItem copy$default(CompetitorItem competitorItem, String str, String str2, String str3, String str4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = competitorItem.uid;
        }
        if ((i4 & 2) != 0) {
            str2 = competitorItem.nickname;
        }
        if ((i4 & 4) != 0) {
            str3 = competitorItem.avatar;
        }
        if ((i4 & 8) != 0) {
            str4 = competitorItem.sex;
        }
        return competitorItem.copy(str, str2, str3, str4);
    }

    @g
    public final String component1() {
        return this.uid;
    }

    @g
    public final String component2() {
        return this.nickname;
    }

    @g
    public final String component3() {
        return this.avatar;
    }

    @g
    public final String component4() {
        return this.sex;
    }

    @g
    public final CompetitorItem copy(@g String uid, @g String nickname, @g String avatar, @g String sex) {
        Intrinsics.checkNotNullParameter(uid, "uid");
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        Intrinsics.checkNotNullParameter(sex, "sex");
        return new CompetitorItem(uid, nickname, avatar, sex);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CompetitorItem) {
            CompetitorItem competitorItem = (CompetitorItem) obj;
            return Intrinsics.areEqual(this.uid, competitorItem.uid) && Intrinsics.areEqual(this.nickname, competitorItem.nickname) && Intrinsics.areEqual(this.avatar, competitorItem.avatar) && Intrinsics.areEqual(this.sex, competitorItem.sex);
        }
        return false;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    @g
    public final String getSex() {
        return this.sex;
    }

    @g
    public final String getUid() {
        return this.uid;
    }

    public int hashCode() {
        return (((((this.uid.hashCode() * 31) + this.nickname.hashCode()) * 31) + this.avatar.hashCode()) * 31) + this.sex.hashCode();
    }

    @g
    public String toString() {
        return "CompetitorItem(uid=" + this.uid + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ", sex=" + this.sex + ')';
    }
}
