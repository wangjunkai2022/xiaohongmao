package com.im.freechat.data.sources.database.entities.attachment;

import a5.a;
import androidx.room.ColumnInfo;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.chat.history.o;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AttachmentEntity.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b-\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0099\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0015J\t\u0010-\u001a\u00020\u0003HÆ\u0003J\u0010\u0010.\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010!J\u0010\u0010/\u001a\u0004\u0018\u00010\u0010HÆ\u0003¢\u0006\u0002\u0010!J\u000b\u00100\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0006HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u00106\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J\u0010\u00107\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J\u000b\u00108\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001cJ\u0010\u0010:\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0017J°\u0001\u0010;\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010<J\u0013\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010@\u001a\u00020\nHÖ\u0001J\t\u0010A\u001a\u00020\bHÖ\u0001R\u001a\u0010\u000e\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0012\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001d\u001a\u0004\b\u001b\u0010\u001cR\u0018\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001aR\u001a\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b\u001f\u0010\u0017R\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b \u0010!R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\"\u001a\u0004\b#\u0010!R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010%R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001aR\u0018\u0010\f\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001aR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001aR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u001a\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0018\u001a\u0004\b,\u0010\u0017¨\u0006B"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;", "", "mediaId", "", "messageId", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "remoteUrl", "", "width", "", "height", "previewRemoteUrl", "fileSize", "duration", "latitude", "", "longitude", "fileName", "mimeType", "gifId", "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getGifId", "getHeight", "getLatitude", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLongitude", "getMediaId", "()J", "getMessageId", "getMimeType", "getPreviewRemoteUrl", "getRemoteUrl", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class HttpAttachmentEntity {
    @h
    @ColumnInfo(name = "duration")
    private final Integer duration;
    @h
    @ColumnInfo(name = "filename")
    private final String fileName;
    @h
    @ColumnInfo(name = "file_size")
    private final Long fileSize;
    @h
    @ColumnInfo(name = "gif_id")
    private final String gifId;
    @h
    @ColumnInfo(name = "height")
    private final Integer height;
    @h
    @ColumnInfo(name = "lat")
    private final Float latitude;
    @h
    @ColumnInfo(name = "lng")
    private final Float longitude;
    @ColumnInfo(name = "media_id")
    private final long mediaId;
    @ColumnInfo(name = "parent_message_id")
    private final long messageId;
    @h
    @ColumnInfo(name = o.f42921d)
    private final String mimeType;
    @h
    @ColumnInfo(name = "preview_remote_url")
    private final String previewRemoteUrl;
    @h
    @ColumnInfo(name = "remote_url")
    private final String remoteUrl;
    @g
    @ColumnInfo(name = "media_type")
    private final Message.MediaType type;
    @h
    @ColumnInfo(name = "width")
    private final Integer width;

    public HttpAttachmentEntity(long j4, long j10, @g Message.MediaType type, @h String str, @h Integer num, @h Integer num2, @h String str2, @h Long l10, @h Integer num3, @h Float f10, @h Float f11, @h String str3, @h String str4, @h String str5) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.mediaId = j4;
        this.messageId = j10;
        this.type = type;
        this.remoteUrl = str;
        this.width = num;
        this.height = num2;
        this.previewRemoteUrl = str2;
        this.fileSize = l10;
        this.duration = num3;
        this.latitude = f10;
        this.longitude = f11;
        this.fileName = str3;
        this.mimeType = str4;
        this.gifId = str5;
    }

    public final long component1() {
        return this.mediaId;
    }

    @h
    public final Float component10() {
        return this.latitude;
    }

    @h
    public final Float component11() {
        return this.longitude;
    }

    @h
    public final String component12() {
        return this.fileName;
    }

    @h
    public final String component13() {
        return this.mimeType;
    }

    @h
    public final String component14() {
        return this.gifId;
    }

    public final long component2() {
        return this.messageId;
    }

    @g
    public final Message.MediaType component3() {
        return this.type;
    }

    @h
    public final String component4() {
        return this.remoteUrl;
    }

    @h
    public final Integer component5() {
        return this.width;
    }

    @h
    public final Integer component6() {
        return this.height;
    }

    @h
    public final String component7() {
        return this.previewRemoteUrl;
    }

    @h
    public final Long component8() {
        return this.fileSize;
    }

    @h
    public final Integer component9() {
        return this.duration;
    }

    @g
    public final HttpAttachmentEntity copy(long j4, long j10, @g Message.MediaType type, @h String str, @h Integer num, @h Integer num2, @h String str2, @h Long l10, @h Integer num3, @h Float f10, @h Float f11, @h String str3, @h String str4, @h String str5) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new HttpAttachmentEntity(j4, j10, type, str, num, num2, str2, l10, num3, f10, f11, str3, str4, str5);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HttpAttachmentEntity) {
            HttpAttachmentEntity httpAttachmentEntity = (HttpAttachmentEntity) obj;
            return this.mediaId == httpAttachmentEntity.mediaId && this.messageId == httpAttachmentEntity.messageId && this.type == httpAttachmentEntity.type && Intrinsics.areEqual(this.remoteUrl, httpAttachmentEntity.remoteUrl) && Intrinsics.areEqual(this.width, httpAttachmentEntity.width) && Intrinsics.areEqual(this.height, httpAttachmentEntity.height) && Intrinsics.areEqual(this.previewRemoteUrl, httpAttachmentEntity.previewRemoteUrl) && Intrinsics.areEqual(this.fileSize, httpAttachmentEntity.fileSize) && Intrinsics.areEqual(this.duration, httpAttachmentEntity.duration) && Intrinsics.areEqual((Object) this.latitude, (Object) httpAttachmentEntity.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) httpAttachmentEntity.longitude) && Intrinsics.areEqual(this.fileName, httpAttachmentEntity.fileName) && Intrinsics.areEqual(this.mimeType, httpAttachmentEntity.mimeType) && Intrinsics.areEqual(this.gifId, httpAttachmentEntity.gifId);
        }
        return false;
    }

    @h
    public final Integer getDuration() {
        return this.duration;
    }

    @h
    public final String getFileName() {
        return this.fileName;
    }

    @h
    public final Long getFileSize() {
        return this.fileSize;
    }

    @h
    public final String getGifId() {
        return this.gifId;
    }

    @h
    public final Integer getHeight() {
        return this.height;
    }

    @h
    public final Float getLatitude() {
        return this.latitude;
    }

    @h
    public final Float getLongitude() {
        return this.longitude;
    }

    public final long getMediaId() {
        return this.mediaId;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    @h
    public final String getMimeType() {
        return this.mimeType;
    }

    @h
    public final String getPreviewRemoteUrl() {
        return this.previewRemoteUrl;
    }

    @h
    public final String getRemoteUrl() {
        return this.remoteUrl;
    }

    @g
    public final Message.MediaType getType() {
        return this.type;
    }

    @h
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        int a10 = ((((a.a(this.mediaId) * 31) + a.a(this.messageId)) * 31) + this.type.hashCode()) * 31;
        String str = this.remoteUrl;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.width;
        int hashCode2 = (hashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode3 = (hashCode2 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str2 = this.previewRemoteUrl;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Long l10 = this.fileSize;
        int hashCode5 = (hashCode4 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num3 = this.duration;
        int hashCode6 = (hashCode5 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Float f10 = this.latitude;
        int hashCode7 = (hashCode6 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.longitude;
        int hashCode8 = (hashCode7 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str3 = this.fileName;
        int hashCode9 = (hashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.mimeType;
        int hashCode10 = (hashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.gifId;
        return hashCode10 + (str5 != null ? str5.hashCode() : 0);
    }

    @g
    public String toString() {
        return "HttpAttachmentEntity(mediaId=" + this.mediaId + ", messageId=" + this.messageId + ", type=" + this.type + ", remoteUrl=" + this.remoteUrl + ", width=" + this.width + ", height=" + this.height + ", previewRemoteUrl=" + this.previewRemoteUrl + ", fileSize=" + this.fileSize + ", duration=" + this.duration + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", fileName=" + this.fileName + ", mimeType=" + this.mimeType + ", gifId=" + this.gifId + ')';
    }

    public /* synthetic */ HttpAttachmentEntity(long j4, long j10, Message.MediaType mediaType, String str, Integer num, Integer num2, String str2, Long l10, Integer num3, Float f10, Float f11, String str3, String str4, String str5, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, j10, mediaType, str, (i4 & 16) != 0 ? null : num, (i4 & 32) != 0 ? null : num2, (i4 & 64) != 0 ? null : str2, l10, (i4 & 256) != 0 ? null : num3, (i4 & 512) != 0 ? null : f10, (i4 & 1024) != 0 ? null : f11, str3, str4, (i4 & 8192) != 0 ? null : str5);
    }
}
