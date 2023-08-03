package com.im.freechat.shared.entities;

import com.im.freechat.shared.entities.Type;
import com.im.freechat.shared.entities.contact.UserModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ChatMemberInfo.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toUserMask", "Lcom/im/freechat/shared/entities/ChatMemberInfo;", "Lcom/im/freechat/shared/entities/contact/UserModel;", "shared"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatMemberInfoKt {
    @g
    public static final ChatMemberInfo toUserMask(@g UserModel userModel) {
        Intrinsics.checkNotNullParameter(userModel, "<this>");
        String userNameMask = userModel.getUserNameMask();
        if (userNameMask != null) {
            return new ChatMemberInfo(userModel.getUserId(), userNameMask, Type.LocalMask.INSTANCE, userModel.getAvatar(), userModel.getManagementRole());
        }
        return new ChatMemberInfo(userModel.getUserId(), userModel.getNickname(), Type.NicknameMask.INSTANCE, userModel.getAvatar(), userModel.getManagementRole());
    }
}
