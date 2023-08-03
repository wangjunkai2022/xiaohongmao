package com.im.freechat.data.sources.database.entities.friendstatus;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.im.freechat.data.openapigen.models.FriendRequest;
import com.im.freechat.data.openapigen.models.User;
import com.im.freechat.data.sources.database.entities.contact.UserEntityMapper;
import com.im.freechat.shared.entities.chat.FriendStatus;
import com.im.freechat.shared.entities.contact.UserModel;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import io.sentry.clientreport.e;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;

/* compiled from: FriendStatusMapper.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013¨\u0006\u0014"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusMapper;", "", "()V", "map", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;", "friendRequest", "Lcom/im/freechat/data/openapigen/models/FriendRequest;", TypedValues.Attributes.S_TARGET, "Lcom/im/freechat/data/openapigen/models/User;", "status", "Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;", e.b.f83079a, "", j.f47980a, "", "Lcom/im/freechat/shared/entities/chat/FriendStatus;", "userReleationStatus", "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;", "userEntityMapper", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntityMapper;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FriendStatusMapper {
    public static /* synthetic */ FriendStatusEntity map$default(FriendStatusMapper friendStatusMapper, User user, FriendRequest.Status status, String str, long j4, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            str = "";
        }
        String str2 = str;
        if ((i4 & 8) != 0) {
            j4 = 0;
        }
        return friendStatusMapper.map(user, status, str2, j4);
    }

    @g
    public final FriendStatusEntity map(@g FriendRequest friendRequest) {
        Intrinsics.checkNotNullParameter(friendRequest, "friendRequest");
        return map(friendRequest.getUser(), friendRequest.getStatus(), friendRequest.getMessage(), friendRequest.getSentAt());
    }

    @g
    public final FriendStatusEntity map(@g User target, @h FriendRequest.Status status, @h String str, long j4) {
        Intrinsics.checkNotNullParameter(target, "target");
        return new FriendStatusEntity(target.getId(), j4, str, FriendStatusMapperKt.toStatus(status));
    }

    @h
    public final FriendStatus map(@h UserRelationStatus userRelationStatus, @g UserEntityMapper userEntityMapper) {
        UserModel reverseMap;
        Intrinsics.checkNotNullParameter(userEntityMapper, "userEntityMapper");
        if (userRelationStatus == null || (reverseMap = userEntityMapper.reverseMap(userRelationStatus.getUser())) == null) {
            return null;
        }
        return new FriendStatus(reverseMap, userRelationStatus.getFriendStatus().getInvitedTime(), userRelationStatus.getFriendStatus().getReason(), userRelationStatus.getFriendStatus().getStatus());
    }
}
