package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0002\u0010\u000fJ\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\rHÆ\u0003J\t\u0010#\u001a\u00020\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010*\u001a\u00020\rHÆ\u0003Jy\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\rHÆ\u0001J\u0013\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010/HÖ\u0003J\t\u00100\u001a\u00020\rHÖ\u0001J\t\u00101\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u000e\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0011R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0011R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0011R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u001dX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0013¨\u00062"}, d2 = {"Lcom/im/freechat/shared/entities/message/ImageAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "mimeType", "previewRemoteUrl", "previewLocalPath", "width", "", "height", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "getFileName", "()Ljava/lang/String;", "getHeight", "()I", "getLocalPath", "getMediaId", "()J", "getMessageId", "getMimeType", "getPreviewLocalPath", "getPreviewRemoteUrl", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component10", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ImageAttachment implements Attachment {
    @h
    private final String fileName;
    private final int height;
    @h
    private final String localPath;
    private final long mediaId;
    private final long messageId;
    @h
    private final String mimeType;
    @h
    private final String previewLocalPath;
    @h
    private final String previewRemoteUrl;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type = Message.MediaType.IMAGE;
    private final int width;

    public ImageAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, @h String str5, @h String str6, int i4, int i10) {
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.mimeType = str4;
        this.previewRemoteUrl = str5;
        this.previewLocalPath = str6;
        this.width = i4;
        this.height = i10;
    }

    public final long component1() {
        return getMediaId();
    }

    public final int component10() {
        return this.height;
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

    @h
    public final String component6() {
        return this.mimeType;
    }

    @h
    public final String component7() {
        return this.previewRemoteUrl;
    }

    @h
    public final String component8() {
        return this.previewLocalPath;
    }

    public final int component9() {
        return this.width;
    }

    @g
    public final ImageAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, @h String str5, @h String str6, int i4, int i10) {
        return new ImageAttachment(j4, j10, str, str2, str3, str4, str5, str6, i4, i10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ImageAttachment) {
            ImageAttachment imageAttachment = (ImageAttachment) obj;
            return getMediaId() == imageAttachment.getMediaId() && getMessageId() == imageAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), imageAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), imageAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), imageAttachment.getFileName()) && Intrinsics.areEqual(this.mimeType, imageAttachment.mimeType) && Intrinsics.areEqual(this.previewRemoteUrl, imageAttachment.previewRemoteUrl) && Intrinsics.areEqual(this.previewLocalPath, imageAttachment.previewLocalPath) && this.width == imageAttachment.width && this.height == imageAttachment.height;
        }
        return false;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
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

    @h
    public final String getMimeType() {
        return this.mimeType;
    }

    @h
    public final String getPreviewLocalPath() {
        return this.previewLocalPath;
    }

    @h
    public final String getPreviewRemoteUrl() {
        return this.previewRemoteUrl;
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
        int a10 = ((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() == null ? 0 : getFileName().hashCode())) * 31;
        String str = this.mimeType;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.previewRemoteUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.previewLocalPath;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + this.width) * 31) + this.height;
    }

    @g
    public String toString() {
        return "ImageAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", mimeType=" + this.mimeType + ", previewRemoteUrl=" + this.previewRemoteUrl + ", previewLocalPath=" + this.previewLocalPath + ", width=" + this.width + ", height=" + this.height + ')';
    }
}
