package com.im.freechat.data.sources.database.entities.chat;

import androidx.room.ColumnInfo;
import androidx.room.Embedded;
import androidx.room.Junction;
import androidx.room.Relation;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.data.sources.database.entities.member.MemberEntity;
import com.im.freechat.data.sources.database.entities.message.FullMessageEntity;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: ChatEntity.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0002\u0010\u0013J\u000f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J@\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tHÆ\u0001¢\u0006\u0002\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004¢\u0006\n\n\u0002\u0010\u0014\u001a\u0004\b\u0012\u0010\u0013¨\u0006\""}, d2 = {"Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;", "", "chatEntity", "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;", "lastMessageEntity", "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "updateTime", "", "contacts", "", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V", "getChatEntity", "()Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;", "getContacts", "()Ljava/util/List;", "getLastMessageEntity", "()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "getUpdateTime", "()Ljava/lang/Long;", "Ljava/lang/Long;", "component1", "component2", "component3", "component4", "copy", "(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;", "equals", "", "other", "hashCode", "", "toString", "", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatWithContacts {
    @Embedded
    @g
    private final ChatEntity chatEntity;
    @Relation(associateBy = @Junction(entityColumn = "user_id", parentColumn = "chat_id", value = MemberEntity.class), entity = UserEntity.class, entityColumn = "user_id", parentColumn = "chat_id")
    @g
    private final List<UserEntity> contacts;
    @Embedded
    @h
    private final FullMessageEntity lastMessageEntity;
    @h
    @ColumnInfo(name = "last_time")
    private final Long updateTime;

    public ChatWithContacts(@g ChatEntity chatEntity, @h FullMessageEntity fullMessageEntity, @h Long l10, @g List<UserEntity> contacts) {
        Intrinsics.checkNotNullParameter(chatEntity, "chatEntity");
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        this.chatEntity = chatEntity;
        this.lastMessageEntity = fullMessageEntity;
        this.updateTime = l10;
        this.contacts = contacts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ChatWithContacts copy$default(ChatWithContacts chatWithContacts, ChatEntity chatEntity, FullMessageEntity fullMessageEntity, Long l10, List list, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            chatEntity = chatWithContacts.chatEntity;
        }
        if ((i4 & 2) != 0) {
            fullMessageEntity = chatWithContacts.lastMessageEntity;
        }
        if ((i4 & 4) != 0) {
            l10 = chatWithContacts.updateTime;
        }
        if ((i4 & 8) != 0) {
            list = chatWithContacts.contacts;
        }
        return chatWithContacts.copy(chatEntity, fullMessageEntity, l10, list);
    }

    @g
    public final ChatEntity component1() {
        return this.chatEntity;
    }

    @h
    public final FullMessageEntity component2() {
        return this.lastMessageEntity;
    }

    @h
    public final Long component3() {
        return this.updateTime;
    }

    @g
    public final List<UserEntity> component4() {
        return this.contacts;
    }

    @g
    public final ChatWithContacts copy(@g ChatEntity chatEntity, @h FullMessageEntity fullMessageEntity, @h Long l10, @g List<UserEntity> contacts) {
        Intrinsics.checkNotNullParameter(chatEntity, "chatEntity");
        Intrinsics.checkNotNullParameter(contacts, "contacts");
        return new ChatWithContacts(chatEntity, fullMessageEntity, l10, contacts);
    }

    public boolean equals(@h Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ChatWithContacts) {
            ChatWithContacts chatWithContacts = (ChatWithContacts) obj;
            return Intrinsics.areEqual(this.chatEntity, chatWithContacts.chatEntity) && Intrinsics.areEqual(this.lastMessageEntity, chatWithContacts.lastMessageEntity) && Intrinsics.areEqual(this.updateTime, chatWithContacts.updateTime) && Intrinsics.areEqual(this.contacts, chatWithContacts.contacts);
        }
        return false;
    }

    @g
    public final ChatEntity getChatEntity() {
        return this.chatEntity;
    }

    @g
    public final List<UserEntity> getContacts() {
        return this.contacts;
    }

    @h
    public final FullMessageEntity getLastMessageEntity() {
        return this.lastMessageEntity;
    }

    @h
    public final Long getUpdateTime() {
        return this.updateTime;
    }

    public int hashCode() {
        int hashCode = this.chatEntity.hashCode() * 31;
        FullMessageEntity fullMessageEntity = this.lastMessageEntity;
        int hashCode2 = (hashCode + (fullMessageEntity == null ? 0 : fullMessageEntity.hashCode())) * 31;
        Long l10 = this.updateTime;
        return ((hashCode2 + (l10 != null ? l10.hashCode() : 0)) * 31) + this.contacts.hashCode();
    }

    @g
    public String toString() {
        return "ChatWithContacts(chatEntity=" + this.chatEntity + ", lastMessageEntity=" + this.lastMessageEntity + ", updateTime=" + this.updateTime + ", contacts=" + this.contacts + ')';
    }
}
