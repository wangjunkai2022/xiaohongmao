package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import com.qennnsad.aknkaksd.data.websocket.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Error.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0019B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Error;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "Lcom/im/freechat/data/openapigen/models/Error$Type;", "code", "", "message", "", "(Lcom/im/freechat/data/openapigen/models/Error$Type;ILjava/lang/String;)V", "getCode", "()I", "getMessage", "()Ljava/lang/String;", "getType", "()Lcom/im/freechat/data/openapigen/models/Error$Type;", "component1", "component2", "component3", "copy", "equals", "", "other", "", "hashCode", "toString", "Type", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Error implements SocketMessage {
    private final int code;
    @g
    private final String message;
    @g
    private final Type type;

    /* compiled from: Error.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Error$Type;", "", "value", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", b.f47825n, "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public enum Type {
        error(b.f47825n);
        
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

    public Error(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "message") @g String message) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        this.type = type;
        this.code = i4;
        this.message = message;
    }

    public static /* synthetic */ Error copy$default(Error error, Type type, int i4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            type = error.type;
        }
        if ((i10 & 2) != 0) {
            i4 = error.code;
        }
        if ((i10 & 4) != 0) {
            str = error.message;
        }
        return error.copy(type, i4, str);
    }

    @g
    public final Type component1() {
        return this.type;
    }

    public final int component2() {
        return this.code;
    }

    @g
    public final String component3() {
        return this.message;
    }

    @g
    public final Error copy(@com.squareup.moshi.g(name = "type") @g Type type, @com.squareup.moshi.g(name = "code") int i4, @com.squareup.moshi.g(name = "message") @g String message) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(message, "message");
        return new Error(type, i4, message);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Error) {
            Error error = (Error) obj;
            return this.type == error.type && this.code == error.code && Intrinsics.areEqual(this.message, error.message);
        }
        return false;
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    public final int getCode() {
        return this.code;
    }

    @g
    public final String getMessage() {
        return this.message;
    }

    @g
    public final Type getType() {
        return this.type;
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.code) * 31) + this.message.hashCode();
    }

    @g
    public String toString() {
        return "Error(type=" + this.type + ", code=" + this.code + ", message=" + this.message + ')';
    }
}
