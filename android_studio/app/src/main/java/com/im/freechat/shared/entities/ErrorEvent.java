package com.im.freechat.shared.entities;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/shared/entities/ErrorEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "message", "", "(Ljava/lang/String;)V", "getMessage", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ErrorEvent extends SocketEvent {
    @g
    private final String message;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ErrorEvent(@g String message) {
        super(null);
        Intrinsics.checkNotNullParameter(message, "message");
        this.message = message;
    }

    public static /* synthetic */ ErrorEvent copy$default(ErrorEvent errorEvent, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = errorEvent.message;
        }
        return errorEvent.copy(str);
    }

    @g
    public final String component1() {
        return this.message;
    }

    @g
    public final ErrorEvent copy(@g String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        return new ErrorEvent(message);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ErrorEvent) && Intrinsics.areEqual(this.message, ((ErrorEvent) obj).message);
    }

    @g
    public final String getMessage() {
        return this.message;
    }

    public int hashCode() {
        return this.message.hashCode();
    }

    @g
    public String toString() {
        return "ErrorEvent(message=" + this.message + ')';
    }
}
