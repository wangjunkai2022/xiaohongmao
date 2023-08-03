package com.im.freechat.data.sources.websocket.entities;

import com.im.freechat.data.openapigen.models.Error;
import com.im.freechat.data.openapigen.models.FriendDeleted;
import com.im.freechat.data.openapigen.models.FriendRequestAccepted;
import com.im.freechat.data.openapigen.models.FriendRequestCancelled;
import com.im.freechat.data.openapigen.models.FriendRequestReceived;
import com.im.freechat.data.openapigen.models.FriendRequestRejected;
import com.im.freechat.data.openapigen.models.LoggedInSuccessfully;
import com.im.freechat.data.openapigen.models.MessageEdited;
import com.im.freechat.data.openapigen.models.MessagePinned;
import com.im.freechat.data.openapigen.models.MessageRead;
import com.im.freechat.data.openapigen.models.MessageReceived;
import com.im.freechat.data.openapigen.models.MessageUnpinned;
import com.im.freechat.data.openapigen.models.MessagesDeleted;
import com.im.freechat.data.openapigen.models.Ping;
import com.im.freechat.data.openapigen.models.UnknownSocketMessage;
import com.im.freechat.data.openapigen.models.UserEndedTyping;
import com.im.freechat.data.openapigen.models.UserIsOffline;
import com.im.freechat.data.openapigen.models.UserIsOnline;
import com.im.freechat.data.openapigen.models.UserStartedTyping;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum LOGIN_SUCCESS uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: WsResponse.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\b\u0086\u0001\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u001aB\u0011\b\u0002\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;", "", "type", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getType", "()Ljava/lang/String;", "LOGIN_SUCCESS", "MESSAGE_RECEIVED", "MESSAGE_EDITED", "MESSAGE_READ", "MESSAGES_DELETED", "MESSAGE_PINNED", "MESSAGE_UNPINNED", "USER_ONLINE", "USER_OFFLINE", "FRIEND_REQUEST_RECEIVED", "FRIEND_REQUEST_ACCEPTED", "FRIEND_REQUEST_REJECTED", "FRIEND_REQUEST_CANCELLED", "FRIEND_DELETED", "USER_TYPING_START", "USER_TYPING_END", "ERROR", "PING", "OTHER", "Companion", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class WsSocketMessageType {
    private static final /* synthetic */ WsSocketMessageType[] $VALUES;
    @g
    public static final Companion Companion;
    public static final WsSocketMessageType ERROR;
    public static final WsSocketMessageType FRIEND_DELETED;
    public static final WsSocketMessageType FRIEND_REQUEST_ACCEPTED;
    public static final WsSocketMessageType FRIEND_REQUEST_CANCELLED;
    public static final WsSocketMessageType FRIEND_REQUEST_RECEIVED;
    public static final WsSocketMessageType FRIEND_REQUEST_REJECTED;
    public static final WsSocketMessageType LOGIN_SUCCESS;
    public static final WsSocketMessageType MESSAGES_DELETED;
    public static final WsSocketMessageType MESSAGE_EDITED;
    public static final WsSocketMessageType MESSAGE_PINNED;
    public static final WsSocketMessageType MESSAGE_READ;
    public static final WsSocketMessageType MESSAGE_RECEIVED;
    public static final WsSocketMessageType MESSAGE_UNPINNED;
    public static final WsSocketMessageType OTHER;
    public static final WsSocketMessageType PING;
    public static final WsSocketMessageType USER_OFFLINE;
    public static final WsSocketMessageType USER_ONLINE;
    public static final WsSocketMessageType USER_TYPING_END;
    public static final WsSocketMessageType USER_TYPING_START;
    @g
    private final String type;

    /* compiled from: WsResponse.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType$Companion;", "", "()V", "fromString", "Lcom/im/freechat/data/sources/websocket/entities/WsSocketMessageType;", "type", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @g
        public final WsSocketMessageType fromString(@g String type) {
            WsSocketMessageType wsSocketMessageType;
            Intrinsics.checkNotNullParameter(type, "type");
            WsSocketMessageType[] values = WsSocketMessageType.values();
            int length = values.length;
            int i4 = 0;
            while (true) {
                if (i4 >= length) {
                    wsSocketMessageType = null;
                    break;
                }
                wsSocketMessageType = values[i4];
                if (Intrinsics.areEqual(wsSocketMessageType.getType(), type)) {
                    break;
                }
                i4++;
            }
            return wsSocketMessageType == null ? WsSocketMessageType.OTHER : wsSocketMessageType;
        }
    }

    private static final /* synthetic */ WsSocketMessageType[] $values() {
        return new WsSocketMessageType[]{LOGIN_SUCCESS, MESSAGE_RECEIVED, MESSAGE_EDITED, MESSAGE_READ, MESSAGES_DELETED, MESSAGE_PINNED, MESSAGE_UNPINNED, USER_ONLINE, USER_OFFLINE, FRIEND_REQUEST_RECEIVED, FRIEND_REQUEST_ACCEPTED, FRIEND_REQUEST_REJECTED, FRIEND_REQUEST_CANCELLED, FRIEND_DELETED, USER_TYPING_START, USER_TYPING_END, ERROR, PING, OTHER};
    }

    static {
        String simpleName = LoggedInSuccessfully.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
        LOGIN_SUCCESS = new WsSocketMessageType("LOGIN_SUCCESS", 0, simpleName);
        String simpleName2 = MessageReceived.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName2, "T::class.java.simpleName");
        MESSAGE_RECEIVED = new WsSocketMessageType("MESSAGE_RECEIVED", 1, simpleName2);
        String simpleName3 = MessageEdited.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName3, "T::class.java.simpleName");
        MESSAGE_EDITED = new WsSocketMessageType("MESSAGE_EDITED", 2, simpleName3);
        String simpleName4 = MessageRead.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName4, "T::class.java.simpleName");
        MESSAGE_READ = new WsSocketMessageType("MESSAGE_READ", 3, simpleName4);
        String simpleName5 = MessagesDeleted.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName5, "T::class.java.simpleName");
        MESSAGES_DELETED = new WsSocketMessageType("MESSAGES_DELETED", 4, simpleName5);
        String simpleName6 = MessagePinned.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName6, "T::class.java.simpleName");
        MESSAGE_PINNED = new WsSocketMessageType("MESSAGE_PINNED", 5, simpleName6);
        String simpleName7 = MessageUnpinned.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName7, "T::class.java.simpleName");
        MESSAGE_UNPINNED = new WsSocketMessageType("MESSAGE_UNPINNED", 6, simpleName7);
        String simpleName8 = UserIsOnline.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName8, "T::class.java.simpleName");
        USER_ONLINE = new WsSocketMessageType("USER_ONLINE", 7, simpleName8);
        String simpleName9 = UserIsOffline.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName9, "T::class.java.simpleName");
        USER_OFFLINE = new WsSocketMessageType("USER_OFFLINE", 8, simpleName9);
        String simpleName10 = FriendRequestReceived.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName10, "T::class.java.simpleName");
        FRIEND_REQUEST_RECEIVED = new WsSocketMessageType("FRIEND_REQUEST_RECEIVED", 9, simpleName10);
        String simpleName11 = FriendRequestAccepted.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName11, "T::class.java.simpleName");
        FRIEND_REQUEST_ACCEPTED = new WsSocketMessageType("FRIEND_REQUEST_ACCEPTED", 10, simpleName11);
        String simpleName12 = FriendRequestRejected.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName12, "T::class.java.simpleName");
        FRIEND_REQUEST_REJECTED = new WsSocketMessageType("FRIEND_REQUEST_REJECTED", 11, simpleName12);
        String simpleName13 = FriendRequestCancelled.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName13, "T::class.java.simpleName");
        FRIEND_REQUEST_CANCELLED = new WsSocketMessageType("FRIEND_REQUEST_CANCELLED", 12, simpleName13);
        String simpleName14 = FriendDeleted.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName14, "T::class.java.simpleName");
        FRIEND_DELETED = new WsSocketMessageType("FRIEND_DELETED", 13, simpleName14);
        String simpleName15 = UserStartedTyping.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName15, "T::class.java.simpleName");
        USER_TYPING_START = new WsSocketMessageType("USER_TYPING_START", 14, simpleName15);
        String simpleName16 = UserEndedTyping.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName16, "T::class.java.simpleName");
        USER_TYPING_END = new WsSocketMessageType("USER_TYPING_END", 15, simpleName16);
        String simpleName17 = Error.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName17, "T::class.java.simpleName");
        Locale locale = Locale.ROOT;
        String lowerCase = simpleName17.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        ERROR = new WsSocketMessageType("ERROR", 16, lowerCase);
        String simpleName18 = Ping.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName18, "T::class.java.simpleName");
        String lowerCase2 = simpleName18.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(Locale.ROOT)");
        PING = new WsSocketMessageType("PING", 17, lowerCase2);
        String simpleName19 = UnknownSocketMessage.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName19, "T::class.java.simpleName");
        OTHER = new WsSocketMessageType("OTHER", 18, simpleName19);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    private WsSocketMessageType(String str, int i4, String str2) {
        this.type = str2;
    }

    public static WsSocketMessageType valueOf(String str) {
        return (WsSocketMessageType) Enum.valueOf(WsSocketMessageType.class, str);
    }

    public static WsSocketMessageType[] values() {
        return (WsSocketMessageType[]) $VALUES.clone();
    }

    @g
    public final String getType() {
        return this.type;
    }

    /* synthetic */ WsSocketMessageType(String str, int i4, String str2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i4, (i10 & 1) != 0 ? "" : str2);
    }
}
