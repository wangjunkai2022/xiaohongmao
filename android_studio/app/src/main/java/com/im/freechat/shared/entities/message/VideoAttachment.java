package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001Bu\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u000b¢\u0006\u0002\u0010\u0011J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010/\u001a\u00020\u0003HÆ\u0003J\t\u00100\u001a\u00020\u000bHÆ\u0003J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00107\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u00108\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0096\u0001\u00109\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00032\b\b\u0002\u0010\u0010\u001a\u00020\u000bHÆ\u0001¢\u0006\u0002\u0010:J\u0013\u0010;\u001a\u00020 2\b\u0010<\u001a\u0004\u0018\u00010=HÖ\u0003J\t\u0010>\u001a\u00020\u000bHÖ\u0001J\t\u0010?\u001a\u00020\u0006HÖ\u0001R\u0011\u0010\u0010\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0015\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0015R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0017R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0015R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0015R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0015R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0015R\u0014\u0010(\u001a\u00020)X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b,\u0010\u0019¨\u0006@"}, d2 = {"Lcom/im/freechat/shared/entities/message/VideoAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "mimeType", "width", "", "height", "previewRemoteUrl", "previewLocalPath", "fileSize", "duration", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JI)V", "getDuration", "()I", "getFileName", "()Ljava/lang/String;", "getFileSize", "()J", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLocalPath", "getMediaId", "getMessageId", "getMimeType", d.au, "", "getPlaying", "()Z", "setPlaying", "(Z)V", "getPreviewLocalPath", "getPreviewRemoteUrl", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component10", "component11", "component12", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;JI)Lcom/im/freechat/shared/entities/message/VideoAttachment;", "equals", "other", "", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoAttachment implements Attachment {
    private final int duration;
    @h
    private final String fileName;
    private final long fileSize;
    @h
    private final Integer height;
    @h
    private final String localPath;
    private final long mediaId;
    private final long messageId;
    @h
    private final String mimeType;
    private boolean playing;
    @h
    private final String previewLocalPath;
    @h
    private final String previewRemoteUrl;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type = Message.MediaType.VIDEO;
    @h
    private final Integer width;

    public VideoAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, @h Integer num, @h Integer num2, @h String str5, @h String str6, long j11, int i4) {
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.mimeType = str4;
        this.width = num;
        this.height = num2;
        this.previewRemoteUrl = str5;
        this.previewLocalPath = str6;
        this.fileSize = j11;
        this.duration = i4;
    }

    public final long component1() {
        return getMediaId();
    }

    @h
    public final String component10() {
        return this.previewLocalPath;
    }

    public final long component11() {
        return this.fileSize;
    }

    public final int component12() {
        return this.duration;
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
    public final Integer component7() {
        return this.width;
    }

    @h
    public final Integer component8() {
        return this.height;
    }

    @h
    public final String component9() {
        return this.previewRemoteUrl;
    }

    @g
    public final VideoAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, @h String str4, @h Integer num, @h Integer num2, @h String str5, @h String str6, long j11, int i4) {
        return new VideoAttachment(j4, j10, str, str2, str3, str4, num, num2, str5, str6, j11, i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoAttachment) {
            VideoAttachment videoAttachment = (VideoAttachment) obj;
            return getMediaId() == videoAttachment.getMediaId() && getMessageId() == videoAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), videoAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), videoAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), videoAttachment.getFileName()) && Intrinsics.areEqual(this.mimeType, videoAttachment.mimeType) && Intrinsics.areEqual(this.width, videoAttachment.width) && Intrinsics.areEqual(this.height, videoAttachment.height) && Intrinsics.areEqual(this.previewRemoteUrl, videoAttachment.previewRemoteUrl) && Intrinsics.areEqual(this.previewLocalPath, videoAttachment.previewLocalPath) && this.fileSize == videoAttachment.fileSize && this.duration == videoAttachment.duration;
        }
        return false;
    }

    public final int getDuration() {
        return this.duration;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    @h
    public final Integer getHeight() {
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

    public final boolean getPlaying() {
        return this.playing;
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

    @h
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        int a10 = ((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() == null ? 0 : getFileName().hashCode())) * 31;
        String str = this.mimeType;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.width;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.previewRemoteUrl;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.previewLocalPath;
        return ((((hashCode4 + (str3 != null ? str3.hashCode() : 0)) * 31) + a.a(this.fileSize)) * 31) + this.duration;
    }

    public final void setPlaying(boolean z9) {
        this.playing = z9;
    }

    @g
    public String toString() {
        return "VideoAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", mimeType=" + this.mimeType + ", width=" + this.width + ", height=" + this.height + ", previewRemoteUrl=" + this.previewRemoteUrl + ", previewLocalPath=" + this.previewLocalPath + ", fileSize=" + this.fileSize + ", duration=" + this.duration + ')';
    }
}
