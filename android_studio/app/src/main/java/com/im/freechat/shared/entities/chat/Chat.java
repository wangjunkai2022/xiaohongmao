package com.im.freechat.shared.entities.chat;

import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.shared.entities.message.Message;
import java.util.Iterator;
import java.util.Map;
import k4.b;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: Chat.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b>\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001ZBÃ\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005\u0012\u0014\b\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00170\u0016\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0016¢\u0006\u0002\u0010\u001aJ\t\u0010B\u001a\u00020\u0003HÆ\u0003J\u0010\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010,J\t\u0010D\u001a\u00020\u0003HÆ\u0003J\t\u0010E\u001a\u00020\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0015\u0010H\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00170\u0016HÆ\u0003J\u0010\u0010I\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00104J\u0015\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0016HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\t\u0010M\u001a\u00020\bHÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\nHÆ\u0003J\t\u0010O\u001a\u00020\u0003HÆ\u0003J\u0010\u0010P\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00104J\u0010\u0010Q\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010,J\u0010\u0010R\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0002\u00104Jä\u0001\u0010S\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00052\u0014\b\u0002\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00170\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r2\u0014\b\u0002\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0016HÆ\u0001¢\u0006\u0002\u0010TJ\u0013\u0010U\u001a\u00020V2\b\u0010W\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010X\u001a\u00020\u0003HÖ\u0001J\t\u0010Y\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u001d\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001cR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u001c\"\u0004\b#\u0010$R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u001e\"\u0004\b%\u0010&R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010(\"\u0004\b)\u0010*R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010/\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u0013\u00100\u001a\u0004\u0018\u00010\u00178F¢\u0006\u0006\u001a\u0004\b1\u00102R\u0015\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u00105\u001a\u0004\b3\u00104R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010/\u001a\u0004\b6\u0010,R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u0010\n\u0002\u00105\u001a\u0004\b7\u00104\"\u0004\b8\u00109R\u001a\u0010\u0012\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b:\u0010\u001e\"\u0004\b;\u0010&R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b<\u0010\u001cR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b=\u0010>R\u001d\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0016¢\u0006\b\n\u0000\u001a\u0004\b?\u0010 R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b@\u0010\u001eR\u0015\u0010\u0018\u001a\u0004\u0018\u00010\r¢\u0006\n\n\u0002\u00105\u001a\u0004\bA\u00104¨\u0006["}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat;", "", b.f84734a, "", MessageBundle.TITLE_ENTRY, "", "avatar", "type", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "lastChatMessage", "Lcom/im/freechat/shared/entities/message/Message;", "unreadCount", "pinnedMessageId", "", "pinnedMessageUserId", "pinnedTime", "membersCount", "isPublic", "showHistoryToNewMembers", "invitationLink", "draftMessage", "contacts", "", "Lcom/im/freechat/shared/entities/contact/UserModel;", "updateSystemTime", "typings", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;)V", "getAvatar", "()Ljava/lang/String;", "getChatId", "()I", "getContacts", "()Ljava/util/Map;", "getDraftMessage", "getInvitationLink", "setInvitationLink", "(Ljava/lang/String;)V", "setPublic", "(I)V", "getLastChatMessage", "()Lcom/im/freechat/shared/entities/message/Message;", "setLastChatMessage", "(Lcom/im/freechat/shared/entities/message/Message;)V", "getMembersCount", "()Ljava/lang/Integer;", "setMembersCount", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "opponent", "getOpponent", "()Lcom/im/freechat/shared/entities/contact/UserModel;", "getPinnedMessageId", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getPinnedMessageUserId", "getPinnedTime", "setPinnedTime", "(Ljava/lang/Long;)V", "getShowHistoryToNewMembers", "setShowHistoryToNewMembers", "getTitle", "getType", "()Lcom/im/freechat/shared/entities/chat/Chat$Type;", "getTypings", "getUnreadCount", "getUpdateSystemTime", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Lcom/im/freechat/shared/entities/message/Message;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Long;Ljava/util/Map;)Lcom/im/freechat/shared/entities/chat/Chat;", "equals", "", "other", "hashCode", "toString", "Type", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Chat {
    @h
    private final String avatar;
    private final int chatId;
    @g
    private final Map<Integer, UserModel> contacts;
    @h
    private final String draftMessage;
    @h
    private String invitationLink;
    private int isPublic;
    @h
    private Message lastChatMessage;
    @h
    private Integer membersCount;
    @h
    private final Long pinnedMessageId;
    @h
    private final Integer pinnedMessageUserId;
    @h
    private Long pinnedTime;
    private int showHistoryToNewMembers;
    @h
    private final String title;
    @g
    private final Type type;
    @g
    private final Map<Integer, Long> typings;
    private final int unreadCount;
    @h
    private final Long updateSystemTime;

    /* compiled from: Chat.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0001\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat$Type;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "SINGLE", "GROUP", "CHAT_ROOM", "CHANNEL", "FAVORITES", "SERVICE", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Type {
        SINGLE(1),
        GROUP(2),
        CHAT_ROOM(4),
        CHANNEL(5),
        FAVORITES(6),
        SERVICE(7);
        
        @g
        public static final Companion Companion = new Companion(null);
        private final int value;

        /* compiled from: Chat.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/shared/entities/chat/Chat$Type$Companion;", "", "()V", "fromInt", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "value", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final Type fromInt(int i4) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                if (i4 != 6) {
                                    if (i4 == 7) {
                                        return Type.SERVICE;
                                    }
                                    throw new IllegalStateException("This type is not possible".toString());
                                }
                                return Type.FAVORITES;
                            }
                            return Type.CHANNEL;
                        }
                        return Type.CHAT_ROOM;
                    }
                    return Type.GROUP;
                }
                return Type.SINGLE;
            }
        }

        Type(int i4) {
            this.value = i4;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public Chat(int i4, @h String str, @h String str2, @g Type type, @h Message message, int i10, @h Long l10, @h Integer num, @h Long l11, @h Integer num2, int i11, int i12, @h String str3, @h String str4, @g Map<Integer, UserModel> contacts, @h Long l12, @g Map<Integer, Long> typings) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        Intrinsics.checkNotNullParameter(typings, "typings");
        this.chatId = i4;
        this.title = str;
        this.avatar = str2;
        this.type = type;
        this.lastChatMessage = message;
        this.unreadCount = i10;
        this.pinnedMessageId = l10;
        this.pinnedMessageUserId = num;
        this.pinnedTime = l11;
        this.membersCount = num2;
        this.isPublic = i11;
        this.showHistoryToNewMembers = i12;
        this.invitationLink = str3;
        this.draftMessage = str4;
        this.contacts = contacts;
        this.updateSystemTime = l12;
        this.typings = typings;
    }

    public final int component1() {
        return this.chatId;
    }

    @h
    public final Integer component10() {
        return this.membersCount;
    }

    public final int component11() {
        return this.isPublic;
    }

    public final int component12() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String component13() {
        return this.invitationLink;
    }

    @h
    public final String component14() {
        return this.draftMessage;
    }

    @g
    public final Map<Integer, UserModel> component15() {
        return this.contacts;
    }

    @h
    public final Long component16() {
        return this.updateSystemTime;
    }

    @g
    public final Map<Integer, Long> component17() {
        return this.typings;
    }

    @h
    public final String component2() {
        return this.title;
    }

    @h
    public final String component3() {
        return this.avatar;
    }

    @g
    public final Type component4() {
        return this.type;
    }

    @h
    public final Message component5() {
        return this.lastChatMessage;
    }

    public final int component6() {
        return this.unreadCount;
    }

    @h
    public final Long component7() {
        return this.pinnedMessageId;
    }

    @h
    public final Integer component8() {
        return this.pinnedMessageUserId;
    }

    @h
    public final Long component9() {
        return this.pinnedTime;
    }

    @g
    public final Chat copy(int i4, @h String str, @h String str2, @g Type type, @h Message message, int i10, @h Long l10, @h Integer num, @h Long l11, @h Integer num2, int i11, int i12, @h String str3, @h String str4, @g Map<Integer, UserModel> contacts, @h Long l12, @g Map<Integer, Long> typings) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        Intrinsics.checkNotNullParameter(typings, "typings");
        return new Chat(i4, str, str2, type, message, i10, l10, num, l11, num2, i11, i12, str3, str4, contacts, l12, typings);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Chat) {
            Chat chat = (Chat) obj;
            return this.chatId == chat.chatId && Intrinsics.areEqual(this.title, chat.title) && Intrinsics.areEqual(this.avatar, chat.avatar) && this.type == chat.type && Intrinsics.areEqual(this.lastChatMessage, chat.lastChatMessage) && this.unreadCount == chat.unreadCount && Intrinsics.areEqual(this.pinnedMessageId, chat.pinnedMessageId) && Intrinsics.areEqual(this.pinnedMessageUserId, chat.pinnedMessageUserId) && Intrinsics.areEqual(this.pinnedTime, chat.pinnedTime) && Intrinsics.areEqual(this.membersCount, chat.membersCount) && this.isPublic == chat.isPublic && this.showHistoryToNewMembers == chat.showHistoryToNewMembers && Intrinsics.areEqual(this.invitationLink, chat.invitationLink) && Intrinsics.areEqual(this.draftMessage, chat.draftMessage) && Intrinsics.areEqual(this.contacts, chat.contacts) && Intrinsics.areEqual(this.updateSystemTime, chat.updateSystemTime) && Intrinsics.areEqual(this.typings, chat.typings);
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getChatId() {
        return this.chatId;
    }

    @g
    public final Map<Integer, UserModel> getContacts() {
        return this.contacts;
    }

    @h
    public final String getDraftMessage() {
        return this.draftMessage;
    }

    @h
    public final String getInvitationLink() {
        return this.invitationLink;
    }

    @h
    public final Message getLastChatMessage() {
        return this.lastChatMessage;
    }

    @h
    public final Integer getMembersCount() {
        return this.membersCount;
    }

    @h
    public final UserModel getOpponent() {
        Object obj = null;
        if (this.type == Type.SINGLE) {
            Iterator<T> it = this.contacts.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (!((UserModel) next).isCurrentUser()) {
                    obj = next;
                    break;
                }
            }
            return (UserModel) obj;
        }
        return null;
    }

    @h
    public final Long getPinnedMessageId() {
        return this.pinnedMessageId;
    }

    @h
    public final Integer getPinnedMessageUserId() {
        return this.pinnedMessageUserId;
    }

    @h
    public final Long getPinnedTime() {
        return this.pinnedTime;
    }

    public final int getShowHistoryToNewMembers() {
        return this.showHistoryToNewMembers;
    }

    @h
    public final String getTitle() {
        return this.title;
    }

    @g
    public final Type getType() {
        return this.type;
    }

    @g
    public final Map<Integer, Long> getTypings() {
        return this.typings;
    }

    public final int getUnreadCount() {
        return this.unreadCount;
    }

    @h
    public final Long getUpdateSystemTime() {
        return this.updateSystemTime;
    }

    public int hashCode() {
        int i4 = this.chatId * 31;
        String str = this.title;
        int hashCode = (i4 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        int hashCode2 = (((hashCode + (str2 == null ? 0 : str2.hashCode())) * 31) + this.type.hashCode()) * 31;
        Message message = this.lastChatMessage;
        int hashCode3 = (((hashCode2 + (message == null ? 0 : message.hashCode())) * 31) + this.unreadCount) * 31;
        Long l10 = this.pinnedMessageId;
        int hashCode4 = (hashCode3 + (l10 == null ? 0 : l10.hashCode())) * 31;
        Integer num = this.pinnedMessageUserId;
        int hashCode5 = (hashCode4 + (num == null ? 0 : num.hashCode())) * 31;
        Long l11 = this.pinnedTime;
        int hashCode6 = (hashCode5 + (l11 == null ? 0 : l11.hashCode())) * 31;
        Integer num2 = this.membersCount;
        int hashCode7 = (((((hashCode6 + (num2 == null ? 0 : num2.hashCode())) * 31) + this.isPublic) * 31) + this.showHistoryToNewMembers) * 31;
        String str3 = this.invitationLink;
        int hashCode8 = (hashCode7 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.draftMessage;
        int hashCode9 = (((hashCode8 + (str4 == null ? 0 : str4.hashCode())) * 31) + this.contacts.hashCode()) * 31;
        Long l12 = this.updateSystemTime;
        return ((hashCode9 + (l12 != null ? l12.hashCode() : 0)) * 31) + this.typings.hashCode();
    }

    public final int isPublic() {
        return this.isPublic;
    }

    public final void setInvitationLink(@h String str) {
        this.invitationLink = str;
    }

    public final void setLastChatMessage(@h Message message) {
        this.lastChatMessage = message;
    }

    public final void setMembersCount(@h Integer num) {
        this.membersCount = num;
    }

    public final void setPinnedTime(@h Long l10) {
        this.pinnedTime = l10;
    }

    public final void setPublic(int i4) {
        this.isPublic = i4;
    }

    public final void setShowHistoryToNewMembers(int i4) {
        this.showHistoryToNewMembers = i4;
    }

    @g
    public String toString() {
        return "Chat(chatId=" + this.chatId + ", title=" + this.title + ", avatar=" + this.avatar + ", type=" + this.type + ", lastChatMessage=" + this.lastChatMessage + ", unreadCount=" + this.unreadCount + ", pinnedMessageId=" + this.pinnedMessageId + ", pinnedMessageUserId=" + this.pinnedMessageUserId + ", pinnedTime=" + this.pinnedTime + ", membersCount=" + this.membersCount + ", isPublic=" + this.isPublic + ", showHistoryToNewMembers=" + this.showHistoryToNewMembers + ", invitationLink=" + this.invitationLink + ", draftMessage=" + this.draftMessage + ", contacts=" + this.contacts + ", updateSystemTime=" + this.updateSystemTime + ", typings=" + this.typings + ')';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public /* synthetic */ Chat(int r22, java.lang.String r23, java.lang.String r24, com.im.freechat.shared.entities.chat.Chat.Type r25, com.im.freechat.shared.entities.message.Message r26, int r27, java.lang.Long r28, java.lang.Integer r29, java.lang.Long r30, java.lang.Integer r31, int r32, int r33, java.lang.String r34, java.lang.String r35, java.util.Map r36, java.lang.Long r37, java.util.Map r38, int r39, kotlin.jvm.internal.DefaultConstructorMarker r40) {
        /*
            r21 = this;
            r0 = r39
            r1 = r0 & 1024(0x400, float:1.435E-42)
            r2 = 0
            if (r1 == 0) goto L9
            r14 = 0
            goto Lb
        L9:
            r14 = r32
        Lb:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L11
            r15 = 0
            goto L13
        L11:
            r15 = r33
        L13:
            r1 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r1 == 0) goto L1e
            java.util.Map r1 = kotlin.collections.MapsKt.emptyMap()
            r18 = r1
            goto L20
        L1e:
            r18 = r36
        L20:
            r1 = 32768(0x8000, float:4.5918E-41)
            r1 = r1 & r0
            if (r1 == 0) goto L2a
            r1 = 0
            r19 = r1
            goto L2c
        L2a:
            r19 = r37
        L2c:
            r1 = 65536(0x10000, float:9.18355E-41)
            r0 = r0 & r1
            if (r0 == 0) goto L38
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()
            r20 = r0
            goto L3a
        L38:
            r20 = r38
        L3a:
            r3 = r21
            r4 = r22
            r5 = r23
            r6 = r24
            r7 = r25
            r8 = r26
            r9 = r27
            r10 = r28
            r11 = r29
            r12 = r30
            r13 = r31
            r16 = r34
            r17 = r35
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.shared.entities.chat.Chat.<init>(int, java.lang.String, java.lang.String, com.im.freechat.shared.entities.chat.Chat$Type, com.im.freechat.shared.entities.message.Message, int, java.lang.Long, java.lang.Integer, java.lang.Long, java.lang.Integer, int, int, java.lang.String, java.lang.String, java.util.Map, java.lang.Long, java.util.Map, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
