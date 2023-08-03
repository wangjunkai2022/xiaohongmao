package com.im.freechat.shared.entities;

import com.im.freechat.shared.entities.chat.ChatMember;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatMemberInfo.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/im/freechat/shared/entities/ChatMemberInfo;", "", "id", "", "name", "", "type", "Lcom/im/freechat/shared/entities/Type;", "avatar", "managementRole", "Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "(ILjava/lang/String;Lcom/im/freechat/shared/entities/Type;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;)V", "getAvatar", "()Ljava/lang/String;", "getId", "()I", "getManagementRole", "()Lcom/im/freechat/shared/entities/chat/ChatMember$ManagementRole;", "getName", "getType", "()Lcom/im/freechat/shared/entities/Type;", "shared"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class ChatMemberInfo {
    @h
    private final String avatar;
    private final int id;
    @g
    private final ChatMember.ManagementRole managementRole;
    @g
    private final String name;
    @g
    private final Type type;

    public ChatMemberInfo(int i4, @g String name, @g Type type, @h String str, @g ChatMember.ManagementRole managementRole) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(managementRole, "managementRole");
        this.id = i4;
        this.name = name;
        this.type = type;
        this.avatar = str;
        this.managementRole = managementRole;
    }

    @h
    public final String getAvatar() {
        return this.avatar;
    }

    public final int getId() {
        return this.id;
    }

    @g
    public final ChatMember.ManagementRole getManagementRole() {
        return this.managementRole;
    }

    @g
    public final String getName() {
        return this.name;
    }

    @g
    public final Type getType() {
        return this.type;
    }
}
