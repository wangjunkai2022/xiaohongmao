package com.im.freechat.data.openapigen.models;

import a5.a;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: EditMessageMediaGroupRequest.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/openapigen/models/EditMessageMediaGroupRequest;", "", b.f84734a, "", "messageId", "", "media", "Lcom/im/freechat/data/openapigen/models/MediaGroup;", "(IJLcom/im/freechat/data/openapigen/models/MediaGroup;)V", "getChatId", "()I", "getMedia", "()Lcom/im/freechat/data/openapigen/models/MediaGroup;", "getMessageId", "()J", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class EditMessageMediaGroupRequest {
    private final int chatId;
    @g
    private final MediaGroup media;
    private final long messageId;

    public EditMessageMediaGroupRequest(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "media") @g MediaGroup media) {
        Intrinsics.checkNotNullParameter(media, "media");
        this.chatId = i4;
        this.messageId = j4;
        this.media = media;
    }

    public static /* synthetic */ EditMessageMediaGroupRequest copy$default(EditMessageMediaGroupRequest editMessageMediaGroupRequest, int i4, long j4, MediaGroup mediaGroup, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i4 = editMessageMediaGroupRequest.chatId;
        }
        if ((i10 & 2) != 0) {
            j4 = editMessageMediaGroupRequest.messageId;
        }
        if ((i10 & 4) != 0) {
            mediaGroup = editMessageMediaGroupRequest.media;
        }
        return editMessageMediaGroupRequest.copy(i4, j4, mediaGroup);
    }

    public final int component1() {
        return this.chatId;
    }

    public final long component2() {
        return this.messageId;
    }

    @g
    public final MediaGroup component3() {
        return this.media;
    }

    @g
    public final EditMessageMediaGroupRequest copy(@com.squareup.moshi.g(name = "chat_id") int i4, @com.squareup.moshi.g(name = "message_id") long j4, @com.squareup.moshi.g(name = "media") @g MediaGroup media) {
        Intrinsics.checkNotNullParameter(media, "media");
        return new EditMessageMediaGroupRequest(i4, j4, media);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof EditMessageMediaGroupRequest) {
            EditMessageMediaGroupRequest editMessageMediaGroupRequest = (EditMessageMediaGroupRequest) obj;
            return this.chatId == editMessageMediaGroupRequest.chatId && this.messageId == editMessageMediaGroupRequest.messageId && Intrinsics.areEqual(this.media, editMessageMediaGroupRequest.media);
        }
        return false;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @g
    public final MediaGroup getMedia() {
        return this.media;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    public int hashCode() {
        return (((this.chatId * 31) + a.a(this.messageId)) * 31) + this.media.hashCode();
    }

    @g
    public String toString() {
        return "EditMessageMediaGroupRequest(chatId=" + this.chatId + ", messageId=" + this.messageId + ", media=" + this.media + ')';
    }
}
