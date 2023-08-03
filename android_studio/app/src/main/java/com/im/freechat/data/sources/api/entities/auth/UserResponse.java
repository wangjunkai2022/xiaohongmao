package com.im.freechat.data.sources.api.entities.auth;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UserResponse.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\r\u0018\u00002\u00020\u0001BW\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0005\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0001\u0010\t\u001a\u00020\u0003\u0012\b\b\u0001\u0010\n\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;", "", "userId", "", "nickname", "", "token", "imToken", "avatar", "role", "firstLogin", "lastSeen", "", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V", "getAvatar", "()Ljava/lang/String;", "getFirstLogin", "()I", "getImToken", "getLastSeen", "()J", "getNickname", "getRole", "getToken", "getUserId", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserResponse {
    @h
    private final String avatar;
    private final int firstLogin;
    @g
    private final String imToken;
    private final long lastSeen;
    @g
    private final String nickname;
    private final int role;
    @g
    private final String token;
    private final int userId;

    public UserResponse(@com.squareup.moshi.g(name = "user_id") int i4, @com.squareup.moshi.g(name = "nickname") @g String nickname, @com.squareup.moshi.g(name = "token") @g String token, @com.squareup.moshi.g(name = "im_token") @g String imToken, @com.squareup.moshi.g(name = "avatar") @h String str, @com.squareup.moshi.g(name = "role") int i10, @com.squareup.moshi.g(name = "is_first_login") int i11, @com.squareup.moshi.g(name = "last_seen") long j4) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(imToken, "imToken");
        this.userId = i4;
        this.nickname = nickname;
        this.token = token;
        this.imToken = imToken;
        this.avatar = str;
        this.role = i10;
        this.firstLogin = i11;
        this.lastSeen = j4;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getFirstLogin() {
        return this.firstLogin;
    }

    @g
    public final String getImToken() {
        return this.imToken;
    }

    public final long getLastSeen() {
        return this.lastSeen;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public final int getRole() {
        return this.role;
    }

    @g
    public final String getToken() {
        return this.token;
    }

    public final int getUserId() {
        return this.userId;
    }
}
