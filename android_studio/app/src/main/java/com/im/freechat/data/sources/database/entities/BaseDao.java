package com.im.freechat.data.sources.database.entities;

import androidx.exifinterface.media.ExifInterface;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Transaction;
import androidx.room.Update;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;

/* compiled from: BaseDao.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\b&\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H'¢\u0006\u0002\u0010\u0007J\u0019\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00028\u0000H§@ø\u0001\u0000¢\u0006\u0002\u0010\nJ%\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH§@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u001f\u0010\u000e\u001a\u00020\u00052\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H§@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u001f\u0010\u0010\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH§@ø\u0001\u0000¢\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/BaseDao;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "delete", "", "value", "(Ljava/lang/Object;)V", "insert", "", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "values", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "insertOrUpdate", "list", "update", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public abstract class BaseDao<T> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.BaseDao r8, java.lang.Object r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$1
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$1 r0 = (com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$1 r0 = new com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$1
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3e
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r10)
            goto L68
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            java.lang.Object r9 = r0.L$1
            java.lang.Object r8 = r0.L$0
            com.im.freechat.data.sources.database.entities.BaseDao r8 = (com.im.freechat.data.sources.database.entities.BaseDao) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto L4e
        L3e:
            kotlin.ResultKt.throwOnFailure(r10)
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r4
            java.lang.Object r10 = r8.insert(r9, r0)
            if (r10 != r1) goto L4e
            return r1
        L4e:
            java.lang.Number r10 = (java.lang.Number) r10
            long r4 = r10.longValue()
            r6 = -1
            int r10 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r10 != 0) goto L6b
            r10 = 0
            r0.L$0 = r10
            r0.L$1 = r10
            r0.label = r3
            java.lang.Object r8 = r8.update(r9, r0)
            if (r8 != r1) goto L68
            return r1
        L68:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L6b:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.BaseDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.BaseDao, java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Delete
    public abstract void delete(T t9);

    @Insert(onConflict = 5)
    @h
    public abstract Object insert(T t9, @g Continuation<? super Long> continuation);

    @Insert(onConflict = 5)
    @h
    public abstract Object insert(@g List<? extends T> list, @g Continuation<? super List<Long>> continuation);

    @h
    public Object insertOrUpdate(T t9, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, t9, continuation);
    }

    @h
    @Transaction
    public Object insertOrUpdate(@g List<? extends T> list, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl((BaseDao) this, (List) list, (Continuation) continuation);
    }

    @Update
    @h
    public abstract Object update(T t9, @g Continuation<? super Unit> continuation);

    @Update
    @h
    public abstract Object update(@g List<? extends T> list, @g Continuation<? super Unit> continuation);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0049  */
    @androidx.room.Transaction
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.BaseDao r5, java.util.List r6, kotlin.coroutines.Continuation r7) {
        /*
            boolean r0 = r7 instanceof com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$2
            if (r0 == 0) goto L13
            r0 = r7
            com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$2 r0 = (com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$2) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$2 r0 = new com.im.freechat.data.sources.database.entities.BaseDao$insertOrUpdate$2
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
            com.im.freechat.data.sources.database.entities.BaseDao r6 = (com.im.freechat.data.sources.database.entities.BaseDao) r6
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
            if (r7 == 0) goto L5a
            java.lang.Object r7 = r5.next()
            r0.L$0 = r6
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r7 = r6.insertOrUpdate(r7, r0)
            if (r7 != r1) goto L43
            return r1
        L5a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.BaseDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.BaseDao, java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
