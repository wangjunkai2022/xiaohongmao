package com.im.freechat.data.openapigen.models;

import a5.a;
import com.squareup.moshi.g;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: Message.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b@\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001Bù\u0001\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0003\u0010 \u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010!J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0010HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0012HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0014HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0016HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0018HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u001aHÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u001cHÆ\u0003J\u0010\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\t\u0010P\u001a\u00020\u0005HÆ\u0003J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010/J\u0010\u0010R\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\t\u0010S\u001a\u00020\u0005HÆ\u0003J\t\u0010T\u001a\u00020\u0003HÆ\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u0010\u0010V\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010)J\u000b\u0010W\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u0082\u0002\u0010Z\u001a\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00032\b\b\u0003\u0010\u0004\u001a\u00020\u00052\b\b\u0003\u0010\u0006\u001a\u00020\u00052\b\b\u0003\u0010\u0007\u001a\u00020\u00032\n\b\u0003\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0003\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0003\u0010\r\u001a\u0004\u0018\u00010\u000b2\n\b\u0003\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\b\u0003\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0003\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0003\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0003\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0003\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0003\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0003\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0003\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u001f\u001a\u0004\u0018\u00010\u00052\n\b\u0003\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010[J\u0013\u0010\\\u001a\u00020]2\b\u0010^\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010_\u001a\u00020\u0005HÖ\u0001J\t\u0010`\u001a\u00020\u000bHÖ\u0001R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R\u0015\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010*\u001a\u0004\b(\u0010)R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b+\u0010,R\u0015\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010*\u001a\u0004\b-\u0010)R\u0015\u0010\u001f\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u00100\u001a\u0004\b.\u0010/R\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010*\u001a\u0004\b1\u0010)R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u001c¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0015\u0010\u001d\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010*\u001a\u0004\b4\u0010)R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u001a¢\u0006\b\n\u0000\u001a\u0004\b9\u0010:R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0015\u0010 \u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010*\u001a\u0004\b=\u0010)R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b>\u0010'R\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b?\u00106R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\b@\u0010%R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\bA\u0010%R\u0013\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\b\n\u0000\u001a\u0004\bB\u0010%R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\bC\u0010D¨\u0006a"}, d2 = {"Lcom/im/freechat/data/openapigen/models/Message;", "", "id", "", b.f84734a, "", "senderId", "sentAt", "editedAt", "deletedAt", "serviceText", "", "text", "sticker", "caption", "photo", "Lcom/im/freechat/data/openapigen/models/Photo;", "video", "Lcom/im/freechat/data/openapigen/models/Video;", "document", "Lcom/im/freechat/data/openapigen/models/Document;", "media", "Lcom/im/freechat/data/openapigen/models/MediaGroup;", "animation", "Lcom/im/freechat/data/openapigen/models/Animation;", "messageEntities", "Lcom/im/freechat/data/openapigen/models/MessageEntities;", "forwardSender", "Lcom/im/freechat/data/openapigen/models/User;", "forwardSentAt", "forwardMessageId", "forwardChatId", "replyToMessageId", "(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)V", "getAnimation", "()Lcom/im/freechat/data/openapigen/models/Animation;", "getCaption", "()Ljava/lang/String;", "getChatId", "()I", "getDeletedAt", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getDocument", "()Lcom/im/freechat/data/openapigen/models/Document;", "getEditedAt", "getForwardChatId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getForwardMessageId", "getForwardSender", "()Lcom/im/freechat/data/openapigen/models/User;", "getForwardSentAt", "getId", "()J", "getMedia", "()Lcom/im/freechat/data/openapigen/models/MediaGroup;", "getMessageEntities", "()Lcom/im/freechat/data/openapigen/models/MessageEntities;", "getPhoto", "()Lcom/im/freechat/data/openapigen/models/Photo;", "getReplyToMessageId", "getSenderId", "getSentAt", "getServiceText", "getSticker", "getText", "getVideo", "()Lcom/im/freechat/data/openapigen/models/Video;", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JIIJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/Photo;Lcom/im/freechat/data/openapigen/models/Video;Lcom/im/freechat/data/openapigen/models/Document;Lcom/im/freechat/data/openapigen/models/MediaGroup;Lcom/im/freechat/data/openapigen/models/Animation;Lcom/im/freechat/data/openapigen/models/MessageEntities;Lcom/im/freechat/data/openapigen/models/User;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/Message;", "equals", "", "other", "hashCode", "toString", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class Message {
    @h
    private final Animation animation;
    @h
    private final String caption;
    private final int chatId;
    @h
    private final Long deletedAt;
    @h
    private final Document document;
    @h
    private final Long editedAt;
    @h
    private final Integer forwardChatId;
    @h
    private final Long forwardMessageId;
    @h
    private final User forwardSender;
    @h
    private final Long forwardSentAt;
    private final long id;
    @h
    private final MediaGroup media;
    @h
    private final MessageEntities messageEntities;
    @h
    private final Photo photo;
    @h
    private final Long replyToMessageId;
    private final int senderId;
    private final long sentAt;
    @h
    private final String serviceText;
    @h
    private final String sticker;
    @h
    private final String text;
    @h
    private final Video video;

    public Message(@g(name = "id") long j4, @g(name = "chat_id") int i4, @g(name = "sender_id") int i10, @g(name = "sent_at") long j10, @g(name = "edited_at") @h Long l10, @g(name = "deleted_at") @h Long l11, @g(name = "service_text") @h String str, @g(name = "text") @h String str2, @g(name = "sticker") @h String str3, @g(name = "caption") @h String str4, @g(name = "photo") @h Photo photo, @g(name = "video") @h Video video, @g(name = "document") @h Document document, @g(name = "media") @h MediaGroup mediaGroup, @g(name = "animation") @h Animation animation, @g(name = "message_entities") @h MessageEntities messageEntities, @g(name = "forward_sender") @h User user, @g(name = "forward_sent_at") @h Long l12, @g(name = "forward_message_id") @h Long l13, @g(name = "forward_chat_id") @h Integer num, @g(name = "reply_to_message_id") @h Long l14) {
        this.id = j4;
        this.chatId = i4;
        this.senderId = i10;
        this.sentAt = j10;
        this.editedAt = l10;
        this.deletedAt = l11;
        this.serviceText = str;
        this.text = str2;
        this.sticker = str3;
        this.caption = str4;
        this.photo = photo;
        this.video = video;
        this.document = document;
        this.media = mediaGroup;
        this.animation = animation;
        this.messageEntities = messageEntities;
        this.forwardSender = user;
        this.forwardSentAt = l12;
        this.forwardMessageId = l13;
        this.forwardChatId = num;
        this.replyToMessageId = l14;
    }

    public final long component1() {
        return this.id;
    }

    @h
    public final String component10() {
        return this.caption;
    }

    @h
    public final Photo component11() {
        return this.photo;
    }

    @h
    public final Video component12() {
        return this.video;
    }

    @h
    public final Document component13() {
        return this.document;
    }

    @h
    public final MediaGroup component14() {
        return this.media;
    }

    @h
    public final Animation component15() {
        return this.animation;
    }

    @h
    public final MessageEntities component16() {
        return this.messageEntities;
    }

    @h
    public final User component17() {
        return this.forwardSender;
    }

    @h
    public final Long component18() {
        return this.forwardSentAt;
    }

    @h
    public final Long component19() {
        return this.forwardMessageId;
    }

    public final int component2() {
        return this.chatId;
    }

    @h
    public final Integer component20() {
        return this.forwardChatId;
    }

    @h
    public final Long component21() {
        return this.replyToMessageId;
    }

    public final int component3() {
        return this.senderId;
    }

    public final long component4() {
        return this.sentAt;
    }

    @h
    public final Long component5() {
        return this.editedAt;
    }

    @h
    public final Long component6() {
        return this.deletedAt;
    }

    @h
    public final String component7() {
        return this.serviceText;
    }

    @h
    public final String component8() {
        return this.text;
    }

    @h
    public final String component9() {
        return this.sticker;
    }

    @m8.g
    public final Message copy(@g(name = "id") long j4, @g(name = "chat_id") int i4, @g(name = "sender_id") int i10, @g(name = "sent_at") long j10, @g(name = "edited_at") @h Long l10, @g(name = "deleted_at") @h Long l11, @g(name = "service_text") @h String str, @g(name = "text") @h String str2, @g(name = "sticker") @h String str3, @g(name = "caption") @h String str4, @g(name = "photo") @h Photo photo, @g(name = "video") @h Video video, @g(name = "document") @h Document document, @g(name = "media") @h MediaGroup mediaGroup, @g(name = "animation") @h Animation animation, @g(name = "message_entities") @h MessageEntities messageEntities, @g(name = "forward_sender") @h User user, @g(name = "forward_sent_at") @h Long l12, @g(name = "forward_message_id") @h Long l13, @g(name = "forward_chat_id") @h Integer num, @g(name = "reply_to_message_id") @h Long l14) {
        return new Message(j4, i4, i10, j10, l10, l11, str, str2, str3, str4, photo, video, document, mediaGroup, animation, messageEntities, user, l12, l13, num, l14);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Message) {
            Message message = (Message) obj;
            return this.id == message.id && this.chatId == message.chatId && this.senderId == message.senderId && this.sentAt == message.sentAt && Intrinsics.areEqual(this.editedAt, message.editedAt) && Intrinsics.areEqual(this.deletedAt, message.deletedAt) && Intrinsics.areEqual(this.serviceText, message.serviceText) && Intrinsics.areEqual(this.text, message.text) && Intrinsics.areEqual(this.sticker, message.sticker) && Intrinsics.areEqual(this.caption, message.caption) && Intrinsics.areEqual(this.photo, message.photo) && Intrinsics.areEqual(this.video, message.video) && Intrinsics.areEqual(this.document, message.document) && Intrinsics.areEqual(this.media, message.media) && Intrinsics.areEqual(this.animation, message.animation) && Intrinsics.areEqual(this.messageEntities, message.messageEntities) && Intrinsics.areEqual(this.forwardSender, message.forwardSender) && Intrinsics.areEqual(this.forwardSentAt, message.forwardSentAt) && Intrinsics.areEqual(this.forwardMessageId, message.forwardMessageId) && Intrinsics.areEqual(this.forwardChatId, message.forwardChatId) && Intrinsics.areEqual(this.replyToMessageId, message.replyToMessageId);
        }
        return false;
    }

    @h
    public final Animation getAnimation() {
        return this.animation;
    }

    @h
    public final String getCaption() {
        return this.caption;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @h
    public final Long getDeletedAt() {
        return this.deletedAt;
    }

    @h
    public final Document getDocument() {
        return this.document;
    }

    @h
    public final Long getEditedAt() {
        return this.editedAt;
    }

    @h
    public final Integer getForwardChatId() {
        return this.forwardChatId;
    }

    @h
    public final Long getForwardMessageId() {
        return this.forwardMessageId;
    }

    @h
    public final User getForwardSender() {
        return this.forwardSender;
    }

    @h
    public final Long getForwardSentAt() {
        return this.forwardSentAt;
    }

    public final long getId() {
        return this.id;
    }

    @h
    public final MediaGroup getMedia() {
        return this.media;
    }

    @h
    public final MessageEntities getMessageEntities() {
        return this.messageEntities;
    }

    @h
    public final Photo getPhoto() {
        return this.photo;
    }

    @h
    public final Long getReplyToMessageId() {
        return this.replyToMessageId;
    }

    public final int getSenderId() {
        return this.senderId;
    }

    public final long getSentAt() {
        return this.sentAt;
    }

    @h
    public final String getServiceText() {
        return this.serviceText;
    }

    @h
    public final String getSticker() {
        return this.sticker;
    }

    @h
    public final String getText() {
        return this.text;
    }

    @h
    public final Video getVideo() {
        return this.video;
    }

    public int hashCode() {
        int a10 = ((((((a.a(this.id) * 31) + this.chatId) * 31) + this.senderId) * 31) + a.a(this.sentAt)) * 31;
        Long l10 = this.editedAt;
        int hashCode = (a10 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Long l11 = this.deletedAt;
        int hashCode2 = (hashCode + (l11 == null ? 0 : l11.hashCode())) * 31;
        String str = this.serviceText;
        int hashCode3 = (hashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.text;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.sticker;
        int hashCode5 = (hashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.caption;
        int hashCode6 = (hashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Photo photo = this.photo;
        int hashCode7 = (hashCode6 + (photo == null ? 0 : photo.hashCode())) * 31;
        Video video = this.video;
        int hashCode8 = (hashCode7 + (video == null ? 0 : video.hashCode())) * 31;
        Document document = this.document;
        int hashCode9 = (hashCode8 + (document == null ? 0 : document.hashCode())) * 31;
        MediaGroup mediaGroup = this.media;
        int hashCode10 = (hashCode9 + (mediaGroup == null ? 0 : mediaGroup.hashCode())) * 31;
        Animation animation = this.animation;
        int hashCode11 = (hashCode10 + (animation == null ? 0 : animation.hashCode())) * 31;
        MessageEntities messageEntities = this.messageEntities;
        int hashCode12 = (hashCode11 + (messageEntities == null ? 0 : messageEntities.hashCode())) * 31;
        User user = this.forwardSender;
        int hashCode13 = (hashCode12 + (user == null ? 0 : user.hashCode())) * 31;
        Long l12 = this.forwardSentAt;
        int hashCode14 = (hashCode13 + (l12 == null ? 0 : l12.hashCode())) * 31;
        Long l13 = this.forwardMessageId;
        int hashCode15 = (hashCode14 + (l13 == null ? 0 : l13.hashCode())) * 31;
        Integer num = this.forwardChatId;
        int hashCode16 = (hashCode15 + (num == null ? 0 : num.hashCode())) * 31;
        Long l14 = this.replyToMessageId;
        return hashCode16 + (l14 != null ? l14.hashCode() : 0);
    }

    @m8.g
    public String toString() {
        return "Message(id=" + this.id + ", chatId=" + this.chatId + ", senderId=" + this.senderId + ", sentAt=" + this.sentAt + ", editedAt=" + this.editedAt + ", deletedAt=" + this.deletedAt + ", serviceText=" + this.serviceText + ", text=" + this.text + ", sticker=" + this.sticker + ", caption=" + this.caption + ", photo=" + this.photo + ", video=" + this.video + ", document=" + this.document + ", media=" + this.media + ", animation=" + this.animation + ", messageEntities=" + this.messageEntities + ", forwardSender=" + this.forwardSender + ", forwardSentAt=" + this.forwardSentAt + ", forwardMessageId=" + this.forwardMessageId + ", forwardChatId=" + this.forwardChatId + ", replyToMessageId=" + this.replyToMessageId + ')';
    }

    public /* synthetic */ Message(long j4, int i4, int i10, long j10, Long l10, Long l11, String str, String str2, String str3, String str4, Photo photo, Video video, Document document, MediaGroup mediaGroup, Animation animation, MessageEntities messageEntities, User user, Long l12, Long l13, Integer num, Long l14, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(j4, i4, i10, j10, (i11 & 16) != 0 ? null : l10, (i11 & 32) != 0 ? null : l11, (i11 & 64) != 0 ? null : str, (i11 & 128) != 0 ? null : str2, (i11 & 256) != 0 ? null : str3, (i11 & 512) != 0 ? null : str4, (i11 & 1024) != 0 ? null : photo, (i11 & 2048) != 0 ? null : video, (i11 & 4096) != 0 ? null : document, (i11 & 8192) != 0 ? null : mediaGroup, (i11 & 16384) != 0 ? null : animation, (32768 & i11) != 0 ? null : messageEntities, (65536 & i11) != 0 ? null : user, (131072 & i11) != 0 ? null : l12, (262144 & i11) != 0 ? null : l13, (524288 & i11) != 0 ? null : num, (i11 & 1048576) != 0 ? null : l14);
    }
}
