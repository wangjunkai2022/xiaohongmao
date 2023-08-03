package com.im.freechat.shared.entities;

import com.google.android.exoplayer2.text.ttml.d;
import k4.b;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: SocketEvent.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u000f\u001a\u00020\u0006HÆ\u0003J'\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013HÖ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/im/freechat/shared/entities/TypingEvent;", "Lcom/im/freechat/shared/entities/SocketEvent;", "userId", "", b.f84734a, d.f25725o0, "", "(IIZ)V", "getChatId", "()I", "getStart", "()Z", "getUserId", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "toString", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class TypingEvent extends SocketEvent {
    private final int chatId;
    private final boolean start;
    private final int userId;

    public TypingEvent(int i4, int i10, boolean z9) {
        super(null);
        this.userId = i4;
        this.chatId = i10;
        this.start = z9;
    }

    public static /* synthetic */ TypingEvent copy$default(TypingEvent typingEvent, int i4, int i10, boolean z9, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i4 = typingEvent.userId;
        }
        if ((i11 & 2) != 0) {
            i10 = typingEvent.chatId;
        }
        if ((i11 & 4) != 0) {
            z9 = typingEvent.start;
        }
        return typingEvent.copy(i4, i10, z9);
    }

    public final int component1() {
        return this.userId;
    }

    public final int component2() {
        return this.chatId;
    }

    public final boolean component3() {
        return this.start;
    }

    @g
    public final TypingEvent copy(int i4, int i10, boolean z9) {
        return new TypingEvent(i4, i10, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TypingEvent) {
            TypingEvent typingEvent = (TypingEvent) obj;
            return this.userId == typingEvent.userId && this.chatId == typingEvent.chatId && this.start == typingEvent.start;
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final boolean getStart() {
        return this.start;
    }

    public final int getUserId() {
        return this.userId;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int i4 = ((this.userId * 31) + this.chatId) * 31;
        boolean z9 = this.start;
        int i10 = z9;
        if (z9 != 0) {
            i10 = 1;
        }
        return i4 + i10;
    }

    @g
    public String toString() {
        return "TypingEvent(userId=" + this.userId + ", chatId=" + this.chatId + ", start=" + this.start + ')';
    }
}
