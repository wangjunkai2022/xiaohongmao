package com.im.freechat.data.sources.database.entities.contact;

import com.im.freechat.data.openapigen.models.Channel;
import com.im.freechat.data.openapigen.models.User;
import com.im.freechat.data.sources.database.entities.member.ChatMemberEntity;
import com.im.freechat.data.sources.database.entities.member.MemberEntity;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.chat.ChatMemberKt;
import com.im.freechat.shared.entities.contact.Sender;
import com.im.freechat.shared.entities.contact.UserModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import m8.g;
import m8.h;

/* compiled from: UserEntityMapper.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0003\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tJ\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0003\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0003\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\u0012J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u000bJ\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u000bJ\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\tJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00112\b\u0010 \u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00110\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00070\u0012¨\u0006!"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "", "()V", "map", "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;", "channel", "Lcom/im/freechat/data/openapigen/models/Channel;", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "user", "Lcom/im/freechat/data/openapigen/models/User;", "currentUserId", "", "Lcom/im/freechat/shared/entities/chat/ChatMember;", "chatMemberEntity", "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;", "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;", "contact", "Lcom/im/freechat/shared/entities/contact/UserModel;", "", "list", "mapLastSeen", "", "lastSeen", "", "mapToMemberEntity", "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;", k4.b.f84734a, "mapUserModel", "reverseMap", "Lcom/im/freechat/shared/entities/contact/Sender;", "senderEntity", "Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;", "contactEntity", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class UserEntityMapper {
    @g
    public final PartialContactEntity map(@g UserModel contact) {
        Intrinsics.checkNotNullParameter(contact, "contact");
        return new PartialContactEntity(contact.getUserId(), contact.getNickname(), contact.getAvatar(), contact.getManagementRole().ordinal(), contact.isService(), contact.isCurrentUser(), contact.getLastOnline(), contact.getBio());
    }

    public final long mapLastSeen(@g String lastSeen) {
        Long longOrNull;
        Intrinsics.checkNotNullParameter(lastSeen, "lastSeen");
        if (Intrinsics.areEqual(lastSeen, "")) {
            return 0L;
        }
        if (Intrinsics.areEqual(lastSeen, "now")) {
            return Long.MAX_VALUE;
        }
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(lastSeen);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return 1L;
    }

    @g
    public final MemberEntity mapToMemberEntity(@g User user, int i4) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new MemberEntity(user.getId(), i4, ChatMember.Role.Companion.fromInt(0), ChatMember.Status.Companion.fromInt(0));
    }

    @g
    public final UserModel mapUserModel(@g User user) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new UserModel(user.getName(), user.getAvatar(), user.getId(), ChatMember.ManagementRole.NORMAL, "", false, false, false, mapLastSeen(user.getLastSeen()), user.getBio(), 128, null);
    }

    @h
    public final UserModel reverseMap(@h UserEntity userEntity) {
        if (userEntity != null) {
            String nickname = userEntity.getNickname();
            String avatarUrl = userEntity.getAvatarUrl();
            int userId = userEntity.getUserId();
            ChatMember.ManagementRole createManagementRole = ChatMemberKt.createManagementRole(Integer.valueOf(userEntity.getManagementRole()));
            String userNameMask = userEntity.getUserNameMask();
            boolean isService = userEntity.isService();
            boolean isCurrentUser = userEntity.isCurrentUser();
            Long lastOnline = userEntity.getLastOnline();
            return new UserModel(nickname, avatarUrl, userId, createManagementRole, userNameMask, isService, isCurrentUser, false, lastOnline != null ? lastOnline.longValue() : 0L, userEntity.getBio(), 128, null);
        }
        return null;
    }

    @g
    public final MemberEntity mapToMemberEntity(@g Channel channel, int i4) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return new MemberEntity(channel.getId(), i4, ChatMember.Role.Companion.fromInt(0), ChatMember.Status.Companion.fromInt(0));
    }

    @g
    public final MemberContact map(@g User user, int i4) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new MemberContact(user.getId(), user.getName(), user.getAvatar(), 0, user.getId() == i4, mapLastSeen(user.getLastSeen()), user.getBio());
    }

    @h
    public final Sender reverseMap(@h SenderEntity senderEntity) {
        if (senderEntity != null) {
            return new Sender(senderEntity.getNickname(), senderEntity.getUserNameMask(), senderEntity.getAvatarUrl(), senderEntity.getUserId(), ChatMemberKt.createManagementRole(Integer.valueOf(senderEntity.getManagementRole())), senderEntity.isCurrentUser());
        }
        return null;
    }

    @g
    public final MemberContact map(@g Channel channel) {
        Intrinsics.checkNotNullParameter(channel, "channel");
        return new MemberContact(channel.getId(), channel.getName(), channel.getAvatar(), 0, false, Long.MAX_VALUE, "");
    }

    @g
    public final List<UserModel> reverseMap(@g List<UserEntity> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        for (UserEntity userEntity : list) {
            UserModel reverseMap = reverseMap(userEntity);
            if (reverseMap != null) {
                arrayList.add(reverseMap);
            }
        }
        return arrayList;
    }

    @g
    public final ChatMember map(@g ChatMemberEntity chatMemberEntity) {
        Intrinsics.checkNotNullParameter(chatMemberEntity, "chatMemberEntity");
        UserModel reverseMap = reverseMap(chatMemberEntity.getContact());
        Intrinsics.checkNotNull(reverseMap);
        return new ChatMember(reverseMap, chatMemberEntity.getStatus(), chatMemberEntity.getRole());
    }

    @g
    public final UserEntity map(@g User user) {
        Intrinsics.checkNotNullParameter(user, "user");
        return new UserEntity(user.getId(), user.getName(), user.getAvatar(), 0, null, false, false, Long.valueOf(mapLastSeen(user.getLastSeen())), user.getBio(), 120, null);
    }

    @g
    public final List<PartialContactEntity> map(@g List<UserModel> list) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "list");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (UserModel userModel : list) {
            arrayList.add(map(userModel));
        }
        return arrayList;
    }
}
