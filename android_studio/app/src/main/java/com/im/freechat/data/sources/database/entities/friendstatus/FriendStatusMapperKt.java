package com.im.freechat.data.sources.database.entities.friendstatus;

import com.im.freechat.data.openapigen.models.FriendRequest;
import com.im.freechat.shared.entities.chat.Status;
import kotlin.Metadata;
import m8.g;
import m8.h;

/* compiled from: FriendStatusMapper.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002¨\u0006\u0003"}, d2 = {"toStatus", "Lcom/im/freechat/shared/entities/chat/Status;", "Lcom/im/freechat/data/openapigen/models/FriendRequest$Status;", "data_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public final class FriendStatusMapperKt {

    /* compiled from: FriendStatusMapper.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FriendRequest.Status.values().length];
            iArr[FriendRequest.Status.accepted.ordinal()] = 1;
            iArr[FriendRequest.Status.rejected.ordinal()] = 2;
            iArr[FriendRequest.Status.sent.ordinal()] = 3;
            iArr[FriendRequest.Status.received.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @g
    public static final Status toStatus(@h FriendRequest.Status status) {
        int i4 = status == null ? -1 : WhenMappings.$EnumSwitchMapping$0[status.ordinal()];
        if (i4 != 1) {
            if (i4 != 2) {
                if (i4 != 3) {
                    if (i4 != 4) {
                        return Status.NONE;
                    }
                    return Status.REQUEST_RECEIVED;
                }
                return Status.REQUEST_SENT;
            }
            return Status.REQUEST_REJECTED;
        }
        return Status.FRIEND;
    }
}
