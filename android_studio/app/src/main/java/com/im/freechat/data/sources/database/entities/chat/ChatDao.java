package com.im.freechat.data.sources.database.entities.chat;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import com.im.freechat.data.sources.database.entities.BaseDao;
import com.im.freechat.shared.entities.chat.Chat;
import com.qennnsad.aknkaksd.domain.usecase.anchor.j;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: ChatDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0010\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\bH\u0010IJ\u0019\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J)\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00070\u00032\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ\u0014\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u000bH'J\u0018\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u000b2\u0006\u0010\r\u001a\u00020\u0007H'J\u001d\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0012\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\u0011\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0010J#\u0010\u0016\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u0013H§@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00132\b\u0010\u001a\u001a\u0004\u0018\u00010\u0007H§@ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cJ\u0018\u0010\u001d\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H'J\u001c\u0010\u001e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u000b2\u0006\u0010\u001a\u001a\u00020\u0007H'J%\u0010!\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001fH§@ø\u0001\u0000¢\u0006\u0004\b!\u0010\"J#\u0010%\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010$\u001a\u00020#H§@ø\u0001\u0000¢\u0006\u0004\b%\u0010&J#\u0010(\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010'\u001a\u00020#H§@ø\u0001\u0000¢\u0006\u0004\b(\u0010&J#\u0010*\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u001fH§@ø\u0001\u0000¢\u0006\u0004\b*\u0010\"J#\u0010,\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010+\u001a\u00020\u001fH§@ø\u0001\u0000¢\u0006\u0004\b,\u0010\"J%\u0010.\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010\u0013H§@ø\u0001\u0000¢\u0006\u0004\b.\u0010/J%\u00101\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\b\u00100\u001a\u0004\u0018\u00010\u0013H§@ø\u0001\u0000¢\u0006\u0004\b1\u0010/J\u001b\u00102\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b2\u0010\u0010J\u001b\u00103\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0010J!\u00105\u001a\u00020\u00152\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b5\u0010\nJ\u0019\u00106\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H§@ø\u0001\u0000¢\u0006\u0004\b6\u0010\u0006J!\u00107\u001a\u00020\u00152\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00070\u0003H§@ø\u0001\u0000¢\u0006\u0004\b7\u0010\nJ\u001b\u00108\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\b8\u0010\u0010J'\u00109\u001a\b\u0012\u0004\u0012\u00020\u00130\u00032\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00130\u0003H§@ø\u0001\u0000¢\u0006\u0004\b9\u0010\nJ!\u0010<\u001a\u00020\u00152\f\u0010;\u001a\b\u0012\u0004\u0012\u00020:0\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b<\u0010\nJ\u001b\u0010>\u001a\u00020\u00152\u0006\u0010=\u001a\u00020:H\u0086@ø\u0001\u0000¢\u0006\u0004\b>\u0010?J\u001b\u0010@\u001a\u00020\u00132\u0006\u0010=\u001a\u00020:H§@ø\u0001\u0000¢\u0006\u0004\b@\u0010?J\u001b\u0010A\u001a\u00020\u00152\u0006\u0010=\u001a\u00020:H§@ø\u0001\u0000¢\u0006\u0004\bA\u0010?J#\u0010C\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\bC\u0010DJ\u001b\u0010E\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\bE\u0010\u0010J\u0010\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000bH'J\u0015\u0010G\u001a\u0004\u0018\u00010\u0013H§@ø\u0001\u0000¢\u0006\u0004\bG\u0010\u0006J\u001d\u0010G\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0018\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0004\bG\u0010\u0010\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006J"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "Lcom/im/freechat/data/sources/database/entities/BaseDao;", "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;", "", "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;", "getAllChats", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "nonPredefinedTypes", "getNonPredefinedChatIds", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "subscribeChats", "id", "subscribeChat", "getChatById", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "type", "getServiceChatId", "", j.f47980a, "", "pinChatWithTime", "(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", k4.b.f84734a, "messageId", "userId", "pinMessage", "(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "listenSingleChatForUserId", "listenCommonGroupsForUserId", "", "draft", "updateDraftMessage", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "isPublic", "updatePublicState", "(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "show", "updateShowHistoryToNewMembers", MessageBundle.TITLE_ENTRY, "updateTitle", "avatar", "updateAvatar", "lastMessageId", "updateLastMessageId", "(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lastSyncMessageId", "updateLastSyncMessageId", "unpinChat", "deleteChatById", "ids", "deleteChatsNotInList", "getAllChatIds", "deleteChatsByIds", "getChatByIdWithContacts", "checkLastMessages", "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;", "list", "insertOrUpdatePartial", "value", "insertOrUpdate", "(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "updatePartial", "unreadCount", "updateUnreadCount", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "increaseUnreadCount", "listenTotalUnreadCount", "getLastSyncMessageId", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public abstract class ChatDao extends BaseDao<ChatEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0076  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object deleteChatsNotInList$suspendImpl(com.im.freechat.data.sources.database.entities.chat.ChatDao r6, java.util.List r7, kotlin.coroutines.Continuation r8) {
        /*
            boolean r0 = r8 instanceof com.im.freechat.data.sources.database.entities.chat.ChatDao$deleteChatsNotInList$1
            if (r0 == 0) goto L13
            r0 = r8
            com.im.freechat.data.sources.database.entities.chat.ChatDao$deleteChatsNotInList$1 r0 = (com.im.freechat.data.sources.database.entities.chat.ChatDao$deleteChatsNotInList$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.chat.ChatDao$deleteChatsNotInList$1 r0 = new com.im.freechat.data.sources.database.entities.chat.ChatDao$deleteChatsNotInList$1
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
            com.im.freechat.data.sources.database.entities.chat.ChatDao r7 = (com.im.freechat.data.sources.database.entities.chat.ChatDao) r7
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
            com.im.freechat.data.sources.database.entities.chat.ChatDao r6 = (com.im.freechat.data.sources.database.entities.chat.ChatDao) r6
            kotlin.ResultKt.throwOnFailure(r8)
            goto L59
        L49:
            kotlin.ResultKt.throwOnFailure(r8)
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r6.getAllChatIds(r0)
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
            java.lang.Object r8 = r7.deleteChatsByIds(r8, r0)
            if (r8 != r1) goto L70
            return r1
        L89:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao.deleteChatsNotInList$suspendImpl(com.im.freechat.data.sources.database.entities.chat.ChatDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object getNonPredefinedChatIds$default(ChatDao chatDao, List list, Continuation continuation, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                list = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(Chat.Type.SINGLE.getValue()), Integer.valueOf(Chat.Type.GROUP.getValue())});
            }
            return chatDao.getNonPredefinedChatIds(list, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getNonPredefinedChatIds");
    }

    public static /* synthetic */ Object getServiceChatId$default(ChatDao chatDao, int i4, Continuation continuation, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                i4 = Chat.Type.SERVICE.getValue();
            }
            return chatDao.getServiceChatId(i4, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getServiceChatId");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdatePartial$suspendImpl(com.im.freechat.data.sources.database.entities.chat.ChatDao r5, java.util.List r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdatePartial$1
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdatePartial$1 r0 = (com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdatePartial$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdatePartial$1 r0 = new com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdatePartial$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r5 = r0.L$1
            java.util.Iterator r5 = (java.util.Iterator) r5
            java.lang.Object r6 = r0.L$0
            com.im.freechat.data.sources.database.entities.chat.ChatDao r6 = (com.im.freechat.data.sources.database.entities.chat.ChatDao) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L43
        L31:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L39:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.Iterator r6 = r6.iterator()
            r4 = r6
            r6 = r5
            r5 = r4
        L43:
            boolean r7 = r5.hasNext()
            if (r7 == 0) goto L5c
            java.lang.Object r7 = r5.next()
            com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity r7 = (com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity) r7
            r0.L$0 = r6
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = r6.insertOrUpdate(r7, r0)
            if (r7 != r1) goto L43
            return r1
        L5c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao.insertOrUpdatePartial$suspendImpl(com.im.freechat.data.sources.database.entities.chat.ChatDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Query("SELECT chat_id FROM chat WHERE last_message_id IN (:ids)")
    @h
    public abstract Object checkLastMessages(@g List<Long> list, @g Continuation<? super List<Long>> continuation);

    @Query("DELETE FROM chat WHERE chat_id = :id")
    @h
    public abstract Object deleteChatById(int i4, @g Continuation<? super Unit> continuation);

    @Query("DELETE FROM chat WHERE chat_id IN (:ids)")
    @h
    public abstract Object deleteChatsByIds(@g List<Integer> list, @g Continuation<? super Unit> continuation);

    @h
    @Transaction
    public Object deleteChatsNotInList(@g List<Integer> list, @g Continuation<? super Unit> continuation) {
        return deleteChatsNotInList$suspendImpl(this, list, continuation);
    }

    @Query("SELECT chat_id FROM chat")
    @h
    public abstract Object getAllChatIds(@g Continuation<? super List<Integer>> continuation);

    @Query("SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id")
    @h
    @Transaction
    public abstract Object getAllChats(@g Continuation<? super List<ChatWithContacts>> continuation);

    @Query("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id")
    @h
    public abstract Object getChatById(int i4, @g Continuation<? super ChatWithContacts> continuation);

    @Query("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id")
    @h
    @Transaction
    public abstract Object getChatByIdWithContacts(int i4, @g Continuation<? super ChatWithContacts> continuation);

    @Query("SELECT last_sync_message_id FROM chat WHERE chat_id = :chatId")
    @h
    public abstract Object getLastSyncMessageId(int i4, @g Continuation<? super Long> continuation);

    @Query("SELECT MAX(last_sync_message_id) FROM chat")
    @h
    public abstract Object getLastSyncMessageId(@g Continuation<? super Long> continuation);

    @Query("SELECT chat.chat_id FROM chat WHERE type in (:nonPredefinedTypes)")
    @h
    public abstract Object getNonPredefinedChatIds(@g List<Integer> list, @g Continuation<? super List<Integer>> continuation);

    @Query("SELECT chat.chat_id FROM chat WHERE type = :type")
    @h
    public abstract Object getServiceChatId(int i4, @g Continuation<? super Integer> continuation);

    @Query("UPDATE chat SET unread_count = unread_count + 1 WHERE chat_id = :id")
    @h
    public abstract Object increaseUnreadCount(int i4, @g Continuation<? super Unit> continuation);

    @Insert(entity = ChatEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g PartialChatUpdateEntity partialChatUpdateEntity, @g Continuation<? super Long> continuation);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x006e  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object insertOrUpdate(@m8.g com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity r9, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdate$1
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdate$1 r0 = (com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdate$1 r0 = new com.im.freechat.data.sources.database.entities.chat.ChatDao$insertOrUpdate$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L2c:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L34:
            java.lang.Object r9 = r0.L$1
            com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity r9 = (com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity) r9
            java.lang.Object r2 = r0.L$0
            com.im.freechat.data.sources.database.entities.chat.ChatDao r2 = (com.im.freechat.data.sources.database.entities.chat.ChatDao) r2
            kotlin.ResultKt.throwOnFailure(r10)
            goto L51
        L40:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = r8.insert(r9, r0)
            if (r10 != r1) goto L50
            return r1
        L50:
            r2 = r8
        L51:
            java.lang.Number r10 = (java.lang.Number) r10
            long r4 = r10.longValue()
            r6 = -1
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 != 0) goto L6e
            r10 = 0
            r0.L$0 = r10
            r0.L$1 = r10
            r0.label = r3
            java.lang.Object r9 = r2.updatePartial(r9, r0)
            if (r9 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        L6e:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao.insertOrUpdate(com.im.freechat.data.sources.database.entities.chat.PartialChatUpdateEntity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @h
    @Transaction
    public Object insertOrUpdatePartial(@g List<PartialChatUpdateEntity> list, @g Continuation<? super Unit> continuation) {
        return insertOrUpdatePartial$suspendImpl(this, list, continuation);
    }

    @Query("SELECT chat.*, message.*  FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id INNER JOIN member ON chat.chat_id = member.chat_id WHERE user_id = :userId AND type = 2 ")
    @g
    public abstract i<List<ChatWithContacts>> listenCommonGroupsForUserId(int i4);

    @Query("SELECT chat_id FROM chat WHERE chat_id = :userId")
    @g
    public abstract i<Integer> listenSingleChatForUserId(int i4);

    @Query("SELECT SUM(unread_count) from chat")
    @g
    public abstract i<Integer> listenTotalUnreadCount();

    @Query("UPDATE chat SET pinned_time = :time WHERE chat_id = :id")
    @h
    public abstract Object pinChatWithTime(int i4, long j4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET pinned_message_id = :messageId, pinned_user_id = :userId WHERE chat_id = :chatId")
    @h
    public abstract Object pinMessage(int i4, @h Long l10, @h Integer num, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = :id")
    @g
    @Transaction
    public abstract i<ChatWithContacts> subscribeChat(int i4);

    @Query("SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    LEFT JOIN (SELECT send_time as last_time, message_id as last_time_msg_id FROM message) ON chat.last_message_id = last_time_msg_id")
    @g
    @Transaction
    public abstract i<List<ChatWithContacts>> subscribeChats();

    @Query("UPDATE chat SET pinned_time = NULL WHERE chat_id = :id")
    @h
    public abstract Object unpinChat(int i4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET avatar = :avatar WHERE chat_id = :id")
    @h
    public abstract Object updateAvatar(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET draft_message = :draft WHERE chat_id = :id")
    @h
    public abstract Object updateDraftMessage(int i4, @h String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET last_message_id = :lastMessageId, last_sync_message_id = :lastMessageId WHERE chat_id = :id")
    @h
    public abstract Object updateLastMessageId(int i4, @h Long l10, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET last_sync_message_id = :lastSyncMessageId WHERE chat_id = :id")
    @h
    public abstract Object updateLastSyncMessageId(int i4, @h Long l10, @g Continuation<? super Unit> continuation);

    @Update(entity = ChatEntity.class)
    @h
    public abstract Object updatePartial(@g PartialChatUpdateEntity partialChatUpdateEntity, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET is_public = :isPublic WHERE chat_id = :id")
    @h
    public abstract Object updatePublicState(int i4, boolean z9, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET history_new_member = :show WHERE chat_id = :id")
    @h
    public abstract Object updateShowHistoryToNewMembers(int i4, boolean z9, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET title = :title WHERE chat_id = :id")
    @h
    public abstract Object updateTitle(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE chat SET unread_count = :unreadCount WHERE chat_id = :id")
    @h
    public abstract Object updateUnreadCount(int i4, int i10, @g Continuation<? super Unit> continuation);
}
