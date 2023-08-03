package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0002\u0010\rJ\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\"\u001a\u00020\u0006HÆ\u0003J\t\u0010#\u001a\u00020\u000bHÆ\u0003J\t\u0010$\u001a\u00020\u000bHÆ\u0003J_\u0010%\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000bHÆ\u0001J\u0013\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)HÖ\u0003J\t\u0010*\u001a\u00020\u000bHÖ\u0001J\t\u0010+\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000fR\u0014\u0010\u0018\u001a\u00020\u0019X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0012¨\u0006,"}, d2 = {"Lcom/im/freechat/shared/entities/message/GifAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "gifId", "width", "", "height", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getFileName", "()Ljava/lang/String;", "getGifId", "getHeight", "()I", "getLocalPath", "getMediaId", "()J", "getMessageId", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class GifAttachment implements Attachment {
    @h
    private final String fileName;
    @g
    private final String gifId;
    private final int height;
    @h
    private final String localPath;
    private final long mediaId;
    private final long messageId;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type;
    private final int width;

    public GifAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, @g String gifId, int i4, int i10) {
        Intrinsics.checkNotNullParameter(gifId, "gifId");
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.gifId = gifId;
        this.width = i4;
        this.height = i10;
        this.type = Message.MediaType.GIF;
    }

    public final long component1() {
        return getMediaId();
    }

    public final long component2() {
        return getMessageId();
    }

    @h
    public final String component3() {
        return getLocalPath();
    }

    @h
    public final String component4() {
        return getRemoteUrl();
    }

    @h
    public final String component5() {
        return getFileName();
    }

    @g
    public final String component6() {
        return this.gifId;
    }

    public final int component7() {
        return this.width;
    }

    public final int component8() {
        return this.height;
    }

    @g
    public final GifAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, @g String gifId, int i4, int i10) {
        Intrinsics.checkNotNullParameter(gifId, "gifId");
        return new GifAttachment(j4, j10, str, str2, str3, gifId, i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof GifAttachment) {
            GifAttachment gifAttachment = (GifAttachment) obj;
            return getMediaId() == gifAttachment.getMediaId() && getMessageId() == gifAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), gifAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), gifAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), gifAttachment.getFileName()) && Intrinsics.areEqual(this.gifId, gifAttachment.gifId) && this.width == gifAttachment.width && this.height == gifAttachment.height;
        }
        return false;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
    }

    @g
    public final String getGifId() {
        return this.gifId;
    }

    public final int getHeight() {
        return this.height;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getLocalPath() {
        return this.localPath;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    public long getMediaId() {
        return this.mediaId;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    public long getMessageId() {
        return this.messageId;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getRemoteUrl() {
        return this.remoteUrl;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @g
    public Message.MediaType getType() {
        return this.type;
    }

    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() != null ? getFileName().hashCode() : 0)) * 31) + this.gifId.hashCode()) * 31) + this.width) * 31) + this.height;
    }

    @g
    public String toString() {
        return "GifAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", gifId=" + this.gifId + ", width=" + this.width + ", height=" + this.height + ')';
    }
}
