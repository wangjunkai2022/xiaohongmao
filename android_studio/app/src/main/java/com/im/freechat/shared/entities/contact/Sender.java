package com.im.freechat.shared.entities.contact;

import com.im.freechat.shared.entities.chat.ChatMember;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: Sender.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\t\u0010\u001a\u001a\u00020\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\u000bHÆ\u0003JI\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001d\u001a\u00020\u000b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\u0006\u0010\u001f\u001a\u00020\u0003J\t\u0010 \u001a\u00020\u0007HÖ\u0001J\t\u0010!\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u000e¨\u0006\""}, d2 = {"Lcom/im/freechat/shared/entities/contact/Sender;", "", "nickname", "", "userNameMask", "avatar", "userId", "", "managementRole", "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "isCurrentUser", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;Z)V", "getAvatar", "()Ljava/lang/String;", "()Z", "getManagementRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "getNickname", "getUserId", "()I", "getUserNameMask", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "other", "getDisplayName", "hashCode", "toString", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Sender {
    @h
    private final String avatar;
    private final boolean isCurrentUser;
    @g
    private final ChatMember.ManagementRole managementRole;
    @g
    private final String nickname;
    private final int userId;
    @h
    private final String userNameMask;

    public Sender(@g String nickname, @h String str, @h String str2, int i4, @g ChatMember.ManagementRole managementRole, boolean z9) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        this.nickname = nickname;
        this.userNameMask = str;
        this.avatar = str2;
        this.userId = i4;
        this.managementRole = managementRole;
        this.isCurrentUser = z9;
    }

    public static /* synthetic */ Sender copy$default(Sender sender, String str, String str2, String str3, int i4, ChatMember.ManagementRole managementRole, boolean z9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sender.nickname;
        }
        if ((i10 & 2) != 0) {
            str2 = sender.userNameMask;
        }
        String str4 = str2;
        if ((i10 & 4) != 0) {
            str3 = sender.avatar;
        }
        String str5 = str3;
        if ((i10 & 8) != 0) {
            i4 = sender.userId;
        }
        int i11 = i4;
        if ((i10 & 16) != 0) {
            managementRole = sender.managementRole;
        }
        ChatMember.ManagementRole managementRole2 = managementRole;
        if ((i10 & 32) != 0) {
            z9 = sender.isCurrentUser;
        }
        return sender.copy(str, str4, str5, i11, managementRole2, z9);
    }

    @g
    public final String component1() {
        return this.nickname;
    }

    @h
    public final String component2() {
        return this.userNameMask;
    }

    @h
    public final String component3() {
        return this.avatar;
    }

    public final int component4() {
        return this.userId;
    }

    @g
    public final ChatMember.ManagementRole component5() {
        return this.managementRole;
    }

    public final boolean component6() {
        return this.isCurrentUser;
    }

    @g
    public final Sender copy(@g String nickname, @h String str, @h String str2, int i4, @g ChatMember.ManagementRole managementRole, boolean z9) {
        Intrinsics.checkNotNullParameter(nickname, "nickname");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        return new Sender(nickname, str, str2, i4, managementRole, z9);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Sender) {
            Sender sender = (Sender) obj;
            return Intrinsics.areEqual(this.nickname, sender.nickname) && Intrinsics.areEqual(this.userNameMask, sender.userNameMask) && Intrinsics.areEqual(this.avatar, sender.avatar) && this.userId == sender.userId && this.managementRole == sender.managementRole && this.isCurrentUser == sender.isCurrentUser;
        }
        return false;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    @g
    public final String getDisplayName() {
        String str = this.userNameMask;
        return str == null ? this.nickname : str;
    }

    @g
    public final ChatMember.ManagementRole getManagementRole() {
        return this.managementRole;
    }

    @g
    public final String getNickname() {
        return this.nickname;
    }

    public final int getUserId() {
        return this.userId;
    }

    @h
    public final String getUserNameMask() {
        return this.userNameMask;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = this.nickname.hashCode() * 31;
        String str = this.userNameMask;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.avatar;
        int hashCode3 = (((((hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31) + this.userId) * 31) + this.managementRole.hashCode()) * 31;
        boolean z9 = this.isCurrentUser;
        int i4 = z9;
        if (z9 != 0) {
            i4 = 1;
        }
        return hashCode3 + i4;
    }

    public final boolean isCurrentUser() {
        return this.isCurrentUser;
    }

    @g
    public String toString() {
        return "Sender(nickname=" + this.nickname + ", userNameMask=" + this.userNameMask + ", avatar=" + this.avatar + ", userId=" + this.userId + ", managementRole=" + this.managementRole + ", isCurrentUser=" + this.isCurrentUser + ')';
    }
}
