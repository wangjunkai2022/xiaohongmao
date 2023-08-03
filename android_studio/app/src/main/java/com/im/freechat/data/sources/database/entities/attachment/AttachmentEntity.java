package com.im.freechat.data.sources.database.entities.attachment;

import a5.a;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.PrimaryKey;
import com.im.freechat.data.sources.database.entities.message.MessageEntity;
import com.im.freechat.shared.entities.message.Message;
import com.im.freechat.ui.chat.history.o;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: AttachmentEntity.kt */
@Entity(foreignKeys = {@ForeignKey(childColumns = {"parent_message_id"}, entity = MessageEntity.class, onDelete = 5, onUpdate = 5, parentColumns = {"message_id"})}, tableName = "attachment")
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b1\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u009f\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u0017J\t\u00101\u001a\u00020\u0003HÆ\u0003J\u0010\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u001eJ\u0010\u00103\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u00104\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010#J\u0010\u00105\u001a\u0004\u0018\u00010\u0012HÆ\u0003¢\u0006\u0002\u0010#J\u000b\u00106\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\bHÆ\u0003J\t\u00109\u001a\u00020\u0003HÆ\u0003J\t\u0010:\u001a\u00020\u0006HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\bHÆ\u0003J\u0010\u0010=\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010>\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010?\u001a\u0004\u0018\u00010\bHÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\bHÆ\u0003JÈ\u0001\u0010A\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010BJ\u0013\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u000bHÖ\u0001J\t\u0010G\u001a\u00020\bHÖ\u0001R\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001cR\u001a\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b!\u0010\u0019R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b\"\u0010#R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001cR\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010$\u001a\u0004\b&\u0010#R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010(R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001cR\u0018\u0010\r\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001cR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001cR\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001cR\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b0\u0010\u0019¨\u0006H"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "", "mediaId", "", "messageId", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "localPath", "", "remoteUrl", "width", "", "height", "previewLocalPath", "previewRemoteUrl", "fileSize", "duration", "latitude", "", "longitude", "fileName", "mimeType", "gifId", "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getDuration", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getFileName", "()Ljava/lang/String;", "getFileSize", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getGifId", "getHeight", "getLatitude", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLocalPath", "getLongitude", "getMediaId", "()J", "getMessageId", "getMimeType", "getPreviewLocalPath", "getPreviewRemoteUrl", "getRemoteUrl", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class AttachmentEntity {
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
    @ColumnInfo(name = "local_path")
    private final String localPath;
    @h
    @ColumnInfo(name = "lng")
    private final Float longitude;
    @PrimaryKey
    @ColumnInfo(name = "media_id")
    private final long mediaId;
    @ColumnInfo(index = true, name = "parent_message_id")
    private final long messageId;
    @h
    @ColumnInfo(name = o.f42921d)
    private final String mimeType;
    @h
    @ColumnInfo(name = "preview_local_path")
    private final String previewLocalPath;
    @h
    @ColumnInfo(name = "preview_remote_url")
    private final String previewRemoteUrl;
    @h
    @ColumnInfo(index = true, name = "remote_url")
    private final String remoteUrl;
    @g
    @ColumnInfo(name = "media_type")
    private final Message.MediaType type;
    @h
    @ColumnInfo(name = "width")
    private final Integer width;

    public AttachmentEntity(long j4, long j10, @g Message.MediaType type, @h String str, @h String str2, @h Integer num, @h Integer num2, @h String str3, @h String str4, @h Long l10, @h Integer num3, @h Float f10, @h Float f11, @h String str5, @h String str6, @h String str7) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.mediaId = j4;
        this.messageId = j10;
        this.type = type;
        this.localPath = str;
        this.remoteUrl = str2;
        this.width = num;
        this.height = num2;
        this.previewLocalPath = str3;
        this.previewRemoteUrl = str4;
        this.fileSize = l10;
        this.duration = num3;
        this.latitude = f10;
        this.longitude = f11;
        this.fileName = str5;
        this.mimeType = str6;
        this.gifId = str7;
    }

    public final long component1() {
        return this.mediaId;
    }

    @h
    public final Long component10() {
        return this.fileSize;
    }

    @h
    public final Integer component11() {
        return this.duration;
    }

    @h
    public final Float component12() {
        return this.latitude;
    }

    @h
    public final Float component13() {
        return this.longitude;
    }

    @h
    public final String component14() {
        return this.fileName;
    }

    @h
    public final String component15() {
        return this.mimeType;
    }

    @h
    public final String component16() {
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
        return this.localPath;
    }

    @h
    public final String component5() {
        return this.remoteUrl;
    }

    @h
    public final Integer component6() {
        return this.width;
    }

    @h
    public final Integer component7() {
        return this.height;
    }

    @h
    public final String component8() {
        return this.previewLocalPath;
    }

    @h
    public final String component9() {
        return this.previewRemoteUrl;
    }

    @g
    public final AttachmentEntity copy(long j4, long j10, @g Message.MediaType type, @h String str, @h String str2, @h Integer num, @h Integer num2, @h String str3, @h String str4, @h Long l10, @h Integer num3, @h Float f10, @h Float f11, @h String str5, @h String str6, @h String str7) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new AttachmentEntity(j4, j10, type, str, str2, num, num2, str3, str4, l10, num3, f10, f11, str5, str6, str7);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AttachmentEntity) {
            AttachmentEntity attachmentEntity = (AttachmentEntity) obj;
            return this.mediaId == attachmentEntity.mediaId && this.messageId == attachmentEntity.messageId && this.type == attachmentEntity.type && Intrinsics.areEqual(this.localPath, attachmentEntity.localPath) && Intrinsics.areEqual(this.remoteUrl, attachmentEntity.remoteUrl) && Intrinsics.areEqual(this.width, attachmentEntity.width) && Intrinsics.areEqual(this.height, attachmentEntity.height) && Intrinsics.areEqual(this.previewLocalPath, attachmentEntity.previewLocalPath) && Intrinsics.areEqual(this.previewRemoteUrl, attachmentEntity.previewRemoteUrl) && Intrinsics.areEqual(this.fileSize, attachmentEntity.fileSize) && Intrinsics.areEqual(this.duration, attachmentEntity.duration) && Intrinsics.areEqual((Object) this.latitude, (Object) attachmentEntity.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) attachmentEntity.longitude) && Intrinsics.areEqual(this.fileName, attachmentEntity.fileName) && Intrinsics.areEqual(this.mimeType, attachmentEntity.mimeType) && Intrinsics.areEqual(this.gifId, attachmentEntity.gifId);
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
    public final String getLocalPath() {
        return this.localPath;
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
    public final String getPreviewLocalPath() {
        return this.previewLocalPath;
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
        String str = this.localPath;
        int hashCode = (a10 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.remoteUrl;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num = this.width;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str3 = this.previewLocalPath;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.previewRemoteUrl;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Long l10 = this.fileSize;
        int hashCode7 = (hashCode6 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num3 = this.duration;
        int hashCode8 = (hashCode7 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Float f10 = this.latitude;
        int hashCode9 = (hashCode8 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.longitude;
        int hashCode10 = (hashCode9 + (f11 == null ? 0 : f11.hashCode())) * 31;
        String str5 = this.fileName;
        int hashCode11 = (hashCode10 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.mimeType;
        int hashCode12 = (hashCode11 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.gifId;
        return hashCode12 + (str7 != null ? str7.hashCode() : 0);
    }

    @g
    public String toString() {
        return "AttachmentEntity(mediaId=" + this.mediaId + ", messageId=" + this.messageId + ", type=" + this.type + ", localPath=" + this.localPath + ", remoteUrl=" + this.remoteUrl + ", width=" + this.width + ", height=" + this.height + ", previewLocalPath=" + this.previewLocalPath + ", previewRemoteUrl=" + this.previewRemoteUrl + ", fileSize=" + this.fileSize + ", duration=" + this.duration + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ", fileName=" + this.fileName + ", mimeType=" + this.mimeType + ", gifId=" + this.gifId + ')';
    }
}
