package com.im.freechat.shared.entities.chat;

import com.im.freechat.shared.entities.chat.ChatMember;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: ChatMember.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"createManagementRole", "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "role", "", "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "shared"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatMemberKt {
    @g
    public static final ChatMember.ManagementRole createManagementRole(@h Integer num) {
        return (num != null && num.intValue() == 1) ? ChatMember.ManagementRole.CUSTOMER_SERVICE : (num != null && num.intValue() == 2) ? ChatMember.ManagementRole.MANAGEMENT : (num != null && num.intValue() == 3) ? ChatMember.ManagementRole.FAMILY : ChatMember.ManagementRole.NORMAL;
    }
}
