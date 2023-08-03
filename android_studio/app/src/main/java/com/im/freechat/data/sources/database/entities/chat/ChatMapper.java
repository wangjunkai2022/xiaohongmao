package com.im.freechat.data.sources.database.entities.chat;

import com.im.freechat.data.openapigen.models.Channel;
import com.im.freechat.data.openapigen.models.Message;
import com.im.freechat.data.openapigen.models.User;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.data.sources.database.entities.message.MessageMapper;
import com.im.freechat.shared.entities.chat.Chat;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import m8.g;
import m8.h;

/* compiled from: ChatMapper.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\"\u0010\u0003\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0014\u0010\u0010\u001a\u00020\u0011*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\u0012"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/chat/ChatMapper;", "", "()V", "map", "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;", "chatResponse", "Lcom/im/freechat/data/openapigen/models/Chat;", "currentUserId", "", "Lcom/im/freechat/shared/entities/chat/Chat;", "chatWithContacts", "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;", "contactMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "messageMapper", "Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;", "getType", "Lcom/im/freechat/shared/entities/chat/Chat$Type;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class ChatMapper {
    private final Chat.Type getType(com.im.freechat.data.openapigen.models.Chat chat, int i4) {
        if (chat.getChannel() != null) {
            return Chat.Type.CHANNEL;
        }
        User opponent = chat.getOpponent();
        boolean z9 = false;
        if (opponent != null && opponent.getId() == i4) {
            z9 = true;
        }
        return z9 ? Chat.Type.FAVORITES : Chat.Type.SINGLE;
    }

    @g
    public final PartialChatUpdateEntity map(@g com.im.freechat.data.openapigen.models.Chat chatResponse, int i4) {
        Intrinsics.checkNotNullParameter(chatResponse, "chatResponse");
        int id = chatResponse.getId();
        Channel channel = chatResponse.getChannel();
        String name = channel != null ? channel.getName() : null;
        Channel channel2 = chatResponse.getChannel();
        String avatar = channel2 != null ? channel2.getAvatar() : null;
        Chat.Type type = getType(chatResponse, i4);
        Long lastReadMessageId = chatResponse.getLastReadMessageId();
        Message lastMessage = chatResponse.getLastMessage();
        Long valueOf = lastMessage != null ? Long.valueOf(lastMessage.getId()) : null;
        int unreadCount = chatResponse.getUnreadCount();
        Message pinnedMessage = chatResponse.getPinnedMessage();
        Long valueOf2 = pinnedMessage != null ? Long.valueOf(pinnedMessage.getId()) : null;
        Message pinnedMessage2 = chatResponse.getPinnedMessage();
        return new PartialChatUpdateEntity(id, name, avatar, type, lastReadMessageId, valueOf, unreadCount, valueOf2, pinnedMessage2 != null ? Integer.valueOf(pinnedMessage2.getSenderId()) : null, false, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @h
    public final Chat map(@h ChatWithContacts chatWithContacts, @g UserEntityMapper contactMapper, @g MessageMapper messageMapper) {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        String nickname;
        String avatar;
        Intrinsics.checkNotNullParameter(contactMapper, "contactMapper");
        Intrinsics.checkNotNullParameter(messageMapper, "messageMapper");
        UserEntity userEntity = null;
        if (chatWithContacts == null) {
            return null;
        }
        ChatEntity chatEntity = chatWithContacts.getChatEntity();
        if (chatEntity.getType() == Chat.Type.SINGLE) {
            Iterator<T> it = chatWithContacts.getContacts().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (!((UserEntity) next).isCurrentUser()) {
                    userEntity = next;
                    break;
                }
            }
            userEntity = userEntity;
        }
        List<UserEntity> contacts = chatWithContacts.getContacts();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(contacts, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (UserEntity userEntity2 : contacts) {
            Integer valueOf = Integer.valueOf(userEntity2.getUserId());
            UserModel reverseMap = contactMapper.reverseMap(userEntity2);
            Intrinsics.checkNotNull(reverseMap);
            Pair pair = TuplesKt.to(valueOf, reverseMap);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        int id = chatEntity.getId();
        if (userEntity == null || (nickname = userEntity.getUserNameMask()) == null) {
            nickname = userEntity != null ? userEntity.getNickname() : chatEntity.getTitle();
        }
        String str = nickname;
        if (userEntity == null || (avatar = userEntity.getAvatarUrl()) == null) {
            avatar = chatEntity.getAvatar();
        }
        return new Chat(id, str, avatar, chatEntity.getType(), MessageMapper.map$default(messageMapper, chatWithContacts.getLastMessageEntity(), contactMapper, null, 4, null), chatEntity.getUnreadCount(), chatEntity.getPinnedMessageId(), chatEntity.getPinnedUserId(), chatEntity.getPinnedTime(), Integer.valueOf(chatWithContacts.getContacts().size()), chatEntity.isPublic() ? 1 : 0, chatEntity.getShowHistoryToNewMembers() ? 1 : 0, chatEntity.getInvitationLink(), chatEntity.getDraftMessage(), linkedHashMap, chatWithContacts.getUpdateTime(), null, 65536, null);
    }
}
