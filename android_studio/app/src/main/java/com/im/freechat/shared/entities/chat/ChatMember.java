package com.im.freechat.shared.entities.chat;

import com.im.freechat.shared.entities.contact.UserModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatMember.kt */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001:\u0003\u001a\u001b\u001cB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0007HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u001d"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember;", "", "contact", "Lcom/im/freechat/shared/entities/contact/UserModel;", "status", "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "role", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "(Lcom/im/freechat/shared/entities/contact/UserModel;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/shared/entities/chat/ChatMember$Role;)V", "getContact", "()Lcom/im/freechat/shared/entities/contact/UserModel;", "getRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "getStatus", "()Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "", "ManagementRole", "Role", "Status", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatMember {
    @g
    private final UserModel contact;
    @g
    private final Role role;
    @g
    private final Status status;

    /* compiled from: ChatMember.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "", "(Ljava/lang/String;I)V", "isSuperRole", "", "NORMAL", "CUSTOMER_SERVICE", "MANAGEMENT", "FAMILY", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum ManagementRole {
        NORMAL,
        CUSTOMER_SERVICE,
        MANAGEMENT,
        FAMILY;

        public final boolean isSuperRole() {
            return this == CUSTOMER_SERVICE || this == MANAGEMENT;
        }
    }

    /* compiled from: ChatMember.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0001\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "isGroupAdmin", "", "NORMAL", "OWNER", "MANAGER", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Role {
        NORMAL(0),
        OWNER(1),
        MANAGER(2);
        
        @g
        public static final Companion Companion = new Companion(null);
        private final int value;

        /* compiled from: ChatMember.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember$Role$Companion;", "", "()V", "fromInt", "Lcom/im/freechat/shared/entities/chat/ChatMember$Role;", "n", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final Role fromInt(int i4) {
                if (i4 != 1) {
                    if (i4 != 2) {
                        return Role.NORMAL;
                    }
                    return Role.MANAGER;
                }
                return Role.OWNER;
            }
        }

        Role(int i4) {
            this.value = i4;
        }

        public final int getValue() {
            return this.value;
        }

        public final boolean isGroupAdmin() {
            return this == OWNER || this == MANAGER;
        }
    }

    /* compiled from: ChatMember.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0001\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\n"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "NORMAL", "BANNED", "Companion", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Status {
        NORMAL(0),
        BANNED(1);
        
        @g
        public static final Companion Companion = new Companion(null);
        private final int value;

        /* compiled from: ChatMember.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/im/freechat/shared/entities/chat/ChatMember$Status$Companion;", "", "()V", "fromInt", "Lcom/im/freechat/shared/entities/chat/ChatMember$Status;", "n", "", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
        /* loaded from: classes3.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @g
            public final Status fromInt(int i4) {
                if (i4 == 1) {
                    return Status.BANNED;
                }
                return Status.NORMAL;
            }
        }

        Status(int i4) {
            this.value = i4;
        }

        public final int getValue() {
            return this.value;
        }
    }

    public ChatMember(@g UserModel contact, @g Status status, @g Role role) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(role, "role");
        this.contact = contact;
        this.status = status;
        this.role = role;
    }

    public static /* synthetic */ ChatMember copy$default(ChatMember chatMember, UserModel userModel, Status status, Role role, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            userModel = chatMember.contact;
        }
        if ((i4 & 2) != 0) {
            status = chatMember.status;
        }
        if ((i4 & 4) != 0) {
            role = chatMember.role;
        }
        return chatMember.copy(userModel, status, role);
    }

    @g
    public final UserModel component1() {
        return this.contact;
    }

    @g
    public final Status component2() {
        return this.status;
    }

    @g
    public final Role component3() {
        return this.role;
    }

    @g
    public final ChatMember copy(@g UserModel contact, @g Status status, @g Role role) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(role, "role");
        return new ChatMember(contact, status, role);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatMember) {
            ChatMember chatMember = (ChatMember) obj;
            return Intrinsics.areEqual(this.contact, chatMember.contact) && this.status == chatMember.status && this.role == chatMember.role;
        }
        return false;
    }

    @g
    public final UserModel getContact() {
        return this.contact;
    }

    @g
    public final Role getRole() {
        return this.role;
    }

    @g
    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        return (((this.contact.hashCode() * 31) + this.status.hashCode()) * 31) + this.role.hashCode();
    }

    @g
    public String toString() {
        return "ChatMember(contact=" + this.contact + ", status=" + this.status + ", role=" + this.role + ')';
    }
}
