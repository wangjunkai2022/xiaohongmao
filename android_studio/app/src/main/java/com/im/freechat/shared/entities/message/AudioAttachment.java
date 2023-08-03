package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import com.ksyun.media.player.d.d;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010%\u001a\u00020\u0003HÆ\u0003J\t\u0010&\u001a\u00020\u0003HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\t\u0010*\u001a\u00020\nHÆ\u0003JK\u0010+\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010,\u001a\u00020\u001b2\b\u0010-\u001a\u0004\u0018\u00010.HÖ\u0003J\t\u0010/\u001a\u00020\nHÖ\u0001J\t\u00100\u001a\u00020\u0006HÖ\u0001R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0015R\u0014\u0010!\u001a\u00020\"X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$¨\u00061"}, d2 = {"Lcom/im/freechat/shared/entities/message/AudioAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "duration", "", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "curPosition", "", "getCurPosition", "()F", "setCurPosition", "(F)V", "getDuration", "()I", "getFileName", "()Ljava/lang/String;", "getLocalPath", "getMediaId", "()J", "getMessageId", d.au, "", "getPlaying", "()Z", "setPlaying", "(Z)V", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class AudioAttachment implements Attachment {
    private float curPosition;
    private final int duration;
    @h
    private final String fileName;
    @h
    private final String localPath;
    private final long mediaId;
    private final long messageId;
    private boolean playing;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type = Message.MediaType.AUDIO;

    public AudioAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, int i4) {
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.duration = i4;
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

    public final int component6() {
        return this.duration;
    }

    @g
    public final AudioAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, int i4) {
        return new AudioAttachment(j4, j10, str, str2, str3, i4);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AudioAttachment) {
            AudioAttachment audioAttachment = (AudioAttachment) obj;
            return getMediaId() == audioAttachment.getMediaId() && getMessageId() == audioAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), audioAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), audioAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), audioAttachment.getFileName()) && this.duration == audioAttachment.duration;
        }
        return false;
    }

    public final float getCurPosition() {
        return this.curPosition;
    }

    public final int getDuration() {
        return this.duration;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
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

    public final boolean getPlaying() {
        return this.playing;
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
        return (((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() != null ? getFileName().hashCode() : 0)) * 31) + this.duration;
    }

    public final void setCurPosition(float f10) {
        this.curPosition = f10;
    }

    public final void setPlaying(boolean z9) {
        this.playing = z9;
    }

    @g
    public String toString() {
        return "AudioAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", duration=" + this.duration + ')';
    }
}
