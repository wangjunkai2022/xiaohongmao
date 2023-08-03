package com.im.freechat.data.openapigen.models;

import a5.a;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: EditMessageTextRequest.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0007HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0018"}, d2 = {"Lcom/im/freechat/data/openapigen/models/EditMessageTextRequest;", "", b.f84734a, "", "messageId", "", "text", "", "(IJLjava/lang/String;)V", "getChatId", "()I", "getMessageId", "()J", "getText", "()Ljava/lang/String;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class EditMessageTextRequest {
    private final int chatId;
    private final long messageId;
    @g
    private final String text;

    public EditMessageTextRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "text") @g String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        this.chatId = i4;
        this.messageId = j4;
        this.text = text;
    }

    public static /* synthetic */ EditMessageTextRequest copy$default(EditMessageTextRequest editMessageTextRequest, int i4, long j4, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = editMessageTextRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            j4 = editMessageTextRequest.messageId;
        }
        if ((i10 & 4) != 0) {
            str = editMessageTextRequest.text;
        }
        return editMessageTextRequest.copy(i4, j4, str);
    }

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.messageId;
    }

    @g
    public final String component3() {
        return this.text;
    }

    @g
    public final EditMessageTextRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "text") @g String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        return new EditMessageTextRequest(i4, j4, text);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EditMessageTextRequest) {
            EditMessageTextRequest editMessageTextRequest = (EditMessageTextRequest) obj;
            return this.chatId == editMessageTextRequest.chatId && this.messageId == editMessageTextRequest.messageId && Intrinsics.areEqual(this.text, editMessageTextRequest.text);
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    @g
    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return (((this.chatId * 31) + a.a(this.messageId)) * 31) + this.text.hashCode();
    }

    @g
    public String toString() {
        return "EditMessageTextRequest(chatId=" + this.chatId + ", messageId=" + this.messageId + ", text=" + this.text + ')';
    }
}
