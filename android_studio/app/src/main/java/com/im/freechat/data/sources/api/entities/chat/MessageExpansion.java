package com.im.freechat.data.sources.api.entities.chat;

import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatRequest.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b+\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BÅ\u0001\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0014J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010+\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010,\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0019J\u0010\u0010-\u001a\u0004\u0018\u00010\u000fHÆ\u0003¢\u0006\u0002\u0010\u0019J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003JÎ\u0001\u00108\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\n\b\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u00109J\u0013\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010=\u001a\u00020\u000fHÖ\u0001J\t\u0010>\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0016R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0016R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0016R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0016R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0016R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b#\u0010\u0019R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0016R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0016R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0016R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\n\n\u0002\u0010\u001a\u001a\u0004\b'\u0010\u0019¨\u0006?"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;", "", "fqMessageId", "", "fqMessageSender", "fqContent", "fqMessageType", "fqSenderNickname", "fqType", "forwardChatId", "editedMessage", "remoteUrl", j.f47980a, "fileName", "fileSize", "", "width", "height", "gifId", "previewUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getEditedMessage", "()Ljava/lang/String;", "getFileName", "getFileSize", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getForwardChatId", "getFqContent", "getFqMessageId", "getFqMessageSender", "getFqMessageType", "getFqSenderNickname", "getFqType", "getGifId", "getHeight", "getPreviewUrl", "getRemoteUrl", "getTime", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageExpansion {
    @h
    private final String editedMessage;
    @h
    private final String fileName;
    @h
    private final Integer fileSize;
    @h
    private final String forwardChatId;
    @h
    private final String fqContent;
    @h
    private final String fqMessageId;
    @h
    private final String fqMessageSender;
    @h
    private final String fqMessageType;
    @h
    private final String fqSenderNickname;
    @h
    private final String fqType;
    @h
    private final String gifId;
    @h
    private final Integer height;
    @h
    private final String previewUrl;
    @h
    private final String remoteUrl;
    @h
    private final String time;
    @h
    private final Integer width;

    public MessageExpansion(@g(name = "KEY_FQ_MESSAGE_ID") @h String str, @g(name = "KEY_FQ_SENDER") @h String str2, @g(name = "KEY_FQ_CONTENT") @h String str3, @g(name = "KEY_FQ_MESSAGE_TYPE") @h String str4, @g(name = "KEY_FQ_SENDER_NICKNAME") @h String str5, @g(name = "KEY_FQ_TYPE") @h String str6, @g(name = "KEY_FORWARD_CONVERSATION_ID") @h String str7, @g(name = "KEY_EDITED_MESSAGE") @h String str8, @g(name = "url") @h String str9, @g(name = "time") @h String str10, @g(name = "fileName") @h String str11, @g(name = "fileSize") @h Integer num, @g(name = "width") @h Integer num2, @g(name = "height") @h Integer num3, @g(name = "KEY_QUOTE_GIF_ID") @h String str12, @g(name = "KEY_PREVIEW_VIDEO_URL") @h String str13) {
        this.fqMessageId = str;
        this.fqMessageSender = str2;
        this.fqContent = str3;
        this.fqMessageType = str4;
        this.fqSenderNickname = str5;
        this.fqType = str6;
        this.forwardChatId = str7;
        this.editedMessage = str8;
        this.remoteUrl = str9;
        this.time = str10;
        this.fileName = str11;
        this.fileSize = num;
        this.width = num2;
        this.height = num3;
        this.gifId = str12;
        this.previewUrl = str13;
    }

    @h
    public final String component1() {
        return this.fqMessageId;
    }

    @h
    public final String component10() {
        return this.time;
    }

    @h
    public final String component11() {
        return this.fileName;
    }

    @h
    public final Integer component12() {
        return this.fileSize;
    }

    @h
    public final Integer component13() {
        return this.width;
    }

    @h
    public final Integer component14() {
        return this.height;
    }

    @h
    public final String component15() {
        return this.gifId;
    }

    @h
    public final String component16() {
        return this.previewUrl;
    }

    @h
    public final String component2() {
        return this.fqMessageSender;
    }

    @h
    public final String component3() {
        return this.fqContent;
    }

    @h
    public final String component4() {
        return this.fqMessageType;
    }

    @h
    public final String component5() {
        return this.fqSenderNickname;
    }

    @h
    public final String component6() {
        return this.fqType;
    }

    @h
    public final String component7() {
        return this.forwardChatId;
    }

    @h
    public final String component8() {
        return this.editedMessage;
    }

    @h
    public final String component9() {
        return this.remoteUrl;
    }

    @m8.g
    public final MessageExpansion copy(@g(name = "KEY_FQ_MESSAGE_ID") @h String str, @g(name = "KEY_FQ_SENDER") @h String str2, @g(name = "KEY_FQ_CONTENT") @h String str3, @g(name = "KEY_FQ_MESSAGE_TYPE") @h String str4, @g(name = "KEY_FQ_SENDER_NICKNAME") @h String str5, @g(name = "KEY_FQ_TYPE") @h String str6, @g(name = "KEY_FORWARD_CONVERSATION_ID") @h String str7, @g(name = "KEY_EDITED_MESSAGE") @h String str8, @g(name = "url") @h String str9, @g(name = "time") @h String str10, @g(name = "fileName") @h String str11, @g(name = "fileSize") @h Integer num, @g(name = "width") @h Integer num2, @g(name = "height") @h Integer num3, @g(name = "KEY_QUOTE_GIF_ID") @h String str12, @g(name = "KEY_PREVIEW_VIDEO_URL") @h String str13) {
        return new MessageExpansion(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, num, num2, num3, str12, str13);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageExpansion) {
            MessageExpansion messageExpansion = (MessageExpansion) obj;
            return Intrinsics.areEqual(this.fqMessageId, messageExpansion.fqMessageId) && Intrinsics.areEqual(this.fqMessageSender, messageExpansion.fqMessageSender) && Intrinsics.areEqual(this.fqContent, messageExpansion.fqContent) && Intrinsics.areEqual(this.fqMessageType, messageExpansion.fqMessageType) && Intrinsics.areEqual(this.fqSenderNickname, messageExpansion.fqSenderNickname) && Intrinsics.areEqual(this.fqType, messageExpansion.fqType) && Intrinsics.areEqual(this.forwardChatId, messageExpansion.forwardChatId) && Intrinsics.areEqual(this.editedMessage, messageExpansion.editedMessage) && Intrinsics.areEqual(this.remoteUrl, messageExpansion.remoteUrl) && Intrinsics.areEqual(this.time, messageExpansion.time) && Intrinsics.areEqual(this.fileName, messageExpansion.fileName) && Intrinsics.areEqual(this.fileSize, messageExpansion.fileSize) && Intrinsics.areEqual(this.width, messageExpansion.width) && Intrinsics.areEqual(this.height, messageExpansion.height) && Intrinsics.areEqual(this.gifId, messageExpansion.gifId) && Intrinsics.areEqual(this.previewUrl, messageExpansion.previewUrl);
        }
        return false;
    }

    @h
    public final String getEditedMessage() {
        return this.editedMessage;
    }

    @h
    public final String getFileName() {
        return this.fileName;
    }

    @h
    public final Integer getFileSize() {
        return this.fileSize;
    }

    @h
    public final String getForwardChatId() {
        return this.forwardChatId;
    }

    @h
    public final String getFqContent() {
        return this.fqContent;
    }

    @h
    public final String getFqMessageId() {
        return this.fqMessageId;
    }

    @h
    public final String getFqMessageSender() {
        return this.fqMessageSender;
    }

    @h
    public final String getFqMessageType() {
        return this.fqMessageType;
    }

    @h
    public final String getFqSenderNickname() {
        return this.fqSenderNickname;
    }

    @h
    public final String getFqType() {
        return this.fqType;
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
    public final String getPreviewUrl() {
        return this.previewUrl;
    }

    @h
    public final String getRemoteUrl() {
        return this.remoteUrl;
    }

    @h
    public final String getTime() {
        return this.time;
    }

    @h
    public final Integer getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.fqMessageId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.fqMessageSender;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.fqContent;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.fqMessageType;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.fqSenderNickname;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.fqType;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.forwardChatId;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.editedMessage;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.remoteUrl;
        int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.time;
        int hashCode10 = (hashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.fileName;
        int hashCode11 = (hashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        Integer num = this.fileSize;
        int hashCode12 = (hashCode11 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.width;
        int hashCode13 = (hashCode12 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Integer num3 = this.height;
        int hashCode14 = (hashCode13 + (num3 == null ? 0 : num3.hashCode())) * 31;
        String str12 = this.gifId;
        int hashCode15 = (hashCode14 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.previewUrl;
        return hashCode15 + (str13 != null ? str13.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageExpansion(fqMessageId=" + this.fqMessageId + ", fqMessageSender=" + this.fqMessageSender + ", fqContent=" + this.fqContent + ", fqMessageType=" + this.fqMessageType + ", fqSenderNickname=" + this.fqSenderNickname + ", fqType=" + this.fqType + ", forwardChatId=" + this.forwardChatId + ", editedMessage=" + this.editedMessage + ", remoteUrl=" + this.remoteUrl + ", time=" + this.time + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ", width=" + this.width + ", height=" + this.height + ", gifId=" + this.gifId + ", previewUrl=" + this.previewUrl + ')';
    }
}
