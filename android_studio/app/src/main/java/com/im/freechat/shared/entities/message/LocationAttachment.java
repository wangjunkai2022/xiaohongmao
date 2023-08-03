package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.message.Message;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Attachment.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0002\u0010\u000fJ\t\u0010#\u001a\u00020\u0003HÆ\u0003J\t\u0010$\u001a\u00020\u0003HÆ\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u000b\u0010'\u001a\u0004\u0018\u00010\u0006HÆ\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010)\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0002\u0010\u0013J\u0010\u0010*\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0016J\u0010\u0010+\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u0010\u0016Jv\u0010,\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rHÆ\u0001¢\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\b\u00100\u001a\u0004\u0018\u000101HÖ\u0003J\t\u00102\u001a\u00020\nHÖ\u0001J\t\u00103\u001a\u00020\u0006HÖ\u0001R\u0016\u0010\b\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0019\u0010\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0015\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\"\u0010\u0013¨\u00064"}, d2 = {"Lcom/im/freechat/shared/entities/message/LocationAttachment;", "Lcom/im/freechat/shared/entities/message/Attachment;", "mediaId", "", "messageId", "localPath", "", "remoteUrl", "fileName", "width", "", "height", "latitude", "", "longitude", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V", "getFileName", "()Ljava/lang/String;", "getHeight", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getLatitude", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getLocalPath", "getLongitude", "getMediaId", "()J", "getMessageId", "getRemoteUrl", "type", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getType", "()Lcom/im/freechat/shared/entities/message/Message$MediaType;", "getWidth", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/im/freechat/shared/entities/message/LocationAttachment;", "equals", "", "other", "", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class LocationAttachment implements Attachment {
    @h
    private final String fileName;
    @h
    private final Integer height;
    @h
    private final Float latitude;
    @h
    private final String localPath;
    @h
    private final Float longitude;
    private final long mediaId;
    private final long messageId;
    @h
    private final String remoteUrl;
    @g
    private final Message.MediaType type = Message.MediaType.LOCATION;
    @h
    private final Integer width;

    public LocationAttachment(long j4, long j10, @h String str, @h String str2, @h String str3, @h Integer num, @h Integer num2, @h Float f10, @h Float f11) {
        this.mediaId = j4;
        this.messageId = j10;
        this.localPath = str;
        this.remoteUrl = str2;
        this.fileName = str3;
        this.width = num;
        this.height = num2;
        this.latitude = f10;
        this.longitude = f11;
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
    public final Integer component6() {
        return this.width;
    }

    @h
    public final Integer component7() {
        return this.height;
    }

    @h
    public final Float component8() {
        return this.latitude;
    }

    @h
    public final Float component9() {
        return this.longitude;
    }

    @g
    public final LocationAttachment copy(long j4, long j10, @h String str, @h String str2, @h String str3, @h Integer num, @h Integer num2, @h Float f10, @h Float f11) {
        return new LocationAttachment(j4, j10, str, str2, str3, num, num2, f10, f11);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocationAttachment) {
            LocationAttachment locationAttachment = (LocationAttachment) obj;
            return getMediaId() == locationAttachment.getMediaId() && getMessageId() == locationAttachment.getMessageId() && Intrinsics.areEqual(getLocalPath(), locationAttachment.getLocalPath()) && Intrinsics.areEqual(getRemoteUrl(), locationAttachment.getRemoteUrl()) && Intrinsics.areEqual(getFileName(), locationAttachment.getFileName()) && Intrinsics.areEqual(this.width, locationAttachment.width) && Intrinsics.areEqual(this.height, locationAttachment.height) && Intrinsics.areEqual((Object) this.latitude, (Object) locationAttachment.latitude) && Intrinsics.areEqual((Object) this.longitude, (Object) locationAttachment.longitude);
        }
        return false;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getFileName() {
        return this.fileName;
    }

    @h
    public final Integer getHeight() {
        return this.height;
    }

    @h
    public final Float getLatitude() {
        return this.latitude;
    }

    @Override // com.im.freechat.shared.entities.message.Attachment
    @h
    public String getLocalPath() {
        return this.localPath;
    }

    @h
    public final Float getLongitude() {
        return this.longitude;
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

    @h
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        int a10 = ((((((((a.a(getMediaId()) * 31) + a.a(getMessageId())) * 31) + (getLocalPath() == null ? 0 : getLocalPath().hashCode())) * 31) + (getRemoteUrl() == null ? 0 : getRemoteUrl().hashCode())) * 31) + (getFileName() == null ? 0 : getFileName().hashCode())) * 31;
        Integer num = this.width;
        int hashCode = (a10 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.height;
        int hashCode2 = (hashCode + (num2 == null ? 0 : num2.hashCode())) * 31;
        Float f10 = this.latitude;
        int hashCode3 = (hashCode2 + (f10 == null ? 0 : f10.hashCode())) * 31;
        Float f11 = this.longitude;
        return hashCode3 + (f11 != null ? f11.hashCode() : 0);
    }

    @g
    public String toString() {
        return "LocationAttachment(mediaId=" + getMediaId() + ", messageId=" + getMessageId() + ", localPath=" + getLocalPath() + ", remoteUrl=" + getRemoteUrl() + ", fileName=" + getFileName() + ", width=" + this.width + ", height=" + this.height + ", latitude=" + this.latitude + ", longitude=" + this.longitude + ')';
    }
}
