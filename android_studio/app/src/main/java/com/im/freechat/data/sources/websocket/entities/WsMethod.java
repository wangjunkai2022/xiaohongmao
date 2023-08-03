package com.im.freechat.data.sources.websocket.entities;

import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import m8.g;

/* compiled from: WsRequest.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/im/freechat/data/sources/websocket/entities/WsMethod;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "LOGIN", "EXIT", "READ_MESSAGE", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public enum WsMethod {
    LOGIN("Login"),
    EXIT(b.f47843w),
    READ_MESSAGE("read_msg_callback");
    
    @g
    private final String type;

    WsMethod(String str) {
        this.type = str;
    }

    @g
    public final String getType() {
        return this.type;
    }
}
