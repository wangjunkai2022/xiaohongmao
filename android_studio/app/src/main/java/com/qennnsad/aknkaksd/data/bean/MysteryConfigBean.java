package com.qennnsad.aknkaksd.data.bean;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ConfigBean.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/qennnsad/aknkaksd/data/bean/MysteryConfigBean;", "", "nickname", "", "avatar", "(Ljava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getNickname", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class MysteryConfigBean {
    @g
    private final String avatar;
    @g
    private final String nickname;

    public MysteryConfigBean(@g String nickname, @g String avatar) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        this.nickname = nickname;
        this.avatar = avatar;
    }

    public static /* synthetic */ MysteryConfigBean copy$default(MysteryConfigBean mysteryConfigBean, String str, String str2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = mysteryConfigBean.nickname;
        }
        if ((i4 & 2) != 0) {
            str2 = mysteryConfigBean.avatar;
        }
        return mysteryConfigBean.copy(str, str2);
    }

    @g
    public final String component1() {
        return this.nickname;
    }

    @g
    public final String component2() {
        return this.avatar;
    }

    @g
    public final MysteryConfigBean copy(@g String nickname, @g String avatar) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(avatar, "avatar");
        return new MysteryConfigBean(nickname, avatar);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MysteryConfigBean) {
            MysteryConfigBean mysteryConfigBean = (MysteryConfigBean) obj;
            return Intrinsics.areEqual(this.nickname, mysteryConfigBean.nickname) && Intrinsics.areEqual(this.avatar, mysteryConfigBean.avatar);
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

    public int hashCode() {
        return (this.nickname.hashCode() * 31) + this.avatar.hashCode();
    }

    @g
    public String toString() {
        return "MysteryConfigBean(nickname=" + this.nickname + ", avatar=" + this.avatar + ')';
    }
}
