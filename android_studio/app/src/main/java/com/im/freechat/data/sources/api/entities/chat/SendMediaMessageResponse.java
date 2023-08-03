package com.im.freechat.data.sources.api.entities.chat;

import com.squareup.moshi.g;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0001\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0003J'\u0010\r\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0003\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/SendMediaMessageResponse;", "", "mediaGroupId", "", "messageIds", "", "(Ljava/lang/String;Ljava/util/List;)V", "getMediaGroupId", "()Ljava/lang/String;", "getMessageIds", "()Ljava/util/List;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class SendMediaMessageResponse {
    @h
    private final String mediaGroupId;
    @h
    private final List<String> messageIds;

    public SendMediaMessageResponse(@g(name = "media_group_id") @h String str, @g(name = "message_ids") @h List<String> list) {
        this.mediaGroupId = str;
        this.messageIds = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SendMediaMessageResponse copy$default(SendMediaMessageResponse sendMediaMessageResponse, String str, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = sendMediaMessageResponse.mediaGroupId;
        }
        if ((i4 & 2) != 0) {
            list = sendMediaMessageResponse.messageIds;
        }
        return sendMediaMessageResponse.copy(str, list);
    }

    @h
    public final String component1() {
        return this.mediaGroupId;
    }

    @h
    public final List<String> component2() {
        return this.messageIds;
    }

    @m8.g
    public final SendMediaMessageResponse copy(@g(name = "media_group_id") @h String str, @g(name = "message_ids") @h List<String> list) {
        return new SendMediaMessageResponse(str, list);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SendMediaMessageResponse) {
            SendMediaMessageResponse sendMediaMessageResponse = (SendMediaMessageResponse) obj;
            return Intrinsics.areEqual(this.mediaGroupId, sendMediaMessageResponse.mediaGroupId) && Intrinsics.areEqual(this.messageIds, sendMediaMessageResponse.messageIds);
        }
        return false;
    }

    @h
    public final String getMediaGroupId() {
        return this.mediaGroupId;
    }

    @h
    public final List<String> getMessageIds() {
        return this.messageIds;
    }

    public int hashCode() {
        String str = this.mediaGroupId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        List<String> list = this.messageIds;
        return hashCode + (list != null ? list.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "SendMediaMessageResponse(mediaGroupId=" + this.mediaGroupId + ", messageIds=" + this.messageIds + ')';
    }
}
