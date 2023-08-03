package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Ping.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u000f\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Ping;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "Lcom/im/freechat/data/openapigen/models/Ping$Type;", "(Lcom/im/freechat/data/openapigen/models/Ping$Type;)V", "getType", "()Lcom/im/freechat/data/openapigen/models/Ping$Type;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Ping implements SocketMessage {
    @g
    private final Type type;

    /* compiled from: Ping.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Ping$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", b.f47841v, "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        ping(b.f47841v);
        
        @g
        private final String value;

        Type(String str) {
            this.value = str;
        }

        @g
        public final String getValue() {
            return this.value;
        }
    }

    public Ping(@com.squareup.moshi.g(name = "type") @g Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    public static /* synthetic */ Ping copy$default(Ping ping, Type type, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            type = ping.type;
        }
        return ping.copy(type);
    }

    @g
    public final Type component1() {
        return this.type;
    }

    @g
    public final Ping copy(@com.squareup.moshi.g(name = "type") @g Type type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new Ping(type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof Ping) && this.type == ((Ping) obj).type;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    @g
    public String toString() {
        return "Ping(type=" + this.type + ')';
    }
}
