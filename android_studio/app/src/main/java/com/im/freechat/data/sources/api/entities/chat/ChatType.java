package com.im.freechat.data.sources.api.entities.chat;

import g5.h;
import kotlin.Metadata;
import m8.g;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/ChatType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "SINGLE", "GROUP", "CHAT_ROOM", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public enum ChatType {
    SINGLE("1"),
    GROUP("2"),
    CHAT_ROOM(h.f67840d);
    
    @g
    private final String type;

    ChatType(String str) {
        this.type = str;
    }

    @g
    public final String getType() {
        return this.type;
    }
}
