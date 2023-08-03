package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u000b\u0010\u0007\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\b\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\rHÖ\u0001J\t\u0010\u000e\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/JoinChatResponse;", "", b.f84734a, "", "(Ljava/lang/String;)V", "getChatId", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class JoinChatResponse {
    @h
    private final String chatId;

    public JoinChatResponse(@g(name = "conv_id") @h String str) {
        this.chatId = str;
    }

    public static /* synthetic */ JoinChatResponse copy$default(JoinChatResponse joinChatResponse, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = joinChatResponse.chatId;
        }
        return joinChatResponse.copy(str);
    }

    @h
    public final String component1() {
        return this.chatId;
    }

    @m8.g
    public final JoinChatResponse copy(@g(name = "conv_id") @h String str) {
        return new JoinChatResponse(str);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof JoinChatResponse) && Intrinsics.areEqual(this.chatId, ((JoinChatResponse) obj).chatId);
    }

    @h
    public final String getChatId() {
        return this.chatId;
    }

    public int hashCode() {
        String str = this.chatId;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    @m8.g
    public String toString() {
        return "JoinChatResponse(chatId=" + this.chatId + ')';
    }
}
