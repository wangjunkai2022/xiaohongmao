package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\u0003¢\u0006\u0002\u0010\u000bJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003JW\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\n\u001a\u00020\u0003HÆ\u0001J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\rR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\rR\u0014\u0010\u0015\u001a\u00020\u0016X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u0006("}, d2 = {"Lcom/im/freechat/shared/entities/message/FileAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "mimeType", "fileSize", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "getFileName", "()Ljava/lang/String;", "getFileSize", "()J", "getLocalPath", "getMediaId", "getMessageId", "getMimeType", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "equals", "", "other", "", "hashCode", "", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class FileAttachment implements Attachment {
    @h
    private final String fileName;
    private final long fileSize;
    @h
    private final String localPath;
    private final long mediaId;
    private final long messageId;
    @h
    private final String mimeType;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type = Message.MediaType.FILE;

    public FileAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, long j11) {
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.mimeType = str4;
        this.fileSize = j11;
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

    @h
    public final String component6() {
        return this.mimeType;
    }

    public final long component7() {
        return this.fileSize;
    }

    @g
    public final FileAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, long j11) {
        return new FileAttachment(j4, j10, str, str2, str3, str4, j11);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof FileAttachment) {
            FileAttachment fileAttachment = (FileAttachment) obj;
            return getMediaId() == fileAttachment.getMediaId() && getMessageId() == fileAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), fileAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), fileAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), fileAttachment.getFileName()) && Intrinsics.areEqual(this.mimeType, fileAttachment.mimeType) && this.fileSize == fileAttachment.fileSize;
        }
        return false;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
    }

    public final long getFileSize() {
        return this.fileSize;
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

    public int hashCode() {
        int a10 = ((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() == null ? 0 : getFileName().hashCode())) * 31;
        String str = this.mimeType;
        return ((a10 + (str != null ? str.hashCode() : 0)) * 31) + a.a(this.fileSize);
    }

    @g
    public String toString() {
        return "FileAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", mimeType=" + this.mimeType + ", fileSize=" + this.fileSize + ')';
    }
}
