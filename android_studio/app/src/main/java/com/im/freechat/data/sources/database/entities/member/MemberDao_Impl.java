package com.im.freechat.data.sources.database.entities.member;

import android.database.Cursor;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabaseKt;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.im.freechat.data.sources.database.Converters;
import io.sentry.SpanStatus;
import io.sentry.c3;
import io.sentry.v0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.i;

/* loaded from: classes2.dex */
public final class MemberDao_Impl extends MemberDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<MemberEntity> __deletionAdapterOfMemberEntity;
    private final EntityInsertionAdapter<MemberEntity> __insertionAdapterOfMemberEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteMemberFromChat;
    private final SharedSQLiteStatement __preparedStmtOfUpdateRole;
    private final SharedSQLiteStatement __preparedStmtOfUpdateStatus;
    private final EntityDeletionOrUpdateAdapter<MemberEntity> __updateAdapterOfMemberEntity;

    public MemberDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfMemberEntity = new EntityInsertionAdapter<MemberEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `member` (`user_id`,`chat_id`,`role`,`status`) VALUES (?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, MemberEntity value) {
                stmt.bindLong(1, value.getContactId());
                stmt.bindLong(2, value.getChatId());
                stmt.bindLong(3, MemberDao_Impl.this.__converters.fromRole(value.getRole()));
                stmt.bindLong(4, MemberDao_Impl.this.__converters.fromStatus(value.getStatus()));
            }
        };
        this.__deletionAdapterOfMemberEntity = new EntityDeletionOrUpdateAdapter<MemberEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `member` WHERE `chat_id` = ? AND `user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, MemberEntity value) {
                stmt.bindLong(1, value.getChatId());
                stmt.bindLong(2, value.getContactId());
            }
        };
        this.__updateAdapterOfMemberEntity = new EntityDeletionOrUpdateAdapter<MemberEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `member` SET `user_id` = ?,`chat_id` = ?,`role` = ?,`status` = ? WHERE `chat_id` = ? AND `user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, MemberEntity value) {
                stmt.bindLong(1, value.getContactId());
                stmt.bindLong(2, value.getChatId());
                stmt.bindLong(3, MemberDao_Impl.this.__converters.fromRole(value.getRole()));
                stmt.bindLong(4, MemberDao_Impl.this.__converters.fromStatus(value.getStatus()));
                stmt.bindLong(5, value.getChatId());
                stmt.bindLong(6, value.getContactId());
            }
        };
        this.__preparedStmtOfUpdateStatus = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE member SET status = ? WHERE chat_id = ? AND user_id = ?";
            }
        };
        this.__preparedStmtOfUpdateRole = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE member SET role = ? WHERE chat_id = ? AND user_id = ?";
            }
        };
        this.__preparedStmtOfDeleteMemberFromChat = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM member WHERE chat_id = ? AND user_id = ?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdate$0(List list, Continuation continuation) {
        return super.insertOrUpdate(list, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public void deleteMemberFromChat(final String chatId, final int memberId) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteMemberFromChat.acquire();
        if (chatId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, chatId);
        }
        acquire.bindLong(2, memberId);
        this.__db.beginTransaction();
        try {
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
                if (H != null) {
                    H.c(SpanStatus.OK);
                }
            } catch (Exception e4) {
                if (H != null) {
                    H.c(SpanStatus.INTERNAL_ERROR);
                    H.s(e4);
                }
                throw e4;
            }
        } finally {
            this.__db.endTransaction();
            if (H != null) {
                H.h();
            }
            this.__preparedStmtOfDeleteMemberFromChat.release(acquire);
        }
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public Object getAllContactsForChat(final String chatId, final Continuation<? super List<ChatMemberEntity>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = ?", 1);
        if (chatId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, chatId);
        }
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<List<ChatMemberEntity>>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.16
            /* JADX WARN: Removed duplicated region for block: B:93:0x01d1 A[Catch: all -> 0x01da, TRY_ENTER, TryCatch #3 {all -> 0x01da, blocks: (B:75:0x01a2, B:93:0x01d1, B:94:0x01d9, B:84:0x01bf, B:85:0x01c7), top: B:103:0x001e }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.member.ChatMemberEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 490
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.AnonymousClass16.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public Object getAllMembers(final String chatId, final Continuation<? super List<MemberEntity>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM member WHERE chat_id = ?", 1);
        if (chatId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, chatId);
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<MemberEntity>>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<MemberEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                Cursor query = DBUtil.query(MemberDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "role");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new MemberEntity(query.getInt(columnIndexOrThrow), query.getInt(columnIndexOrThrow2), MemberDao_Impl.this.__converters.roleFromInt(query.getInt(columnIndexOrThrow3)), MemberDao_Impl.this.__converters.statusFromInt(query.getInt(columnIndexOrThrow4))));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
                        return arrayList;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } catch (Throwable th) {
                    query.close();
                    if (H != null) {
                        H.h();
                    }
                    acquire.release();
                    throw th;
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object insert(final MemberEntity value, final Continuation continuation) {
        return insert2(value, (Continuation<? super Long>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insertOrUpdate(final List<? extends MemberEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.member.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$0;
                lambda$insertOrUpdate$0 = MemberDao_Impl.this.lambda$insertOrUpdate$0(list, (Continuation) obj);
                return lambda$insertOrUpdate$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public i<List<ChatMemberEntity>> listenAllContactsForChat(final int chatId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = ?", 1);
        acquire.bindLong(1, chatId);
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"member", "user"}, new Callable<List<ChatMemberEntity>>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.15
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Removed duplicated region for block: B:93:0x01c7 A[Catch: all -> 0x01d0, TRY_ENTER, TryCatch #0 {all -> 0x01d0, blocks: (B:75:0x01a2, B:93:0x01c7, B:94:0x01cf, B:84:0x01ba, B:85:0x01bd), top: B:100:0x001e }] */
            /* JADX WARN: Removed duplicated region for block: B:98:0x01dc  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.member.ChatMemberEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 480
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.AnonymousClass15.call():java.util.List");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public i<List<MemberEntity>> listenAllMembers(final String chatId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM member WHERE chat_id = ?", 1);
        if (chatId == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, chatId);
        }
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"member"}, new Callable<List<MemberEntity>>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.14
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<MemberEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                Cursor query = DBUtil.query(MemberDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "role");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new MemberEntity(query.getInt(columnIndexOrThrow), query.getInt(columnIndexOrThrow2), MemberDao_Impl.this.__converters.roleFromInt(query.getInt(columnIndexOrThrow3)), MemberDao_Impl.this.__converters.statusFromInt(query.getInt(columnIndexOrThrow4))));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        return arrayList;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } catch (Throwable th) {
                    query.close();
                    if (H != null) {
                        H.h();
                    }
                    throw th;
                }
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object update(final MemberEntity value, final Continuation continuation) {
        return update2(value, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public Object updateRole(final String chatId, final int userId, final int role, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                SupportSQLiteStatement acquire = MemberDao_Impl.this.__preparedStmtOfUpdateRole.acquire();
                acquire.bindLong(1, role);
                String str = chatId;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                acquire.bindLong(3, userId);
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return Unit.INSTANCE;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MemberDao_Impl.this.__preparedStmtOfUpdateRole.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.member.MemberDao
    public Object updateStatus(final String chatId, final int userId, final int status, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                SupportSQLiteStatement acquire = MemberDao_Impl.this.__preparedStmtOfUpdateStatus.acquire();
                acquire.bindLong(1, status);
                String str = chatId;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                acquire.bindLong(3, userId);
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return Unit.INSTANCE;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MemberDao_Impl.this.__preparedStmtOfUpdateStatus.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public void delete(final MemberEntity value) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__deletionAdapterOfMemberEntity.handle(value);
                this.__db.setTransactionSuccessful();
                if (H != null) {
                    H.c(SpanStatus.OK);
                }
            } catch (Exception e4) {
                if (H != null) {
                    H.c(SpanStatus.INTERNAL_ERROR);
                    H.s(e4);
                }
                throw e4;
            }
        } finally {
            this.__db.endTransaction();
            if (H != null) {
                H.h();
            }
        }
    }

    /* renamed from: insert  reason: avoid collision after fix types in other method */
    public Object insert2(final MemberEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = MemberDao_Impl.this.__insertionAdapterOfMemberEntity.insertAndReturnId(value);
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return Long.valueOf(insertAndReturnId);
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    /* renamed from: update  reason: avoid collision after fix types in other method */
    public Object update2(final MemberEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.9
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        MemberDao_Impl.this.__updateAdapterOfMemberEntity.handle(value);
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return Unit.INSTANCE;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insert(final List<? extends MemberEntity> values, final Continuation<? super List<Long>> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.8
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        List<Long> insertAndReturnIdsList = MemberDao_Impl.this.__insertionAdapterOfMemberEntity.insertAndReturnIdsList(values);
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return insertAndReturnIdsList;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object update(final List<? extends MemberEntity> values, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.member.MemberDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.member.MemberDao") : null;
                MemberDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        MemberDao_Impl.this.__updateAdapterOfMemberEntity.handleMultiple(values);
                        MemberDao_Impl.this.__db.setTransactionSuccessful();
                        if (H != null) {
                            H.c(SpanStatus.OK);
                        }
                        return Unit.INSTANCE;
                    } catch (Exception e4) {
                        if (H != null) {
                            H.c(SpanStatus.INTERNAL_ERROR);
                            H.s(e4);
                        }
                        throw e4;
                    }
                } finally {
                    MemberDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
