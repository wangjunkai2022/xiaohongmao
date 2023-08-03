package com.im.freechat.data.sources.database.entities.friendstatus;

import androidx.room.Dao;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import com.im.freechat.data.sources.database.entities.BaseDao;
import com.im.freechat.shared.entities.chat.Status;
import io.sentry.e3;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: FriendStatusDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0010\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\"\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00030\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H'J\u001b\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\tH§@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000f\u001a\u00020\tH'J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\tH'J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0002H'J!\u0010\u0015\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u0019\u001a\u00020\f2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\t0\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "Lcom/im/freechat/data/sources/database/entities/BaseDao;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;", "", "Lcom/im/freechat/shared/entities/chat/Status;", "statuses", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;", "getAllWithStatus", "", "listenCountWithStatus", "userId", "", "deleteByUserId", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "targetUserId", "getChatRequestByTargetId", "getByUserId", e3.b.f83149d, "updateChatRequest", "relevantIds", "deleteIrrelevantChatRequests", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAllRequestsIds", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteChatRequestsByIds", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public abstract class FriendStatusDao extends BaseDao<FriendStatusEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object deleteIrrelevantChatRequests$suspendImpl(com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao r6, java.util.List r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao$deleteIrrelevantChatRequests$1
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao$deleteIrrelevantChatRequests$1 r0 = (com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao$deleteIrrelevantChatRequests$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao$deleteIrrelevantChatRequests$1 r0 = new com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao$deleteIrrelevantChatRequests$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L49
            if (r2 == r4) goto L3c
            if (r2 != r3) goto L34
            java.lang.Object r6 = r0.L$1
            java.util.Iterator r6 = (java.util.Iterator) r6
            java.lang.Object r7 = r0.L$0
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao r7 = (com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao) r7
            kotlin.ResultKt.throwOnFailure(r8)
            goto L70
        L34:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3c:
            java.lang.Object r6 = r0.L$1
            r7 = r6
            java.util.List r7 = (java.util.List) r7
            java.lang.Object r6 = r0.L$0
            com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao r6 = (com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao) r6
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.getAllRequestsIds(r0)
            if (r8 != r1) goto L59
            return r1
        L59:
            java.lang.Iterable r8 = (java.lang.Iterable) r8
            java.util.Set r7 = kotlin.collections.CollectionsKt.toSet(r7)
            java.util.List r7 = kotlin.collections.CollectionsKt.minus(r8, r7)
            r8 = 900(0x384, float:1.261E-42)
            java.util.List r7 = kotlin.collections.CollectionsKt.chunked(r7, r8)
            java.util.Iterator r7 = r7.iterator()
            r5 = r7
            r7 = r6
            r6 = r5
        L70:
            boolean r8 = r6.hasNext()
            if (r8 == 0) goto L89
            java.lang.Object r8 = r6.next()
            java.util.List r8 = (java.util.List) r8
            r0.L$0 = r7
            r0.L$1 = r6
            r0.label = r3
            java.lang.Object r8 = r7.deleteChatRequestsByIds(r8, r0)
            if (r8 != r1) goto L70
            return r1
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao.deleteIrrelevantChatRequests$suspendImpl(com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Query("DELETE FROM friend_status WHERE target_user_id = :userId")
    @h
    public abstract Object deleteByUserId(int i4, @g Continuation<? super Unit> continuation);

    @Query("DELETE FROM friend_status WHERE target_user_id IN (:relevantIds)")
    @h
    public abstract Object deleteChatRequestsByIds(@g List<Integer> list, @g Continuation<? super Unit> continuation);

    @h
    @Transaction
    public Object deleteIrrelevantChatRequests(@g List<Integer> list, @g Continuation<? super Unit> continuation) {
        return deleteIrrelevantChatRequests$suspendImpl(this, list, continuation);
    }

    @Query("SELECT target_user_id FROM friend_status")
    @h
    public abstract Object getAllRequestsIds(@g Continuation<? super List<Integer>> continuation);

    @Query("SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE status IN (:statuses)")
    @g
    public abstract i<List<UserRelationStatus>> getAllWithStatus(@g List<? extends Status> list);

    @Query("SELECT * FROM friend_status WHERE target_user_id = :targetUserId LIMIT 1")
    @h
    public abstract FriendStatusEntity getByUserId(int i4);

    @Query("SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE target_user_id = :targetUserId LIMIT 1")
    @g
    public abstract i<UserRelationStatus> getChatRequestByTargetId(int i4);

    @Query("SELECT COUNT(target_user_id) FROM friend_status WHERE status IN (:statuses)")
    @g
    public abstract i<Integer> listenCountWithStatus(@g List<? extends Status> list);

    @Update
    public abstract void updateChatRequest(@g FriendStatusEntity friendStatusEntity);
}
