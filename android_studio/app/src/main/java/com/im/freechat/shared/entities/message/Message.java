package com.im.freechat.shared.entities.message;

import a5.a;
import com.im.freechat.shared.entities.contact.Sender;
import java.util.List;
import java.util.Map;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Message.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b9\b\u0086\b\u0018\u00002\u00020\u0001:\u0004OPQRB¯\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0000\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013\u0012\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0013\u0012\u0006\u0010\u001b\u001a\u00020\u0018¢\u0006\u0002\u0010\u001cJ\t\u00109\u001a\u00020\u0003HÆ\u0003J\u0010\u0010:\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010'J\u0010\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010$J\u000f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013HÆ\u0003J\u0019\u0010=\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0016HÆ\u0003J\t\u0010>\u001a\u00020\u0018HÆ\u0003J\u0011\u0010?\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0013HÆ\u0003J\t\u0010@\u001a\u00020\u0018HÆ\u0003J\t\u0010A\u001a\u00020\u0005HÆ\u0003J\t\u0010B\u001a\u00020\u0007HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\tHÆ\u0003J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\fHÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0000HÆ\u0003J\u0010\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010$J\u000b\u0010H\u001a\u0004\u0018\u00010\u0007HÆ\u0003JØ\u0001\u0010I\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00002\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\u0018\b\u0002\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0010\b\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00132\b\b\u0002\u0010\u001b\u001a\u00020\u0018HÆ\u0001¢\u0006\u0002\u0010JJ\u0013\u0010K\u001a\u00020\u00182\b\u0010L\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010M\u001a\u00020\u0005HÖ\u0001J\t\u0010N\u001a\u00020\tHÖ\u0001R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0015\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010%\u001a\u0004\b#\u0010$R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010(\u001a\u0004\b&\u0010'R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010%\u001a\u0004\b)\u0010$R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0011\u0010\u001b\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010,R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b-\u0010,R!\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b2\u00103R\u0019\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001eR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0000¢\u0006\b\n\u0000\u001a\u0004\b5\u00106R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b7\u00101R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b8\u0010+¨\u0006S"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message;", "", "messageId", "", b.f84734a, "", "sender", "Lcom/im/freechat/shared/entities/contact/Sender;", "content", "", "sendTime", "messageStatus", "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "repliedMessage", "forwardMessageId", "forwardMessageSender", "forwardMessageChatId", "editTime", "attachments", "", "Lcom/im/freechat/shared/entities/message/Attachment;", "mentions", "", "mentionAll", "", "messageStyles", "Lcom/im/freechat/shared/entities/message/MessageStyle;", "isService", "(JILcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/String;JLcom/im/freechat/shared/entities/message/Message$MessageStatus;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/Long;Lcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;ZLjava/util/List;Z)V", "getAttachments", "()Ljava/util/List;", "getChatId", "()I", "getContent", "()Ljava/lang/String;", "getEditTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getForwardMessageChatId", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getForwardMessageId", "getForwardMessageSender", "()Lcom/im/freechat/shared/entities/contact/Sender;", "()Z", "getMentionAll", "getMentions", "()Ljava/util/Map;", "getMessageId", "()J", "getMessageStatus", "()Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "getMessageStyles", "getRepliedMessage", "()Lcom/im/freechat/shared/entities/message/Message;", "getSendTime", "getSender", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(JILcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/String;JLcom/im/freechat/shared/entities/message/Message$MessageStatus;Lcom/im/freechat/shared/entities/message/Message;Ljava/lang/Long;Lcom/im/freechat/shared/entities/contact/Sender;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/util/Map;ZLjava/util/List;Z)Lcom/im/freechat/shared/entities/message/Message;", "equals", "other", "hashCode", "toString", "ExtraMessageType", "MediaType", "MessageStatus", "SystemEventType", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Message {
    @g
    private final List<Attachment> attachments;
    private final int chatId;
    @h
    private final String content;
    @h
    private final Long editTime;
    @h
    private final Integer forwardMessageChatId;
    @h
    private final Long forwardMessageId;
    @h
    private final Sender forwardMessageSender;
    private final boolean isService;
    private final boolean mentionAll;
    @h
    private final Map<Integer, String> mentions;
    private final long messageId;
    @g
    private final MessageStatus messageStatus;
    @h
    private final List<MessageStyle> messageStyles;
    @h
    private final Message repliedMessage;
    private final long sendTime;
    @g
    private final Sender sender;

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$ExtraMessageType;", "", "(Ljava/lang/String;I)V", "QUOTE", "FORWARD", "EDIT", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum ExtraMessageType {
        QUOTE,
        FORWARD,
        EDIT
    }

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$MediaType;", "", "type", "", "(Ljava/lang/String;II)V", "getType", "()I", "IMAGE", "AUDIO", "VIDEO", "LOCATION", "FILE", "GIF", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum MediaType {
        IMAGE(-2),
        AUDIO(-3),
        VIDEO(-4),
        LOCATION(-5),
        FILE(-6),
        GIF(-7);
        
        @g
        public static final Companion Companion = new Companion(null);
        private final int type;

        /* compiled from: Message.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$MediaType$Companion;", "", "()V", "typeByValue", "Lcom/im/freechat/shared/entities/message/Message$MediaType;", "type", "", "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MediaType;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @h
            public final MediaType typeByValue(@h Integer num) {
                MediaType mediaType = MediaType.IMAGE;
                int type = mediaType.getType();
                if (num != null && num.intValue() == type) {
                    return mediaType;
                }
                MediaType mediaType2 = MediaType.AUDIO;
                int type2 = mediaType2.getType();
                if (num != null && num.intValue() == type2) {
                    return mediaType2;
                }
                MediaType mediaType3 = MediaType.VIDEO;
                int type3 = mediaType3.getType();
                if (num != null && num.intValue() == type3) {
                    return mediaType3;
                }
                MediaType mediaType4 = MediaType.LOCATION;
                int type4 = mediaType4.getType();
                if (num != null && num.intValue() == type4) {
                    return mediaType4;
                }
                MediaType mediaType5 = MediaType.FILE;
                int type5 = mediaType5.getType();
                if (num != null && num.intValue() == type5) {
                    return mediaType5;
                }
                MediaType mediaType6 = MediaType.GIF;
                int type6 = mediaType6.getType();
                if (num != null && num.intValue() == type6) {
                    return mediaType6;
                }
                return null;
            }
        }

        MediaType(int i4) {
            this.type = i4;
        }

        public final int getType() {
            return this.type;
        }
    }

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "", "status", "", "(Ljava/lang/String;II)V", "getStatus", "()I", "isSent", "", "HAVE_READ", "SEND_COMPLETED", "SENDING", "SEND_FAILED", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum MessageStatus {
        HAVE_READ(2),
        SEND_COMPLETED(1),
        SENDING(0),
        SEND_FAILED(-1);
        
        @g
        public static final Companion Companion = new Companion(null);
        private final int status;

        /* compiled from: Message.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0017\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$MessageStatus$Companion;", "", "()V", "fromInt", "Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "status", "", "(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @h
            public final MessageStatus fromInt(@h Integer num) {
                MessageStatus[] values;
                for (MessageStatus messageStatus : MessageStatus.values()) {
                    if (num != null && messageStatus.getStatus() == num.intValue()) {
                        return messageStatus;
                    }
                }
                return null;
            }
        }

        MessageStatus(int i4) {
            this.status = i4;
        }

        public final int getStatus() {
            return this.status;
        }

        public final boolean isSent() {
            return this == HAVE_READ || this == SEND_COMPLETED;
        }
    }

    /* compiled from: Message.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0011\b\u0086\u0001\u0018\u0000 \u00132\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0013B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$SystemEventType;", "", "event", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getEvent", "()Ljava/lang/String;", "MESSAGE_DELETE", "MESSAGE_MODIFY", "CREATE_GROUP", "ADD_MANAGER", "REMOVE_MANAGER", "ADD_MEMBER", "MEMBER_LEFT", "BANNED_MEMBER", "UNBANNED_MEMBER", "KICKED_MEMBER", "CLEAR_CHAT_HISTORY", "NONE", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum SystemEventType {
        MESSAGE_DELETE("msg.del"),
        MESSAGE_MODIFY("msg.modify"),
        CREATE_GROUP("system.create_conv"),
        ADD_MANAGER("system.manage_add"),
        REMOVE_MANAGER("system.manage_remove"),
        ADD_MEMBER("system.member_join"),
        MEMBER_LEFT("system.member_left"),
        BANNED_MEMBER("system.ban"),
        UNBANNED_MEMBER("system.remove_ban"),
        KICKED_MEMBER("system.member_kicked"),
        CLEAR_CHAT_HISTORY("system.clear_conv"),
        NONE("");
        
        @g
        public static final Companion Companion = new Companion(null);
        @g
        private final String event;

        /* compiled from: Message.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/shared/entities/message/Message$SystemEventType$Companion;", "", "()V", "fromString", "Lcom/im/freechat/shared/entities/message/Message$SystemEventType;", "event", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @h
            public final SystemEventType fromString(@h String str) {
                SystemEventType systemEventType = SystemEventType.ADD_MANAGER;
                if (Intrinsics.areEqual(str, systemEventType.getEvent())) {
                    return systemEventType;
                }
                SystemEventType systemEventType2 = SystemEventType.CREATE_GROUP;
                if (Intrinsics.areEqual(str, systemEventType2.getEvent())) {
                    return systemEventType2;
                }
                SystemEventType systemEventType3 = SystemEventType.MESSAGE_DELETE;
                if (Intrinsics.areEqual(str, systemEventType3.getEvent())) {
                    return systemEventType3;
                }
                SystemEventType systemEventType4 = SystemEventType.REMOVE_MANAGER;
                if (Intrinsics.areEqual(str, systemEventType4.getEvent())) {
                    return systemEventType4;
                }
                SystemEventType systemEventType5 = SystemEventType.ADD_MEMBER;
                if (Intrinsics.areEqual(str, systemEventType5.getEvent())) {
                    return systemEventType5;
                }
                SystemEventType systemEventType6 = SystemEventType.BANNED_MEMBER;
                if (Intrinsics.areEqual(str, systemEventType6.getEvent())) {
                    return systemEventType6;
                }
                SystemEventType systemEventType7 = SystemEventType.UNBANNED_MEMBER;
                if (Intrinsics.areEqual(str, systemEventType7.getEvent())) {
                    return systemEventType7;
                }
                SystemEventType systemEventType8 = SystemEventType.MESSAGE_MODIFY;
                if (Intrinsics.areEqual(str, systemEventType8.getEvent())) {
                    return systemEventType8;
                }
                SystemEventType systemEventType9 = SystemEventType.MEMBER_LEFT;
                if (Intrinsics.areEqual(str, systemEventType9.getEvent())) {
                    return systemEventType9;
                }
                SystemEventType systemEventType10 = SystemEventType.KICKED_MEMBER;
                if (Intrinsics.areEqual(str, systemEventType10.getEvent())) {
                    return systemEventType10;
                }
                SystemEventType systemEventType11 = SystemEventType.CLEAR_CHAT_HISTORY;
                if (Intrinsics.areEqual(str, systemEventType11.getEvent())) {
                    return systemEventType11;
                }
                return null;
            }
        }

        SystemEventType(String str) {
            this.event = str;
        }

        @g
        public final String getEvent() {
            return this.event;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Message(long j4, int i4, @g Sender sender, @h String str, long j10, @g MessageStatus messageStatus, @h Message message, @h Long l10, @h Sender sender2, @h Integer num, @h Long l11, @g List<? extends Attachment> attachments, @h Map<Integer, String> map, boolean z9, @h List<MessageStyle> list, boolean z10) {
        Intrinsics.checkNotNullParameter(sender, "sender");
        Intrinsics.checkNotNullParameter(messageStatus, "messageStatus");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        this.messageId = j4;
        this.chatId = i4;
        this.sender = sender;
        this.content = str;
        this.sendTime = j10;
        this.messageStatus = messageStatus;
        this.repliedMessage = message;
        this.forwardMessageId = l10;
        this.forwardMessageSender = sender2;
        this.forwardMessageChatId = num;
        this.editTime = l11;
        this.attachments = attachments;
        this.mentions = map;
        this.mentionAll = z9;
        this.messageStyles = list;
        this.isService = z10;
    }

    public final long component1() {
        return this.messageId;
    }

    @h
    public final Integer component10() {
        return this.forwardMessageChatId;
    }

    @h
    public final Long component11() {
        return this.editTime;
    }

    @g
    public final List<Attachment> component12() {
        return this.attachments;
    }

    @h
    public final Map<Integer, String> component13() {
        return this.mentions;
    }

    public final boolean component14() {
        return this.mentionAll;
    }

    @h
    public final List<MessageStyle> component15() {
        return this.messageStyles;
    }

    public final boolean component16() {
        return this.isService;
    }

    public final int component2() {
        return this.chatId;
    }

    @g
    public final Sender component3() {
        return this.sender;
    }

    @h
    public final String component4() {
        return this.content;
    }

    public final long component5() {
        return this.sendTime;
    }

    @g
    public final MessageStatus component6() {
        return this.messageStatus;
    }

    @h
    public final Message component7() {
        return this.repliedMessage;
    }

    @h
    public final Long component8() {
        return this.forwardMessageId;
    }

    @h
    public final Sender component9() {
        return this.forwardMessageSender;
    }

    @g
    public final Message copy(long j4, int i4, @g Sender sender, @h String str, long j10, @g MessageStatus messageStatus, @h Message message, @h Long l10, @h Sender sender2, @h Integer num, @h Long l11, @g List<? extends Attachment> attachments, @h Map<Integer, String> map, boolean z9, @h List<MessageStyle> list, boolean z10) {
        Intrinsics.checkNotNullParameter(sender, "sender");
        Intrinsics.checkNotNullParameter(messageStatus, "messageStatus");
        Intrinsics.checkNotNullParameter(attachments, "attachments");
        return new Message(j4, i4, sender, str, j10, messageStatus, message, l10, sender2, num, l11, attachments, map, z9, list, z10);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Message) {
            Message message = (Message) obj;
            return this.messageId == message.messageId && this.chatId == message.chatId && Intrinsics.areEqual(this.sender, message.sender) && Intrinsics.areEqual(this.content, message.content) && this.sendTime == message.sendTime && this.messageStatus == message.messageStatus && Intrinsics.areEqual(this.repliedMessage, message.repliedMessage) && Intrinsics.areEqual(this.forwardMessageId, message.forwardMessageId) && Intrinsics.areEqual(this.forwardMessageSender, message.forwardMessageSender) && Intrinsics.areEqual(this.forwardMessageChatId, message.forwardMessageChatId) && Intrinsics.areEqual(this.editTime, message.editTime) && Intrinsics.areEqual(this.attachments, message.attachments) && Intrinsics.areEqual(this.mentions, message.mentions) && this.mentionAll == message.mentionAll && Intrinsics.areEqual(this.messageStyles, message.messageStyles) && this.isService == message.isService;
        }
        return false;
    }

    @g
    public final List<Attachment> getAttachments() {
        return this.attachments;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @h
    public final String getContent() {
        return this.content;
    }

    @h
    public final Long getEditTime() {
        return this.editTime;
    }

    @h
    public final Integer getForwardMessageChatId() {
        return this.forwardMessageChatId;
    }

    @h
    public final Long getForwardMessageId() {
        return this.forwardMessageId;
    }

    @h
    public final Sender getForwardMessageSender() {
        return this.forwardMessageSender;
    }

    public final boolean getMentionAll() {
        return this.mentionAll;
    }

    @h
    public final Map<Integer, String> getMentions() {
        return this.mentions;
    }

    public final long getMessageId() {
        return this.messageId;
    }

    @g
    public final MessageStatus getMessageStatus() {
        return this.messageStatus;
    }

    @h
    public final List<MessageStyle> getMessageStyles() {
        return this.messageStyles;
    }

    @h
    public final Message getRepliedMessage() {
        return this.repliedMessage;
    }

    public final long getSendTime() {
        return this.sendTime;
    }

    @g
    public final Sender getSender() {
        return this.sender;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int a10 = ((((a.a(this.messageId) * 31) + this.chatId) * 31) + this.sender.hashCode()) * 31;
        String str = this.content;
        int hashCode = (((((a10 + (str == null ? 0 : str.hashCode())) * 31) + a.a(this.sendTime)) * 31) + this.messageStatus.hashCode()) * 31;
        Message message = this.repliedMessage;
        int hashCode2 = (hashCode + (message == null ? 0 : message.hashCode())) * 31;
        Long l10 = this.forwardMessageId;
        int hashCode3 = (hashCode2 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Sender sender = this.forwardMessageSender;
        int hashCode4 = (hashCode3 + (sender == null ? 0 : sender.hashCode())) * 31;
        Integer num = this.forwardMessageChatId;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Long l11 = this.editTime;
        int hashCode6 = (((hashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31) + this.attachments.hashCode()) * 31;
        Map<Integer, String> map = this.mentions;
        int hashCode7 = (hashCode6 + (map == null ? 0 : map.hashCode())) * 31;
        boolean z9 = this.mentionAll;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        int i10 = (hashCode7 + i4) * 31;
        List<MessageStyle> list = this.messageStyles;
        int hashCode8 = (i10 + (list != null ? list.hashCode() : 0)) * 31;
        boolean z10 = this.isService;
        return hashCode8 + (z10 ? 1 : z10 ? 1 : 0);
    }

    public final boolean isService() {
        return this.isService;
    }

    @g
    public String toString() {
        return "Message(messageId=" + this.messageId + ", chatId=" + this.chatId + ", sender=" + this.sender + ", content=" + this.content + ", sendTime=" + this.sendTime + ", messageStatus=" + this.messageStatus + ", repliedMessage=" + this.repliedMessage + ", forwardMessageId=" + this.forwardMessageId + ", forwardMessageSender=" + this.forwardMessageSender + ", forwardMessageChatId=" + this.forwardMessageChatId + ", editTime=" + this.editTime + ", attachments=" + this.attachments + ", mentions=" + this.mentions + ", mentionAll=" + this.mentionAll + ", messageStyles=" + this.messageStyles + ", isService=" + this.isService + ')';
    }
}
