package com.im.freechat.shared.entities;

import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u0003HÖ\u0001J\t\u0010\u000e\u001a\u00020\u000fHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0010"}, d2 = {"Lcom/im/freechat/shared/entities/SyncAppStateEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "userId", "", "(I)V", "getUserId", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SyncAppStateEvent extends SocketEvent {
    private final int userId;

    public SyncAppStateEvent(int i4) {
        super(null);
        this.userId = i4;
    }

    public static /* synthetic */ SyncAppStateEvent copy$default(SyncAppStateEvent syncAppStateEvent, int i4, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = syncAppStateEvent.userId;
        }
        return syncAppStateEvent.copy(i4);
    }

    public final int component1() {
        return this.userId;
    }

    @g
    public final SyncAppStateEvent copy(int i4) {
        return new SyncAppStateEvent(i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SyncAppStateEvent) && this.userId == ((SyncAppStateEvent) obj).userId;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return this.userId;
    }

    @g
    public String toString() {
        return "SyncAppStateEvent(userId=" + this.userId + ')';
    }
}
