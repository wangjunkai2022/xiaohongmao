package com.im.freechat.data.sources.database.entities.contact;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.ui.chat.userprofile.j;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: UserDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\b'\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b6\u00107J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H'J\u0013\u0010\u0006\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001d\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\t\u001a\u00020\bH§@ø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\b\u0010\u000f\u001a\u0004\u0018\u00010\bH§@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u000e\u001a\u00020\rH'J'\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\r0\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J#\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0018H§@ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ#\u0010\u001d\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u0018H§@ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001bJ\u001b\u0010\u001e\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0013J!\u0010!\u001a\u00020\n2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b!\u0010\u0017J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b#\u0010$J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0004\b#\u0010%J!\u0010&\u001a\u00020\n2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b&\u0010\u0017J!\u0010#\u001a\u00020\n2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020'0\u0003H\u0097@ø\u0001\u0000¢\u0006\u0004\b#\u0010\u0017J\u001b\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020'H\u0096@ø\u0001\u0000¢\u0006\u0004\b#\u0010(J\u001b\u0010)\u001a\u00020\b2\u0006\u0010\"\u001a\u00020'H§@ø\u0001\u0000¢\u0006\u0004\b)\u0010(J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020'H§@ø\u0001\u0000¢\u0006\u0004\b*\u0010(J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u001fH§@ø\u0001\u0000¢\u0006\u0004\b*\u0010%J\u001b\u0010*\u001a\u00020\n2\u0006\u0010\"\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b*\u0010$J\u001b\u0010)\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u001fH§@ø\u0001\u0000¢\u0006\u0004\b)\u0010%J\u001b\u0010)\u001a\u00020\b2\u0006\u0010\"\u001a\u00020\u0004H§@ø\u0001\u0000¢\u0006\u0004\b)\u0010$J\u001b\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b,\u0010\u0013J\u001b\u0010-\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b-\u0010\u0013J\u001b\u0010.\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b.\u0010\u0013J\u001b\u0010/\u001a\u00020\n2\u0006\u0010+\u001a\u00020\rH§@ø\u0001\u0000¢\u0006\u0004\b/\u0010\u0013J#\u00101\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00100\u001a\u00020\u0018H§@ø\u0001\u0000¢\u0006\u0004\b1\u0010\u001bJ#\u00103\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00102\u001a\u00020\u0018H§@ø\u0001\u0000¢\u0006\u0004\b3\u0010\u001bJ#\u00105\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u00104\u001a\u00020\u0018H§@ø\u0001\u0000¢\u0006\u0004\b5\u0010\u001b\u0082\u0002\u0004\n\u0002\b\u0019¨\u00068"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "", "Lkotlinx/coroutines/flow/i;", "", "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;", "listenAllContacts", "getCurrentUser", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "last", "", "updateOnlineStatus", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "userId", "lastOnline", "updateOnlineStatusByUserId", "(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getContact", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "subscribeContact", "userIds", "getContacts", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "userMask", "updateUserMask", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "userName", "updateUserName", "removeContact", "Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;", "list", "synchronizeDatabase", "value", "insertOrUpdate", "(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "(Lcom/im/freechat/data/sources/database/entities/contact/PartialContactEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertOrUpdateAll", "Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;", "(Lcom/im/freechat/data/sources/database/entities/contact/MemberContact;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insert", "update", j.f43244a, "blockContact", "unblockContact", "followContact", "unfollowContact", ContactResponseMapperKt.BIO, "setBio", "avatarUrl", "setAvatar", "nickname", "setNickname", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public abstract class UserDao {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r8, com.im.freechat.data.sources.database.entities.contact.UserEntity r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$1
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$1 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$1 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$1
            r9 = r8
            com.im.freechat.data.sources.database.entities.contact.UserEntity r9 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r9
            java.lang.Object r8 = r0.L$0
            com.im.freechat.data.sources.database.entities.contact.UserDao r8 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L51
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = r8.insert(r9, r0)
            if (r10 != r1) goto L51
            return r1
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
            java.lang.Object r8 = r8.update(r9, r0)
            if (r8 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, com.im.freechat.data.sources.database.entities.contact.UserEntity, kotlin.coroutines.Continuation):java.lang.Object");
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
    public static /* synthetic */ java.lang.Object insertOrUpdateAll$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r5, java.util.List r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdateAll$1
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdateAll$1 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdateAll$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdateAll$1 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdateAll$1
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
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r6
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
            com.im.freechat.data.sources.database.entities.contact.UserEntity r7 = (com.im.freechat.data.sources.database.entities.contact.UserEntity) r7
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.insertOrUpdateAll$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
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
    public static /* synthetic */ java.lang.Object synchronizeDatabase$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r5, java.util.List r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$synchronizeDatabase$1
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.sources.database.entities.contact.UserDao$synchronizeDatabase$1 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$synchronizeDatabase$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$synchronizeDatabase$1 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$synchronizeDatabase$1
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
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r6
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
            com.im.freechat.data.sources.database.entities.contact.PartialContactEntity r7 = (com.im.freechat.data.sources.database.entities.contact.PartialContactEntity) r7
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.synchronizeDatabase$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public static /* synthetic */ Object updateOnlineStatus$default(UserDao userDao, long j4, Continuation continuation, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                j4 = System.currentTimeMillis();
            }
            return userDao.updateOnlineStatus(j4, continuation);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateOnlineStatus");
    }

    @Query("UPDATE user SET user_id = :contactId WHERE user_id=:contactId")
    @h
    public abstract Object blockContact(int i4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET user_id = :contactId WHERE user_id=:contactId")
    @h
    public abstract Object followContact(int i4, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM user WHERE user_id = :userId")
    @h
    public abstract Object getContact(int i4, @g Continuation<? super UserEntity> continuation);

    @Query("SELECT * FROM user WHERE user_id IN (:userIds)")
    @h
    public abstract Object getContacts(@g List<Integer> list, @g Continuation<? super List<UserEntity>> continuation);

    @Query("SELECT * FROM user WHERE is_current = 1")
    @h
    public abstract Object getCurrentUser(@g Continuation<? super UserEntity> continuation);

    @Insert(entity = UserEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g MemberContact memberContact, @g Continuation<? super Long> continuation);

    @Insert(entity = UserEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g PartialContactEntity partialContactEntity, @g Continuation<? super Long> continuation);

    @Insert(entity = UserEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g UserEntity userEntity, @g Continuation<? super Long> continuation);

    @h
    public Object insertOrUpdate(@g MemberContact memberContact, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, memberContact, continuation);
    }

    @h
    public Object insertOrUpdate(@g PartialContactEntity partialContactEntity, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, partialContactEntity, continuation);
    }

    @h
    public Object insertOrUpdate(@g UserEntity userEntity, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, userEntity, continuation);
    }

    @h
    @Transaction
    public Object insertOrUpdate(@g List<MemberContact> list, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, list, continuation);
    }

    @h
    @Transaction
    public Object insertOrUpdateAll(@g List<UserEntity> list, @g Continuation<? super Unit> continuation) {
        return insertOrUpdateAll$suspendImpl(this, list, continuation);
    }

    @Query("SELECT * FROM user")
    @g
    public abstract i<List<UserEntity>> listenAllContacts();

    @Query("DELETE FROM user WHERE user_id = :userId")
    @h
    public abstract Object removeContact(int i4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET avatar_url = :avatarUrl WHERE user_id=:userId")
    @h
    public abstract Object setAvatar(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET bio = :bio WHERE user_id=:userId")
    @h
    public abstract Object setBio(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET nickname = :nickname WHERE user_id=:userId")
    @h
    public abstract Object setNickname(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM user WHERE user_id = :userId")
    @g
    public abstract i<UserEntity> subscribeContact(int i4);

    @h
    @Transaction
    public Object synchronizeDatabase(@g List<PartialContactEntity> list, @g Continuation<? super Unit> continuation) {
        return synchronizeDatabase$suspendImpl(this, list, continuation);
    }

    @Query("UPDATE user SET user_id = :contactId WHERE user_id=:contactId")
    @h
    public abstract Object unblockContact(int i4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET user_id = :contactId WHERE user_id=:contactId")
    @h
    public abstract Object unfollowContact(int i4, @g Continuation<? super Unit> continuation);

    @Update(entity = UserEntity.class)
    @h
    public abstract Object update(@g MemberContact memberContact, @g Continuation<? super Unit> continuation);

    @Update(entity = UserEntity.class)
    @h
    public abstract Object update(@g PartialContactEntity partialContactEntity, @g Continuation<? super Unit> continuation);

    @Update(entity = UserEntity.class)
    @h
    public abstract Object update(@g UserEntity userEntity, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET last_online = :last WHERE is_current = 1")
    @h
    public abstract Object updateOnlineStatus(long j4, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET last_online = :lastOnline WHERE user_id = :userId")
    @h
    public abstract Object updateOnlineStatusByUserId(int i4, @h Long l10, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET user_name_mask=:userMask WHERE user_id = :userId")
    @h
    public abstract Object updateUserMask(int i4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE user SET nickname=:userName WHERE user_id = :userId")
    @h
    public abstract Object updateUserName(int i4, @g String str, @g Continuation<? super Unit> continuation);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r8, com.im.freechat.data.sources.database.entities.contact.PartialContactEntity r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$2
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$2 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$2 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$2
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$1
            r9 = r8
            com.im.freechat.data.sources.database.entities.contact.PartialContactEntity r9 = (com.im.freechat.data.sources.database.entities.contact.PartialContactEntity) r9
            java.lang.Object r8 = r0.L$0
            com.im.freechat.data.sources.database.entities.contact.UserDao r8 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L51
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = r8.insert(r9, r0)
            if (r10 != r1) goto L51
            return r1
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
            java.lang.Object r8 = r8.update(r9, r0)
            if (r8 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, com.im.freechat.data.sources.database.entities.contact.PartialContactEntity, kotlin.coroutines.Continuation):java.lang.Object");
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
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r5, java.util.List r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$3
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$3 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$3) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$3 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$3
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
            com.im.freechat.data.sources.database.entities.contact.UserDao r6 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r6
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
            com.im.freechat.data.sources.database.entities.contact.MemberContact r7 = (com.im.freechat.data.sources.database.entities.contact.MemberContact) r7
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao r8, com.im.freechat.data.sources.database.entities.contact.MemberContact r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$5
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$5 r0 = (com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$5) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$5 r0 = new com.im.freechat.data.sources.database.entities.contact.UserDao$insertOrUpdate$5
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L41
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L6b
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r8 = r0.L$1
            r9 = r8
            com.im.freechat.data.sources.database.entities.contact.MemberContact r9 = (com.im.freechat.data.sources.database.entities.contact.MemberContact) r9
            java.lang.Object r8 = r0.L$0
            com.im.freechat.data.sources.database.entities.contact.UserDao r8 = (com.im.freechat.data.sources.database.entities.contact.UserDao) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L51
        L41:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = r8.insert(r9, r0)
            if (r10 != r1) goto L51
            return r1
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
            java.lang.Object r8 = r8.update(r9, r0)
            if (r8 != r1) goto L6b
            return r1
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6e:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.contact.UserDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.contact.UserDao, com.im.freechat.data.sources.database.entities.contact.MemberContact, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
