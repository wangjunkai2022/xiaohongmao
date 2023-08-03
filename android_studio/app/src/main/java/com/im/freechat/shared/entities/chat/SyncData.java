package com.im.freechat.shared.entities.chat;

import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: SyncData.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0015\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0011J\t\u0010\u0017\u001a\u00020\u0007HÆ\u0003JF\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\u0007HÆ\u0001¢\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u00072\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\b\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/im/freechat/shared/entities/chat/SyncData;", "", b.f84734a, "", "lastLocalSyncMessageId", "lastRemoteSyncMessageId", "lastShowHistoryForNewMembers", "", "currentShowHistoryForNewMembers", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)V", "getChatId", "()Ljava/lang/String;", "getCurrentShowHistoryForNewMembers", "()Z", "getLastLocalSyncMessageId", "getLastRemoteSyncMessageId", "getLastShowHistoryForNewMembers", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Z)Lcom/im/freechat/shared/entities/chat/SyncData;", "equals", "other", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class SyncData {
    @g
    private final String chatId;
    private final boolean currentShowHistoryForNewMembers;
    @h
    private final String lastLocalSyncMessageId;
    @h
    private final String lastRemoteSyncMessageId;
    @h
    private final Boolean lastShowHistoryForNewMembers;

    public SyncData(@g String chatId, @h String str, @h String str2, @h Boolean bool, boolean z9) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        this.chatId = chatId;
        this.lastLocalSyncMessageId = str;
        this.lastRemoteSyncMessageId = str2;
        this.lastShowHistoryForNewMembers = bool;
        this.currentShowHistoryForNewMembers = z9;
    }

    public static /* synthetic */ SyncData copy$default(SyncData syncData, String str, String str2, String str3, Boolean bool, boolean z9, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = syncData.chatId;
        }
        if ((i4 & 2) != 0) {
            str2 = syncData.lastLocalSyncMessageId;
        }
        String str4 = str2;
        if ((i4 & 4) != 0) {
            str3 = syncData.lastRemoteSyncMessageId;
        }
        String str5 = str3;
        if ((i4 & 8) != 0) {
            bool = syncData.lastShowHistoryForNewMembers;
        }
        Boolean bool2 = bool;
        if ((i4 & 16) != 0) {
            z9 = syncData.currentShowHistoryForNewMembers;
        }
        return syncData.copy(str, str4, str5, bool2, z9);
    }

    @g
    public final String component1() {
        return this.chatId;
    }

    @h
    public final String component2() {
        return this.lastLocalSyncMessageId;
    }

    @h
    public final String component3() {
        return this.lastRemoteSyncMessageId;
    }

    @h
    public final Boolean component4() {
        return this.lastShowHistoryForNewMembers;
    }

    public final boolean component5() {
        return this.currentShowHistoryForNewMembers;
    }

    @g
    public final SyncData copy(@g String chatId, @h String str, @h String str2, @h Boolean bool, boolean z9) {
        Intrinsics.checkNotNullParameter(chatId, "chatId");
        return new SyncData(chatId, str, str2, bool, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SyncData) {
            SyncData syncData = (SyncData) obj;
            return Intrinsics.areEqual(this.chatId, syncData.chatId) && Intrinsics.areEqual(this.lastLocalSyncMessageId, syncData.lastLocalSyncMessageId) && Intrinsics.areEqual(this.lastRemoteSyncMessageId, syncData.lastRemoteSyncMessageId) && Intrinsics.areEqual(this.lastShowHistoryForNewMembers, syncData.lastShowHistoryForNewMembers) && this.currentShowHistoryForNewMembers == syncData.currentShowHistoryForNewMembers;
        }
        return false;
    }

    @g
    public final String getChatId() {
        return this.chatId;
    }

    public final boolean getCurrentShowHistoryForNewMembers() {
        return this.currentShowHistoryForNewMembers;
    }

    @h
    public final String getLastLocalSyncMessageId() {
        return this.lastLocalSyncMessageId;
    }

    @h
    public final String getLastRemoteSyncMessageId() {
        return this.lastRemoteSyncMessageId;
    }

    @h
    public final Boolean getLastShowHistoryForNewMembers() {
        return this.lastShowHistoryForNewMembers;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.chatId.hashCode() * 31;
        String str = this.lastLocalSyncMessageId;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.lastRemoteSyncMessageId;
        int hashCode3 = (hashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Boolean bool = this.lastShowHistoryForNewMembers;
        int hashCode4 = (hashCode3 + (bool != null ? bool.hashCode() : 0)) * 31;
        boolean z9 = this.currentShowHistoryForNewMembers;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode4 + i4;
    }

    @g
    public String toString() {
        return "SyncData(chatId=" + this.chatId + ", lastLocalSyncMessageId=" + this.lastLocalSyncMessageId + ", lastRemoteSyncMessageId=" + this.lastRemoteSyncMessageId + ", lastShowHistoryForNewMembers=" + this.lastShowHistoryForNewMembers + ", currentShowHistoryForNewMembers=" + this.currentShowHistoryForNewMembers + ')';
    }
}
