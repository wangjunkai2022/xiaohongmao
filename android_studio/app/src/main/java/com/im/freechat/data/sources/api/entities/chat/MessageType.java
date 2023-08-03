package com.im.freechat.data.sources.api.entities.chat;

import kotlin.Metadata;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageType;", "", "type", "", "(Ljava/lang/String;II)V", "getType", "()I", "TEXT", "IMAGE", "AUDIO", "VIDEO", "LOCATION", "FILE", "GIF", "MEDIA_GROUP", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public enum MessageType {
    TEXT(-1),
    IMAGE(-2),
    AUDIO(-3),
    VIDEO(-4),
    LOCATION(-5),
    FILE(-6),
    GIF(-7),
    MEDIA_GROUP(-77);
    
    private final int type;

    MessageType(int i4) {
        this.type = i4;
    }

    public final int getType() {
        return this.type;
    }
}
