package com.im.freechat.shared.entities;

import k4.b;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0013"}, d2 = {"Lcom/im/freechat/shared/entities/SyncLastMessagesEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "userId", "", b.f84734a, "(II)V", "getChatId", "()I", "getUserId", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SyncLastMessagesEvent extends SocketEvent {
    private final int chatId;
    private final int userId;

    public SyncLastMessagesEvent(int i4, int i10) {
        super(null);
        this.userId = i4;
        this.chatId = i10;
    }

    public static /* synthetic */ SyncLastMessagesEvent copy$default(SyncLastMessagesEvent syncLastMessagesEvent, int i4, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = syncLastMessagesEvent.userId;
        }
        if ((i11 & 2) != 0) {
            i10 = syncLastMessagesEvent.chatId;
        }
        return syncLastMessagesEvent.copy(i4, i10);
    }

    public final int component1() {
        return this.userId;
    }

    public final int component2() {
        return this.chatId;
    }

    @g
    public final SyncLastMessagesEvent copy(int i4, int i10) {
        return new SyncLastMessagesEvent(i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SyncLastMessagesEvent) {
            SyncLastMessagesEvent syncLastMessagesEvent = (SyncLastMessagesEvent) obj;
            return this.userId == syncLastMessagesEvent.userId && this.chatId == syncLastMessagesEvent.chatId;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final int getUserId() {
        return this.userId;
    }

    public int hashCode() {
        return (this.userId * 31) + this.chatId;
    }

    @g
    public String toString() {
        return "SyncLastMessagesEvent(userId=" + this.userId + ", chatId=" + this.chatId + ')';
    }
}
