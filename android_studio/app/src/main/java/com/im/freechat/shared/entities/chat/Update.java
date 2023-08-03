package com.im.freechat.shared.entities.chat;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: Update.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0002\n\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Update;", "", "type", "Lcom/im/freechat/shared/entities/chat/Update$UpdateType;", "data", "(Lcom/im/freechat/shared/entities/chat/Update$UpdateType;Ljava/lang/Object;)V", "getData", "()Ljava/lang/Object;", "getType", "()Lcom/im/freechat/shared/entities/chat/Update$UpdateType;", "ModifyData", "UpdateType", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Update {
    @g
    private final Object data;
    @g
    private final UpdateType type;

    /* compiled from: Update.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Update$ModifyData;", "", "msgId", "", "content", "(Ljava/lang/String;Ljava/lang/String;)V", "getContent", "()Ljava/lang/String;", "getMsgId", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class ModifyData {
        @g
        private final String content;
        @g
        private final String msgId;

        public ModifyData(@g String msgId, @g String content) {
            Intrinsics.checkNotNullParameter(msgId, "msgId");
            Intrinsics.checkNotNullParameter(content, "content");
            this.msgId = msgId;
            this.content = content;
        }

        @g
        public final String getContent() {
            return this.content;
        }

        @g
        public final String getMsgId() {
            return this.msgId;
        }
    }

    /* compiled from: Update.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Update$UpdateType;", "", "(Ljava/lang/String;I)V", "NEW_MESSAGE", "MESSAGE_READ", "MESSAGE_DELETE", "MESSAGE_MODIFY", "CLEAR_CHAT_HISTORY", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum UpdateType {
        NEW_MESSAGE,
        MESSAGE_READ,
        MESSAGE_DELETE,
        MESSAGE_MODIFY,
        CLEAR_CHAT_HISTORY
    }

    public Update(@g UpdateType type, @g Object data) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(data, "data");
        this.type = type;
        this.data = data;
    }

    @g
    public final Object getData() {
        return this.data;
    }

    @g
    public final UpdateType getType() {
        return this.type;
    }
}
