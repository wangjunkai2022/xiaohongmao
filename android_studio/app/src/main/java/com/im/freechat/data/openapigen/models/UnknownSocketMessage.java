package com.im.freechat.data.openapigen.models;

import com.im.freechat.data.openapigen.models.SocketMessage;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: UnknownSocketMessage.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/data/openapigen/models/UnknownSocketMessage;", "Lcom/im/freechat/data/openapigen/models/SocketMessage;", "type", "", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UnknownSocketMessage implements SocketMessage {
    @g
    private final String type;

    public UnknownSocketMessage() {
        this(null, 1, null);
    }

    public UnknownSocketMessage(@g String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    public static /* synthetic */ UnknownSocketMessage copy$default(UnknownSocketMessage unknownSocketMessage, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = unknownSocketMessage.type;
        }
        return unknownSocketMessage.copy(str);
    }

    @g
    public final String component1() {
        return this.type;
    }

    @g
    public final UnknownSocketMessage copy(@g String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new UnknownSocketMessage(type);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof UnknownSocketMessage) && Intrinsics.areEqual(this.type, ((UnknownSocketMessage) obj).type);
    }

    @Override // com.im.freechat.data.openapigen.models.SocketMessage
    @g
    public String getClassName() {
        return SocketMessage.DefaultImpls.getClassName(this);
    }

    @g
    public final String getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type.hashCode();
    }

    @g
    public String toString() {
        return "UnknownSocketMessage(type=" + this.type + ')';
    }

    public /* synthetic */ UnknownSocketMessage(String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str);
    }
}
