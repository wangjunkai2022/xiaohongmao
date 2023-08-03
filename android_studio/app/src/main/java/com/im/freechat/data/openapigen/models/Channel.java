package com.im.freechat.data.openapigen.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Channel.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J)\u0010\u0010\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0016"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Channel;", "", "id", "", "name", "", "avatar", "(ILjava/lang/String;Ljava/lang/String;)V", "getAvatar", "()Ljava/lang/String;", "getId", "()I", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Channel {
    @h
    private final String avatar;
    private final int id;
    @g
    private final String name;

    public Channel(@com.squareup.moshi.g(name = "id") int i4, @com.squareup.moshi.g(name = "name") @g String name, @com.squareup.moshi.g(name = "avatar") @h String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.id = i4;
        this.name = name;
        this.avatar = str;
    }

    public static /* synthetic */ Channel copy$default(Channel channel, int i4, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = channel.id;
        }
        if ((i10 & 2) != 0) {
            str = channel.name;
        }
        if ((i10 & 4) != 0) {
            str2 = channel.avatar;
        }
        return channel.copy(i4, str, str2);
    }

    public final int component1() {
        return this.id;
    }

    @g
    public final String component2() {
        return this.name;
    }

    @h
    public final String component3() {
        return this.avatar;
    }

    @g
    public final Channel copy(@com.squareup.moshi.g(name = "id") int i4, @com.squareup.moshi.g(name = "name") @g String name, @com.squareup.moshi.g(name = "avatar") @h String str) {
        Intrinsics.checkNotNullParameter(name, "name");
        return new Channel(i4, name, str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Channel) {
            Channel channel = (Channel) obj;
            return this.id == channel.id && Intrinsics.areEqual(this.name, channel.name) && Intrinsics.areEqual(this.avatar, channel.avatar);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getId() {
        return this.id;
    }

    @g
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode = ((this.id * 31) + this.name.hashCode()) * 31;
        String str = this.avatar;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    @g
    public String toString() {
        return "Channel(id=" + this.id + ", name=" + this.name + ", avatar=" + this.avatar + ')';
    }

    public /* synthetic */ Channel(int i4, String str, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, str, (i10 & 4) != 0 ? null : str2);
    }
}
