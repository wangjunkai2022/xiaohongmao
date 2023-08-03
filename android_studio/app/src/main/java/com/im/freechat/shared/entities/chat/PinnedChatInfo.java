package com.im.freechat.shared.entities.chat;

import a5.a;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: PinnedChatInfo.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/shared/entities/chat/PinnedChatInfo;", "", b.f84734a, "", j.f47980a, "", "(Ljava/lang/String;J)V", "getChatId", "()Ljava/lang/String;", "getTime", "()J", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class PinnedChatInfo {
    @g
    private final String chatId;
    private final long time;

    public PinnedChatInfo(@g String chatId, long j4) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.chatId = chatId;
        this.time = j4;
    }

    public static /* synthetic */ PinnedChatInfo copy$default(PinnedChatInfo pinnedChatInfo, String str, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = pinnedChatInfo.chatId;
        }
        if ((i4 & 2) != 0) {
            j4 = pinnedChatInfo.time;
        }
        return pinnedChatInfo.copy(str, j4);
    }

    @g
    public final String component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.time;
    }

    @g
    public final PinnedChatInfo copy(@g String chatId, long j4) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new PinnedChatInfo(chatId, j4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PinnedChatInfo) {
            PinnedChatInfo pinnedChatInfo = (PinnedChatInfo) obj;
            return Intrinsics.areEqual(this.chatId, pinnedChatInfo.chatId) && this.time == pinnedChatInfo.time;
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    public final long getTime() {
        return this.time;
    }

    public int hashCode() {
        return (this.chatId.hashCode() * 31) + a.a(this.time);
    }

    @g
    public String toString() {
        return "PinnedChatInfo(chatId=" + this.chatId + ", time=" + this.time + ')';
    }
}
