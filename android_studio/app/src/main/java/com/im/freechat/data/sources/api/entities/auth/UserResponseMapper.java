package com.im.freechat.data.sources.api.entities.auth;

import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.ChatMemberKt;
import io.sentry.protocol.j;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: UserResponseMapper.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/auth/UserResponseMapper;", "", "()V", "map", "Lcom/im/freechat/shared/entities/auth/UserInfo;", j.f83728f, "Lcom/im/freechat/data/sources/api/entities/auth/UserResponse;", "phoneNumber", "", "isMystery", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserResponseMapper {
    @g
    public final UserInfo map(@g UserResponse response, @g String phoneNumber, boolean z9) {
        Intrinsics.checkNotNullParameter(response, "response");
        Intrinsics.checkNotNullParameter(phoneNumber, "phoneNumber");
        return new UserInfo(response.getUserId(), response.getNickname(), response.getToken(), response.getImToken(), response.getAvatar(), phoneNumber, ChatMemberKt.createManagementRole(Integer.valueOf(response.getRole())), z9, response.getLastSeen(), null, 512, null);
    }
}
