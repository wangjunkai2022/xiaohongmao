package com.im.freechat.data.sources.api.entities.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"nameOrNickname", "", "Lcom/im/freechat/data/sources/api/entities/chat/ChatMemberResponse;", "data_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatResponseKt {
    @h
    public static final String nameOrNickname(@g ChatMemberResponse chatMemberResponse) {
        String nickname;
        Intrinsics.checkNotNullParameter(chatMemberResponse, "<this>");
        UserExpansionInfo expansion = chatMemberResponse.getExpansion();
        if (expansion == null || (nickname = expansion.getNickname()) == null) {
            UserExpansionInfo expansion2 = chatMemberResponse.getExpansion();
            if (expansion2 != null) {
                return expansion2.getName();
            }
            return null;
        }
        return nickname;
    }
}
