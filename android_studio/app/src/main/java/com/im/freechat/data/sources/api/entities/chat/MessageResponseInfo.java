package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000eJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J2\u0010\u0013\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;", "", "type", "", "text", "", "messageExpansion", "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)V", "getMessageExpansion", "()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;", "getText", "()Ljava/lang/String;", "getType", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageResponseInfo {
    @h
    private final MessageExpansionInfo messageExpansion;
    @h
    private final String text;
    @h
    private final Integer type;

    public MessageResponseInfo(@g(name = "_type") @h Integer num, @g(name = "_text") @h String str, @g(name = "_expansion") @h MessageExpansionInfo messageExpansionInfo) {
        this.type = num;
        this.text = str;
        this.messageExpansion = messageExpansionInfo;
    }

    public static /* synthetic */ MessageResponseInfo copy$default(MessageResponseInfo messageResponseInfo, Integer num, String str, MessageExpansionInfo messageExpansionInfo, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            num = messageResponseInfo.type;
        }
        if ((i4 & 2) != 0) {
            str = messageResponseInfo.text;
        }
        if ((i4 & 4) != 0) {
            messageExpansionInfo = messageResponseInfo.messageExpansion;
        }
        return messageResponseInfo.copy(num, str, messageExpansionInfo);
    }

    @h
    public final Integer component1() {
        return this.type;
    }

    @h
    public final String component2() {
        return this.text;
    }

    @h
    public final MessageExpansionInfo component3() {
        return this.messageExpansion;
    }

    @m8.g
    public final MessageResponseInfo copy(@g(name = "_type") @h Integer num, @g(name = "_text") @h String str, @g(name = "_expansion") @h MessageExpansionInfo messageExpansionInfo) {
        return new MessageResponseInfo(num, str, messageExpansionInfo);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageResponseInfo) {
            MessageResponseInfo messageResponseInfo = (MessageResponseInfo) obj;
            return Intrinsics.areEqual(this.type, messageResponseInfo.type) && Intrinsics.areEqual(this.text, messageResponseInfo.text) && Intrinsics.areEqual(this.messageExpansion, messageResponseInfo.messageExpansion);
        }
        return false;
    }

    @h
    public final MessageExpansionInfo getMessageExpansion() {
        return this.messageExpansion;
    }

    @h
    public final String getText() {
        return this.text;
    }

    @h
    public final Integer getType() {
        return this.type;
    }

    public int hashCode() {
        Integer num = this.type;
        int hashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.text;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        MessageExpansionInfo messageExpansionInfo = this.messageExpansion;
        return hashCode2 + (messageExpansionInfo != null ? messageExpansionInfo.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageResponseInfo(type=" + this.type + ", text=" + this.text + ", messageExpansion=" + this.messageExpansion + ')';
    }
}
