package com.im.freechat.data.sources.database.entities.attachment;

import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.qennnsad.aknkaksd.data.repository.f;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;

/* compiled from: AttachmentDao.kt */
@Dao
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\t\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\u0006\u0010\u000b\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0002\u0010\fJ%\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u0019\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u0019\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0011H§@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J\u001f\u0010\u000e\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u001f\u0010\u0014\u001a\u00020\u00042\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\n0\u0006H§@ø\u0001\u0000¢\u0006\u0002\u0010\bJ\u0019\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J!\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ!\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH§@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ\u0019\u0010 \u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J!\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001eH§@ø\u0001\u0000¢\u0006\u0002\u0010\u001fJ)\u0010$\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020\u0007H§@ø\u0001\u0000¢\u0006\u0002\u0010&\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "", "()V", "deleteByMediaIds", "", "ids", "", "", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAttachmentByMessageId", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;", "id", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAttachmentsByIds", "insert", "entity", "(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;", "(Lcom/im/freechat/data/sources/database/entities/attachment/HttpAttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "entities", "insertAll", "insertOrUpdate", "value", "setAttachmentId", "oldId", "newId", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setAttachmentIdUnsafe", "setAttachmentLocalPath", "path", "", "(JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "update", "updatePreviewUrl", "mediaId", "url", "updateRemoteUrl", f.f47745b, "(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes2.dex */
public abstract class AttachmentDao {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static /* synthetic */ java.lang.Object insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.attachment.AttachmentDao r8, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r9, kotlin.coroutines.Continuation r10) {
        /*
            boolean r0 = r10 instanceof com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$insertOrUpdate$1
            if (r0 == 0) goto L13
            r0 = r10
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$insertOrUpdate$1 r0 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$insertOrUpdate$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$insertOrUpdate$1 r0 = new com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$insertOrUpdate$1
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
            com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity r9 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity) r9
            java.lang.Object r8 = r0.L$0
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao r8 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentDao) r8
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
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao.insertOrUpdate$suspendImpl(com.im.freechat.data.sources.database.entities.attachment.AttachmentDao, com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Query("DELETE FROM attachment WHERE media_id IN (:ids)")
    @h
    public abstract Object deleteByMediaIds(@g List<Long> list, @g Continuation<? super Unit> continuation);

    @Query("SELECT * FROM attachment WHERE parent_message_id = :id")
    @h
    public abstract Object getAttachmentByMessageId(long j4, @g Continuation<? super List<AttachmentEntity>> continuation);

    @Query("SELECT * FROM attachment WHERE media_id IN (:ids)")
    @h
    public abstract Object getAttachmentsByIds(@g List<Long> list, @g Continuation<? super List<AttachmentEntity>> continuation);

    @Insert(entity = AttachmentEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g AttachmentEntity attachmentEntity, @g Continuation<? super Long> continuation);

    @Insert(entity = AttachmentEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g HttpAttachmentEntity httpAttachmentEntity, @g Continuation<? super Unit> continuation);

    @Insert(entity = AttachmentEntity.class, onConflict = 5)
    @h
    public abstract Object insert(@g List<HttpAttachmentEntity> list, @g Continuation<? super Unit> continuation);

    @Insert(entity = AttachmentEntity.class, onConflict = 5)
    @h
    public abstract Object insertAll(@g List<AttachmentEntity> list, @g Continuation<? super Unit> continuation);

    @h
    public Object insertOrUpdate(@g AttachmentEntity attachmentEntity, @g Continuation<? super Unit> continuation) {
        return insertOrUpdate$suspendImpl(this, attachmentEntity, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a0 A[RETURN] */
    @m8.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object setAttachmentId(long r11, long r13, @m8.g kotlin.coroutines.Continuation<? super kotlin.Unit> r15) {
        /*
            r10 = this;
            boolean r0 = r15 instanceof com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$setAttachmentId$1
            if (r0 == 0) goto L13
            r0 = r15
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$setAttachmentId$1 r0 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$setAttachmentId$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$setAttachmentId$1 r0 = new com.im.freechat.data.sources.database.entities.attachment.AttachmentDao$setAttachmentId$1
            r0.<init>(r10, r15)
        L18:
            java.lang.Object r15 = r0.result
            java.lang.Object r7 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r0.label
            r8 = 3
            r9 = 2
            r2 = 1
            if (r1 == 0) goto L5e
            if (r1 == r2) goto L50
            if (r1 == r9) goto L3c
            if (r1 != r8) goto L34
            java.lang.Object r11 = r0.L$0
            android.database.sqlite.SQLiteConstraintException r11 = (android.database.sqlite.SQLiteConstraintException) r11
            kotlin.ResultKt.throwOnFailure(r15)
            goto La1
        L34:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3c:
            long r11 = r0.J$1
            long r13 = r0.J$0
            java.lang.Object r1 = r0.L$1
            android.database.sqlite.SQLiteConstraintException r1 = (android.database.sqlite.SQLiteConstraintException) r1
            java.lang.Object r2 = r0.L$0
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao r2 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentDao) r2
            kotlin.ResultKt.throwOnFailure(r15)
            r4 = r11
            r11 = r1
            r1 = r2
            r2 = r13
            goto L92
        L50:
            long r13 = r0.J$1
            long r11 = r0.J$0
            java.lang.Object r1 = r0.L$0
            com.im.freechat.data.sources.database.entities.attachment.AttachmentDao r1 = (com.im.freechat.data.sources.database.entities.attachment.AttachmentDao) r1
            kotlin.ResultKt.throwOnFailure(r15)     // Catch: android.database.sqlite.SQLiteConstraintException -> L5c
            goto La4
        L5c:
            r15 = move-exception
            goto L76
        L5e:
            kotlin.ResultKt.throwOnFailure(r15)
            r0.L$0 = r10     // Catch: android.database.sqlite.SQLiteConstraintException -> L74
            r0.J$0 = r11     // Catch: android.database.sqlite.SQLiteConstraintException -> L74
            r0.J$1 = r13     // Catch: android.database.sqlite.SQLiteConstraintException -> L74
            r0.label = r2     // Catch: android.database.sqlite.SQLiteConstraintException -> L74
            r1 = r10
            r2 = r11
            r4 = r13
            r6 = r0
            java.lang.Object r11 = r1.setAttachmentIdUnsafe(r2, r4, r6)     // Catch: android.database.sqlite.SQLiteConstraintException -> L74
            if (r11 != r7) goto La4
            return r7
        L74:
            r15 = move-exception
            r1 = r10
        L76:
            java.lang.Long r2 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r13)
            java.util.List r2 = kotlin.collections.CollectionsKt.listOf(r2)
            r0.L$0 = r1
            r0.L$1 = r15
            r0.J$0 = r11
            r0.J$1 = r13
            r0.label = r9
            java.lang.Object r2 = r1.deleteByMediaIds(r2, r0)
            if (r2 != r7) goto L8f
            return r7
        L8f:
            r2 = r11
            r4 = r13
            r11 = r15
        L92:
            r0.L$0 = r11
            r12 = 0
            r0.L$1 = r12
            r0.label = r8
            r6 = r0
            java.lang.Object r12 = r1.setAttachmentIdUnsafe(r2, r4, r6)
            if (r12 != r7) goto La1
            return r7
        La1:
            r11.printStackTrace()
        La4:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao.setAttachmentId(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Query("UPDATE attachment SET media_id = :newId WHERE media_id = :oldId")
    @h
    public abstract Object setAttachmentIdUnsafe(long j4, long j10, @g Continuation<? super Unit> continuation);

    @Query("UPDATE attachment SET local_path = :path WHERE media_id = :id")
    @h
    public abstract Object setAttachmentLocalPath(long j4, @g String str, @g Continuation<? super Unit> continuation);

    @Update
    @h
    public abstract Object update(@g AttachmentEntity attachmentEntity, @g Continuation<? super Unit> continuation);

    @Query("UPDATE attachment SET preview_remote_url = :url WHERE media_id = :mediaId")
    @h
    public abstract Object updatePreviewUrl(long j4, @g String str, @g Continuation<? super Unit> continuation);

    @Query("UPDATE attachment SET file_size = :size, remote_url = :url WHERE media_id = :mediaId")
    @h
    public abstract Object updateRemoteUrl(long j4, @g String str, long j10, @g Continuation<? super Unit> continuation);
}
