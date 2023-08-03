package com.im.freechat.data.sources.database.entities.message;

import androidx.room.Dao;
import androidx.room.Query;
import androidx.room.Transaction;
import com.im.freechat.data.sources.database.entities.BaseDao;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;
import s2.d;

/* compiled from: MessageDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b:\u0010;J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\t\u0010\nJ1\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0097@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\nJ1\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u000b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H¥@ø\u0001\u0000¢\u0006\u0004\b\r\u0010\nJ+\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H¥@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\nJ#\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0012J!\u0010\u0017\u001a\u00020\b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH§@ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J+\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\u001e\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ$\u0010$\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020#0\u000b0\"2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\u0006H'J\u0016\u0010%\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010 \u001a\u00020\u0003H'J'\u0010'\u001a\b\u0012\u0004\u0012\u00020#0\u000b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH§@ø\u0001\u0000¢\u0006\u0004\b'\u0010\u0018J!\u0010)\u001a\b\u0012\u0004\u0012\u00020#0\u000b2\u0006\u0010(\u001a\u00020\u0019H§@ø\u0001\u0000¢\u0006\u0004\b)\u0010*J-\u0010.\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00062\b\b\u0002\u0010-\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b.\u0010/J\u001b\u00100\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b0\u0010\u0012J\"\u00102\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00101\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u0006H'J'\u00103\u001a\b\u0012\u0004\u0012\u00020#0\u000b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH§@ø\u0001\u0000¢\u0006\u0004\b3\u0010\u0018J'\u00104\u001a\b\u0012\u0004\u0012\u00020#0\u000b2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u000bH\u0086@ø\u0001\u0000¢\u0006\u0004\b4\u0010\u0018J+\u00105\u001a\u00020\b2\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0006H\u0097@ø\u0001\u0000¢\u0006\u0004\b5\u0010/J\u0013\u00106\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b6\u0010\u0014J\u001b\u00108\u001a\u00020\b2\u0006\u00107\u001a\u00020\u0006H§@ø\u0001\u0000¢\u0006\u0004\b8\u0010\u0012J\u0010\u00109\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010#0\"H'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006<"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "Lcom/im/freechat/data/sources/database/entities/BaseDao;", "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;", "", "currentUserId", k4.b.f84734a, "", "messageId", "", "readMyMessage", "(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "readOtherMessages", "getOtherUnreadMessages", "readOtherMessage", "getOthersUnreadMessageCount", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessageById", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getLastMessageId", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteById", "messageIds", "deleteByIds", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "content", "editedAt", "editById", "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteByChatId", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "id", "laterThan", "Lkotlinx/coroutines/flow/i;", "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;", "subscribeMessages", "subscribePinnedMessageByChatId", "ids", "getMessagesByIds", d.f93273b, "findMessagesByQuery", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "oldId", "newId", "sendTime", "setMessageIdUnsafe", "(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setMessageSending", "newContent", "modifyMessage", "getMessagesByMediaIds", "getMessagesToForward", "setMessageId", "resetSendings", "msgId", "setSendFailed", "subscribeLastReceivedMessage", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class MessageDao extends BaseDao<MessageEntity> {
    public static /* synthetic */ void modifyMessage$default(MessageDao messageDao, long j4, String str, long j10, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: modifyMessage");
        }
        if ((i4 & 4) != 0) {
            j10 = System.currentTimeMillis();
        }
        messageDao.modifyMessage(j4, str, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object readOtherMessages$suspendImpl(com.im.freechat.data.sources.database.entities.message.MessageDao r9, int r10, int r11, long r12, kotlin.coroutines.Continuation r14) {
        /*
            boolean r0 = r14 instanceof com.im.freechat.data.sources.database.entities.message.MessageDao$readOtherMessages$1
            if (r0 == 0) goto L13
            r0 = r14
            com.im.freechat.data.sources.database.entities.message.MessageDao$readOtherMessages$1 r0 = (com.im.freechat.data.sources.database.entities.message.MessageDao$readOtherMessages$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.message.MessageDao$readOtherMessages$1 r0 = new com.im.freechat.data.sources.database.entities.message.MessageDao$readOtherMessages$1
            r0.<init>(r9, r14)
        L18:
            r14 = r0
            java.lang.Object r0 = r14.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r14.label
            r8 = 2
            r2 = 1
            if (r1 == 0) goto L47
            if (r1 == r2) goto L39
            if (r1 != r8) goto L31
            java.lang.Object r9 = r14.L$0
            java.util.List r9 = (java.util.List) r9
            kotlin.ResultKt.throwOnFailure(r0)
            goto L6e
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r10)
            throw r9
        L39:
            long r12 = r14.J$0
            int r11 = r14.I$1
            int r10 = r14.I$0
            java.lang.Object r9 = r14.L$0
            com.im.freechat.data.sources.database.entities.message.MessageDao r9 = (com.im.freechat.data.sources.database.entities.message.MessageDao) r9
            kotlin.ResultKt.throwOnFailure(r0)
            goto L60
        L47:
            kotlin.ResultKt.throwOnFailure(r0)
            r14.L$0 = r9
            r14.I$0 = r10
            r14.I$1 = r11
            r14.J$0 = r12
            r14.label = r2
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = r12
            r6 = r14
            java.lang.Object r0 = r1.getOtherUnreadMessages(r2, r3, r4, r6)
            if (r0 != r7) goto L60
            return r7
        L60:
            java.util.List r0 = (java.util.List) r0
            r14.L$0 = r0
            r14.label = r8
            java.lang.Object r9 = r9.readOtherMessage(r10, r11, r12, r14)
            if (r9 != r7) goto L6d
            return r7
        L6d:
            r9 = r0
        L6e:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao.readOtherMessages$suspendImpl(com.im.freechat.data.sources.database.entities.message.MessageDao, int, int, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00e6  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object setMessageId$suspendImpl(com.im.freechat.data.sources.database.entities.message.MessageDao r15, long r16, long r18, long r20, kotlin.coroutines.Continuation r22) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao.setMessageId$suspendImpl(com.im.freechat.data.sources.database.entities.message.MessageDao, long, long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object setMessageIdUnsafe$default(MessageDao messageDao, long j4, long j10, long j11, Continuation continuation, int i4, Object obj) {
        if (obj == null) {
            return messageDao.setMessageIdUnsafe(j4, j10, (i4 & 4) != 0 ? System.currentTimeMillis() : j11, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setMessageIdUnsafe");
    }

    @Query("DELETE FROM message WHERE parent_chat_id = :chatId")
    @h
    public abstract Object deleteByChatId(int i4, @g Continuation<? super Unit> continuation);

    @Query("DELETE FROM message WHERE message_id = :messageId")
    @h
    public abstract Object deleteById(long j4, @g Continuation<? super Unit> continuation);

    @Query("DELETE FROM message WHERE message_id IN (:messageIds)")
    @h
    public abstract Object deleteByIds(@g List<Long> list, @g Continuation<? super Unit> continuation);

    @Query("UPDATE message SET content = :content, edit_time = :editedAt WHERE message_id = :messageId")
    @h
    public abstract Object editById(long j4, @g String str, long j10, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM message\n                    LEFT JOIN chat ON message.parent_chat_id = chat.chat_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    WHERE message.content LIKE '%' || :query || '%'\n    ")
    @h
    @Transaction
    public abstract Object findMessagesByQuery(@g String str, @g Continuation<? super List<FullMessageEntity>> continuation);

    @Query("SELECT MAX(message_id) FROM message")
    @h
    public abstract Object getLastMessageId(@g Continuation<? super Long> continuation);

    @Query("SELECT * FROM message WHERE message_id = :messageId")
    @h
    public abstract Object getMessageById(long j4, @g Continuation<? super MessageEntity> continuation);

    @Query("SELECT * FROM message \n                    LEFT JOIN user ON message.sender_id = user.user_id \n                    WHERE message_id IN (:ids)")
    @h
    public abstract Object getMessagesByIds(@g List<Long> list, @g Continuation<? super List<FullMessageEntity>> continuation);

    @Query("SELECT * FROM message \n                    LEFT JOIN attachment ON attachment.parent_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id \n                    WHERE message_id IN (:ids) OR media_id IN (:ids)")
    @h
    public abstract Object getMessagesByMediaIds(@g List<Long> list, @g Continuation<? super List<FullMessageEntity>> continuation);

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object getMessagesToForward(@m8.g java.util.List<java.lang.Long> r11, @m8.g kotlin.coroutines.Continuation<? super java.util.List<com.im.freechat.data.sources.database.entities.message.FullMessageEntity>> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.im.freechat.data.sources.database.entities.message.MessageDao$getMessagesToForward$1
            if (r0 == 0) goto L13
            r0 = r12
            com.im.freechat.data.sources.database.entities.message.MessageDao$getMessagesToForward$1 r0 = (com.im.freechat.data.sources.database.entities.message.MessageDao$getMessagesToForward$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.message.MessageDao$getMessagesToForward$1 r0 = new com.im.freechat.data.sources.database.entities.message.MessageDao$getMessagesToForward$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r11 = r0.L$0
            java.util.List r11 = (java.util.List) r11
            kotlin.ResultKt.throwOnFailure(r12)
            goto L43
        L2d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L35:
            kotlin.ResultKt.throwOnFailure(r12)
            r0.L$0 = r11
            r0.label = r3
            java.lang.Object r12 = r10.getMessagesByMediaIds(r11, r0)
            if (r12 != r1) goto L43
            return r1
        L43:
            java.lang.Iterable r12 = (java.lang.Iterable) r12
            java.util.HashSet r0 = new java.util.HashSet
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r12 = r12.iterator()
        L53:
            boolean r2 = r12.hasNext()
            if (r2 == 0) goto L76
            java.lang.Object r2 = r12.next()
            r3 = r2
            com.im.freechat.data.sources.database.entities.message.FullMessageEntity r3 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r3
            com.im.freechat.data.sources.database.entities.message.MessageEntity r3 = r3.getMessageEntity()
            long r3 = r3.getMessageId()
            java.lang.Long r3 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r3)
            boolean r3 = r0.add(r3)
            if (r3 == 0) goto L53
            r1.add(r2)
            goto L53
        L76:
            java.util.ArrayList r12 = new java.util.ArrayList
            r0 = 10
            int r0 = kotlin.collections.CollectionsKt.collectionSizeOrDefault(r1, r0)
            r12.<init>(r0)
            java.util.Iterator r0 = r1.iterator()
        L85:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lcb
            java.lang.Object r1 = r0.next()
            r2 = r1
            com.im.freechat.data.sources.database.entities.message.FullMessageEntity r2 = (com.im.freechat.data.sources.database.entities.message.FullMessageEntity) r2
            r3 = 0
            r4 = 0
            r5 = 0
            java.util.List r1 = r2.getAttachments()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.Iterator r1 = r1.iterator()
        La2:
            boolean r7 = r1.hasNext()
            if (r7 == 0) goto Lc1
            java.lang.Object r7 = r1.next()
            r8 = r7
            com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r8 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity) r8
            long r8 = r8.getMediaId()
            java.lang.Long r8 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r8)
            boolean r8 = r11.contains(r8)
            if (r8 == 0) goto La2
            r6.add(r7)
            goto La2
        Lc1:
            r7 = 7
            r8 = 0
            com.im.freechat.data.sources.database.entities.message.FullMessageEntity r1 = com.im.freechat.data.sources.database.entities.message.FullMessageEntity.copy$default(r2, r3, r4, r5, r6, r7, r8)
            r12.add(r1)
            goto L85
        Lcb:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao.getMessagesToForward(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Query("SELECT message_id FROM message WHERE (sender_id != :currentUserId) AND parent_chat_id = :chatId AND message_id <= :messageId AND status = 1")
    @h
    protected abstract Object getOtherUnreadMessages(int i4, int i10, long j4, @g Continuation<? super List<Long>> continuation);

    @Query("SELECT COUNT(message_id) FROM message WHERE parent_chat_id = :chatId AND sender_id != :currentUserId AND status = 1")
    @h
    public abstract Object getOthersUnreadMessageCount(int i4, int i10, @g Continuation<? super Integer> continuation);

    @Query("UPDATE message SET content = :newContent, edit_time = :editedAt WHERE message_id = :messageId")
    public abstract void modifyMessage(long j4, @g String str, long j10);

    @Query("UPDATE message SET status = 2 WHERE sender_id = :currentUserId AND parent_chat_id = :chatId AND message_id <= :messageId AND status > 0")
    @h
    public abstract Object readMyMessage(int i4, int i10, long j4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE message SET status = 2 WHERE (sender_id != :currentUserId) AND parent_chat_id = :chatId AND message_id <= :messageId")
    @h
    protected abstract Object readOtherMessage(int i4, int i10, long j4, @g Continuation<? super Unit> continuation);

    @h
    @Transaction
    public Object readOtherMessages(int i4, int i10, long j4, @g Continuation<? super List<Long>> continuation) {
        return readOtherMessages$suspendImpl(this, i4, i10, j4, continuation);
    }

    @Query("UPDATE message SET status = -1 WHERE status = 0")
    @h
    public abstract Object resetSendings(@g Continuation<? super Unit> continuation);

    @h
    @Transaction
    public Object setMessageId(long j4, long j10, long j11, @g Continuation<? super Unit> continuation) {
        return setMessageId$suspendImpl(this, j4, j10, j11, continuation);
    }

    @Query("UPDATE message SET message_id = :newId, status = 1, send_time = :sendTime WHERE message_id = :oldId")
    @h
    public abstract Object setMessageIdUnsafe(long j4, long j10, long j11, @g Continuation<? super Unit> continuation);

    @Query("UPDATE message SET status = 0 WHERE message_id = :id")
    @h
    public abstract Object setMessageSending(long j4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE message SET status = -1 WHERE message_id = :msgId")
    @h
    public abstract Object setSendFailed(long j4, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM full_message ORDER BY send_time DESC LIMIT 1")
    @g
    public abstract i<FullMessageEntity> subscribeLastReceivedMessage();

    @Query("SELECT * FROM full_message WHERE parent_chat_id = :id AND send_time > :laterThan ORDER BY message_id DESC")
    @g
    public abstract i<List<FullMessageEntity>> subscribeMessages(int i4, long j4);

    @Query("SELECT * FROM full_message WHERE message_id = (SELECT pinned_message_id FROM chat WHERE chat_id = :id)")
    @g
    public abstract i<FullMessageEntity> subscribePinnedMessageByChatId(int i4);
}
