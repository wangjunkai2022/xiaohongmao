package com.im.freechat.data.sources.api.entities.chat;

import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import com.squareup.moshi.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: ChatResponse.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b?\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bõ\u0001\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0017J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00101\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00102\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00103\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00104\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00105\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00106\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jù\u0001\u0010A\u001a\u00020\u00002\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0016\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010B\u001a\u00020C2\b\u0010D\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010E\u001a\u00020FHÖ\u0001J\t\u0010G\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0019R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0019R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0019R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0019R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0019R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0019R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u0019R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0019R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u0019R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u0019R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u0019¨\u0006H"}, d2 = {"Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;", "", "attachedMessageId", "", "newContent", "fqMessageId", "fqMessageSender", "fqContent", "fqSenderNickname", "fqMessageType", "fqType", "forwardChatId", "editedMessage", "remoteUrl", j.f47980a, "fileName", "fileSize", "width", "height", "gifId", "previewUrl", "mediaGroup", "mediaGroupId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAttachedMessageId", "()Ljava/lang/String;", "getEditedMessage", "getFileName", "getFileSize", "getForwardChatId", "getFqContent", "getFqMessageId", "getFqMessageSender", "getFqMessageType", "getFqSenderNickname", "getFqType", "getGifId", "getHeight", "getMediaGroup", "getMediaGroupId", "getNewContent", "getPreviewUrl", "getRemoteUrl", "getTime", "getWidth", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class MessageExpansionInfo {
    @h
    private final String attachedMessageId;
    @h
    private final String editedMessage;
    @h
    private final String fileName;
    @h
    private final String fileSize;
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
    private final String height;
    @h
    private final String mediaGroup;
    @h
    private final String mediaGroupId;
    @h
    private final String newContent;
    @h
    private final String previewUrl;
    @h
    private final String remoteUrl;
    @h
    private final String time;
    @h
    private final String width;

    public MessageExpansionInfo(@g(name = "msg_id") @h String str, @g(name = "content") @h String str2, @g(name = "KEY_FQ_MESSAGE_ID") @h String str3, @g(name = "KEY_FQ_SENDER") @h String str4, @g(name = "KEY_FQ_CONTENT") @h String str5, @g(name = "KEY_FQ_SENDER_NICKNAME") @h String str6, @g(name = "KEY_FQ_MESSAGE_TYPE") @h String str7, @g(name = "KEY_FQ_TYPE") @h String str8, @g(name = "KEY_FORWARD_CONVERSATION_ID") @h String str9, @g(name = "KEY_EDITED_MESSAGE") @h String str10, @g(name = "url") @h String str11, @g(name = "time") @h String str12, @g(name = "fileName") @h String str13, @g(name = "fileSize") @h String str14, @g(name = "width") @h String str15, @g(name = "height") @h String str16, @g(name = "KEY_QUOTE_GIF_ID") @h String str17, @g(name = "KEY_PREVIEW_VIDEO_URL") @h String str18, @g(name = "media_group") @h String str19, @g(name = "media_group_id") @h String str20) {
        this.attachedMessageId = str;
        this.newContent = str2;
        this.fqMessageId = str3;
        this.fqMessageSender = str4;
        this.fqContent = str5;
        this.fqSenderNickname = str6;
        this.fqMessageType = str7;
        this.fqType = str8;
        this.forwardChatId = str9;
        this.editedMessage = str10;
        this.remoteUrl = str11;
        this.time = str12;
        this.fileName = str13;
        this.fileSize = str14;
        this.width = str15;
        this.height = str16;
        this.gifId = str17;
        this.previewUrl = str18;
        this.mediaGroup = str19;
        this.mediaGroupId = str20;
    }

    @h
    public final String component1() {
        return this.attachedMessageId;
    }

    @h
    public final String component10() {
        return this.editedMessage;
    }

    @h
    public final String component11() {
        return this.remoteUrl;
    }

    @h
    public final String component12() {
        return this.time;
    }

    @h
    public final String component13() {
        return this.fileName;
    }

    @h
    public final String component14() {
        return this.fileSize;
    }

    @h
    public final String component15() {
        return this.width;
    }

    @h
    public final String component16() {
        return this.height;
    }

    @h
    public final String component17() {
        return this.gifId;
    }

    @h
    public final String component18() {
        return this.previewUrl;
    }

    @h
    public final String component19() {
        return this.mediaGroup;
    }

    @h
    public final String component2() {
        return this.newContent;
    }

    @h
    public final String component20() {
        return this.mediaGroupId;
    }

    @h
    public final String component3() {
        return this.fqMessageId;
    }

    @h
    public final String component4() {
        return this.fqMessageSender;
    }

    @h
    public final String component5() {
        return this.fqContent;
    }

    @h
    public final String component6() {
        return this.fqSenderNickname;
    }

    @h
    public final String component7() {
        return this.fqMessageType;
    }

    @h
    public final String component8() {
        return this.fqType;
    }

    @h
    public final String component9() {
        return this.forwardChatId;
    }

    @m8.g
    public final MessageExpansionInfo copy(@g(name = "msg_id") @h String str, @g(name = "content") @h String str2, @g(name = "KEY_FQ_MESSAGE_ID") @h String str3, @g(name = "KEY_FQ_SENDER") @h String str4, @g(name = "KEY_FQ_CONTENT") @h String str5, @g(name = "KEY_FQ_SENDER_NICKNAME") @h String str6, @g(name = "KEY_FQ_MESSAGE_TYPE") @h String str7, @g(name = "KEY_FQ_TYPE") @h String str8, @g(name = "KEY_FORWARD_CONVERSATION_ID") @h String str9, @g(name = "KEY_EDITED_MESSAGE") @h String str10, @g(name = "url") @h String str11, @g(name = "time") @h String str12, @g(name = "fileName") @h String str13, @g(name = "fileSize") @h String str14, @g(name = "width") @h String str15, @g(name = "height") @h String str16, @g(name = "KEY_QUOTE_GIF_ID") @h String str17, @g(name = "KEY_PREVIEW_VIDEO_URL") @h String str18, @g(name = "media_group") @h String str19, @g(name = "media_group_id") @h String str20) {
        return new MessageExpansionInfo(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, str20);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageExpansionInfo) {
            MessageExpansionInfo messageExpansionInfo = (MessageExpansionInfo) obj;
            return Intrinsics.areEqual(this.attachedMessageId, messageExpansionInfo.attachedMessageId) && Intrinsics.areEqual(this.newContent, messageExpansionInfo.newContent) && Intrinsics.areEqual(this.fqMessageId, messageExpansionInfo.fqMessageId) && Intrinsics.areEqual(this.fqMessageSender, messageExpansionInfo.fqMessageSender) && Intrinsics.areEqual(this.fqContent, messageExpansionInfo.fqContent) && Intrinsics.areEqual(this.fqSenderNickname, messageExpansionInfo.fqSenderNickname) && Intrinsics.areEqual(this.fqMessageType, messageExpansionInfo.fqMessageType) && Intrinsics.areEqual(this.fqType, messageExpansionInfo.fqType) && Intrinsics.areEqual(this.forwardChatId, messageExpansionInfo.forwardChatId) && Intrinsics.areEqual(this.editedMessage, messageExpansionInfo.editedMessage) && Intrinsics.areEqual(this.remoteUrl, messageExpansionInfo.remoteUrl) && Intrinsics.areEqual(this.time, messageExpansionInfo.time) && Intrinsics.areEqual(this.fileName, messageExpansionInfo.fileName) && Intrinsics.areEqual(this.fileSize, messageExpansionInfo.fileSize) && Intrinsics.areEqual(this.width, messageExpansionInfo.width) && Intrinsics.areEqual(this.height, messageExpansionInfo.height) && Intrinsics.areEqual(this.gifId, messageExpansionInfo.gifId) && Intrinsics.areEqual(this.previewUrl, messageExpansionInfo.previewUrl) && Intrinsics.areEqual(this.mediaGroup, messageExpansionInfo.mediaGroup) && Intrinsics.areEqual(this.mediaGroupId, messageExpansionInfo.mediaGroupId);
        }
        return false;
    }

    @h
    public final String getAttachedMessageId() {
        return this.attachedMessageId;
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
    public final String getFileSize() {
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
    public final String getHeight() {
        return this.height;
    }

    @h
    public final String getMediaGroup() {
        return this.mediaGroup;
    }

    @h
    public final String getMediaGroupId() {
        return this.mediaGroupId;
    }

    @h
    public final String getNewContent() {
        return this.newContent;
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
    public final String getWidth() {
        return this.width;
    }

    public int hashCode() {
        String str = this.attachedMessageId;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.newContent;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.fqMessageId;
        int hashCode3 = (hashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.fqMessageSender;
        int hashCode4 = (hashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.fqContent;
        int hashCode5 = (hashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.fqSenderNickname;
        int hashCode6 = (hashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.fqMessageType;
        int hashCode7 = (hashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.fqType;
        int hashCode8 = (hashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.forwardChatId;
        int hashCode9 = (hashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.editedMessage;
        int hashCode10 = (hashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.remoteUrl;
        int hashCode11 = (hashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.time;
        int hashCode12 = (hashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.fileName;
        int hashCode13 = (hashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.fileSize;
        int hashCode14 = (hashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.width;
        int hashCode15 = (hashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.height;
        int hashCode16 = (hashCode15 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.gifId;
        int hashCode17 = (hashCode16 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.previewUrl;
        int hashCode18 = (hashCode17 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.mediaGroup;
        int hashCode19 = (hashCode18 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.mediaGroupId;
        return hashCode19 + (str20 != null ? str20.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "MessageExpansionInfo(attachedMessageId=" + this.attachedMessageId + ", newContent=" + this.newContent + ", fqMessageId=" + this.fqMessageId + ", fqMessageSender=" + this.fqMessageSender + ", fqContent=" + this.fqContent + ", fqSenderNickname=" + this.fqSenderNickname + ", fqMessageType=" + this.fqMessageType + ", fqType=" + this.fqType + ", forwardChatId=" + this.forwardChatId + ", editedMessage=" + this.editedMessage + ", remoteUrl=" + this.remoteUrl + ", time=" + this.time + ", fileName=" + this.fileName + ", fileSize=" + this.fileSize + ", width=" + this.width + ", height=" + this.height + ", gifId=" + this.gifId + ", previewUrl=" + this.previewUrl + ", mediaGroup=" + this.mediaGroup + ", mediaGroupId=" + this.mediaGroupId + ')';
    }
}
