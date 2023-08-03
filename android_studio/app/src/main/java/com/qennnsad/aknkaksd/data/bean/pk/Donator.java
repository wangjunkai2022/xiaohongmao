package com.qennnsad.aknkaksd.data.bean.pk;

import a5.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PkBroadcastMsg.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0005HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0015HÖ\u0001J\t\u0010\u0016\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/pk/Donator;", "", "id", "", "nickname", "", "avatar", "(JLjava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getId", "()J", "getNickname", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Donator {
    @g
    private final String avatar;
    private final long id;
    @g
    private final String nickname;

    public Donator(long j4, @g String nickname, @g String avatar) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        this.id = j4;
        this.nickname = nickname;
        this.avatar = avatar;
    }

    public static /* synthetic */ Donator copy$default(Donator donator, long j4, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = donator.id;
        }
        if ((i4 & 2) != 0) {
            str = donator.nickname;
        }
        if ((i4 & 4) != 0) {
            str2 = donator.avatar;
        }
        return donator.copy(j4, str, str2);
    }

    public final long component1() {
        return this.id;
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
    public final Donator copy(long j4, @g String nickname, @g String avatar) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        return new Donator(j4, nickname, avatar);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Donator) {
            Donator donator = (Donator) obj;
            return this.id == donator.id && Intrinsics.areEqual(this.nickname, donator.nickname) && Intrinsics.areEqual(this.avatar, donator.avatar);
        }
        return false;
    }

    @g
    public final String getAvatar() {
        return this.avatar;
    }

    public final long getId() {
        return this.id;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public int hashCode() {
        return (((a.a(this.id) * 31) + this.nickname.hashCode()) * 31) + this.avatar.hashCode();
    }

    @g
    public String toString() {
        return "Donator(id=" + this.id + ", nickname=" + this.nickname + ", avatar=" + this.avatar + ')';
    }
}
