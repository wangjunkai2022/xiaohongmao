package com.im.freechat.data.sources.api.entities.contact;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ContactResponse.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u000f\u0018\u00002\u00020\u0001Be\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u001a\b\u0001\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\f¢\u0006\u0002\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR#\u0010\u000b\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;", "", "nickname", "", "avatar", "userId", "", "managementRole", "onlineInfo", "Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;", "phone", "expansion", "", "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;Ljava/lang/String;Ljava/util/Map;)V", "getAvatar", "()Ljava/lang/String;", "getExpansion", "()Ljava/util/Map;", "getManagementRole", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getNickname", "getOnlineInfo", "()Lcom/im/freechat/data/sources/api/entities/contact/OnlineInfo;", "getPhone", "getUserId", "()I", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ContactResponse {
    @h
    private final String avatar;
    @h
    private final Map<String, String> expansion;
    @h
    private final Integer managementRole;
    @g
    private final String nickname;
    @h
    private final OnlineInfo onlineInfo;
    @h
    private final String phone;
    private final int userId;

    public ContactResponse(@com.squareup.moshi.g(name = "nickname") @g String nickname, @com.squareup.moshi.g(name = "avatar") @h String str, @com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "management_role") @h Integer num, @com.squareup.moshi.g(name = "online") @h OnlineInfo onlineInfo, @com.squareup.moshi.g(name = "phone") @h String str2, @com.squareup.moshi.g(name = "expansion") @h Map<String, String> map) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        this.nickname = nickname;
        this.avatar = str;
        this.userId = i4;
        this.managementRole = num;
        this.onlineInfo = onlineInfo;
        this.phone = str2;
        this.expansion = map;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @h
    public final Map<String, String> getExpansion() {
        return this.expansion;
    }

    @h
    public final Integer getManagementRole() {
        return this.managementRole;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    @h
    public final OnlineInfo getOnlineInfo() {
        return this.onlineInfo;
    }

    @h
    public final String getPhone() {
        return this.phone;
    }

    public final int getUserId() {
        return this.userId;
    }
}
