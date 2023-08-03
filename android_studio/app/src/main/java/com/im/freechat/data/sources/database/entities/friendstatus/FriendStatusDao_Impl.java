package com.im.freechat.data.sources.database.entities.friendstatus;

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
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.im.freechat.shared.entities.chat.Status;
import io.sentry.SpanStatus;
import io.sentry.c3;
import io.sentry.clientreport.e;
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
public final class FriendStatusDao_Impl extends FriendStatusDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<FriendStatusEntity> __deletionAdapterOfFriendStatusEntity;
    private final EntityInsertionAdapter<FriendStatusEntity> __insertionAdapterOfFriendStatusEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByUserId;
    private final EntityDeletionOrUpdateAdapter<FriendStatusEntity> __updateAdapterOfFriendStatusEntity;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl$15  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass15 {
        static final /* synthetic */ int[] $SwitchMap$com$im$freechat$shared$entities$chat$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$com$im$freechat$shared$entities$chat$Status = iArr;
            try {
                iArr[Status.CURRENT_USER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$im$freechat$shared$entities$chat$Status[Status.REQUEST_SENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$im$freechat$shared$entities$chat$Status[Status.REQUEST_RECEIVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$im$freechat$shared$entities$chat$Status[Status.REQUEST_REJECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$im$freechat$shared$entities$chat$Status[Status.FRIEND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$im$freechat$shared$entities$chat$Status[Status.NONE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public FriendStatusDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfFriendStatusEntity = new EntityInsertionAdapter<FriendStatusEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `friend_status` (`target_user_id`,`invited_time`,`reason`,`status`) VALUES (?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, FriendStatusEntity value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getInvitedTime());
                if (value.getReason() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getReason());
                }
                if (value.getStatus() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, FriendStatusDao_Impl.this.__Status_enumToString(value.getStatus()));
                }
            }
        };
        this.__deletionAdapterOfFriendStatusEntity = new EntityDeletionOrUpdateAdapter<FriendStatusEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `friend_status` WHERE `target_user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, FriendStatusEntity value) {
                stmt.bindLong(1, value.getUserId());
            }
        };
        this.__updateAdapterOfFriendStatusEntity = new EntityDeletionOrUpdateAdapter<FriendStatusEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `friend_status` SET `target_user_id` = ?,`invited_time` = ?,`reason` = ?,`status` = ? WHERE `target_user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, FriendStatusEntity value) {
                stmt.bindLong(1, value.getUserId());
                stmt.bindLong(2, value.getInvitedTime());
                if (value.getReason() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getReason());
                }
                if (value.getStatus() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, FriendStatusDao_Impl.this.__Status_enumToString(value.getStatus()));
                }
                stmt.bindLong(5, value.getUserId());
            }
        };
        this.__preparedStmtOfDeleteByUserId = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM friend_status WHERE target_user_id = ?";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String __Status_enumToString(final Status _value) {
        if (_value == null) {
            return null;
        }
        switch (AnonymousClass15.$SwitchMap$com$im$freechat$shared$entities$chat$Status[_value.ordinal()]) {
            case 1:
                return "CURRENT_USER";
            case 2:
                return "REQUEST_SENT";
            case 3:
                return "REQUEST_RECEIVED";
            case 4:
                return "REQUEST_REJECTED";
            case 5:
                return "FRIEND";
            case 6:
                return "NONE";
            default:
                throw new IllegalArgumentException("Can't convert enum to string, unknown enum value: " + _value);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Status __Status_stringToEnum(final String _value) {
        if (_value == null) {
            return null;
        }
        char c10 = 65535;
        switch (_value.hashCode()) {
            case -1501406799:
                if (_value.equals("REQUEST_RECEIVED")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1301183410:
                if (_value.equals("REQUEST_REJECTED")) {
                    c10 = 1;
                    break;
                }
                break;
            case -644894872:
                if (_value.equals("REQUEST_SENT")) {
                    c10 = 2;
                    break;
                }
                break;
            case -479182095:
                if (_value.equals("CURRENT_USER")) {
                    c10 = 3;
                    break;
                }
                break;
            case 2402104:
                if (_value.equals("NONE")) {
                    c10 = 4;
                    break;
                }
                break;
            case 2082012830:
                if (_value.equals("FRIEND")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return Status.REQUEST_RECEIVED;
            case 1:
                return Status.REQUEST_REJECTED;
            case 2:
                return Status.REQUEST_SENT;
            case 3:
                return Status.CURRENT_USER;
            case 4:
                return Status.NONE;
            case 5:
                return Status.FRIEND;
            default:
                throw new IllegalArgumentException("Can't convert value to enum, unknown value: " + _value);
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$deleteIrrelevantChatRequests$1(List list, Continuation continuation) {
        return super.deleteIrrelevantChatRequests(list, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdate$0(List list, Continuation continuation) {
        return super.insertOrUpdate(list, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public Object deleteByUserId(final int userId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.9
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                SupportSQLiteStatement acquire = FriendStatusDao_Impl.this.__preparedStmtOfDeleteByUserId.acquire();
                acquire.bindLong(1, userId);
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    FriendStatusDao_Impl.this.__preparedStmtOfDeleteByUserId.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public Object deleteChatRequestsByIds(final List<Integer> relevantIds, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.14
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM friend_status WHERE target_user_id IN (");
                StringUtil.appendPlaceholders(newStringBuilder, relevantIds.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = FriendStatusDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                int i4 = 1;
                for (Integer num : relevantIds) {
                    if (num == null) {
                        compileStatement.bindNull(i4);
                    } else {
                        compileStatement.bindLong(i4, num.intValue());
                    }
                    i4++;
                }
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        compileStatement.executeUpdateDelete();
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public Object deleteIrrelevantChatRequests(final List<Integer> relevantIds, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$deleteIrrelevantChatRequests$1;
                lambda$deleteIrrelevantChatRequests$1 = FriendStatusDao_Impl.this.lambda$deleteIrrelevantChatRequests$1(relevantIds, (Continuation) obj);
                return lambda$deleteIrrelevantChatRequests$1;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public Object getAllRequestsIds(final Continuation<? super List<Integer>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT target_user_id FROM friend_status", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Integer>>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.13
            @Override // java.util.concurrent.Callable
            public List<Integer> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                Cursor query = DBUtil.query(FriendStatusDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(query.isNull(0) ? null : Integer.valueOf(query.getInt(0)));
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

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public i<List<UserRelationStatus>> getAllWithStatus(final List<? extends Status> statuses) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE status IN (");
        int size = statuses.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Status status : statuses) {
            if (status == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindString(i4, __Status_enumToString(status));
            }
            i4++;
        }
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"friend_status", "user"}, new Callable<List<UserRelationStatus>>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.10
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Removed duplicated region for block: B:50:0x0113  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x0116 A[Catch: all -> 0x01a2, Exception -> 0x01a6, TryCatch #5 {Exception -> 0x01a6, all -> 0x01a2, blocks: (B:9:0x0071, B:10:0x007c, B:12:0x0082, B:14:0x0088, B:16:0x008e, B:18:0x0094, B:27:0x00c9, B:29:0x00cf, B:31:0x00d5, B:33:0x00db, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed, B:41:0x00f3, B:43:0x00f9, B:48:0x0109, B:52:0x011c, B:56:0x012b, B:60:0x013e, B:64:0x014b, B:68:0x0156, B:72:0x0169, B:76:0x0178, B:77:0x0183, B:75:0x0172, B:71:0x015f, B:59:0x0138, B:55:0x0125, B:51:0x0116, B:22:0x009f, B:26:0x00b6, B:25:0x00b0), top: B:101:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0122  */
            /* JADX WARN: Removed duplicated region for block: B:55:0x0125 A[Catch: all -> 0x01a2, Exception -> 0x01a6, TryCatch #5 {Exception -> 0x01a6, all -> 0x01a2, blocks: (B:9:0x0071, B:10:0x007c, B:12:0x0082, B:14:0x0088, B:16:0x008e, B:18:0x0094, B:27:0x00c9, B:29:0x00cf, B:31:0x00d5, B:33:0x00db, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed, B:41:0x00f3, B:43:0x00f9, B:48:0x0109, B:52:0x011c, B:56:0x012b, B:60:0x013e, B:64:0x014b, B:68:0x0156, B:72:0x0169, B:76:0x0178, B:77:0x0183, B:75:0x0172, B:71:0x015f, B:59:0x0138, B:55:0x0125, B:51:0x0116, B:22:0x009f, B:26:0x00b6, B:25:0x00b0), top: B:101:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x0135  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0138 A[Catch: all -> 0x01a2, Exception -> 0x01a6, TryCatch #5 {Exception -> 0x01a6, all -> 0x01a2, blocks: (B:9:0x0071, B:10:0x007c, B:12:0x0082, B:14:0x0088, B:16:0x008e, B:18:0x0094, B:27:0x00c9, B:29:0x00cf, B:31:0x00d5, B:33:0x00db, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed, B:41:0x00f3, B:43:0x00f9, B:48:0x0109, B:52:0x011c, B:56:0x012b, B:60:0x013e, B:64:0x014b, B:68:0x0156, B:72:0x0169, B:76:0x0178, B:77:0x0183, B:75:0x0172, B:71:0x015f, B:59:0x0138, B:55:0x0125, B:51:0x0116, B:22:0x009f, B:26:0x00b6, B:25:0x00b0), top: B:101:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
            /* JADX WARN: Removed duplicated region for block: B:63:0x0149  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x0151  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0154  */
            /* JADX WARN: Removed duplicated region for block: B:70:0x015c  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x015f A[Catch: all -> 0x01a2, Exception -> 0x01a6, TryCatch #5 {Exception -> 0x01a6, all -> 0x01a2, blocks: (B:9:0x0071, B:10:0x007c, B:12:0x0082, B:14:0x0088, B:16:0x008e, B:18:0x0094, B:27:0x00c9, B:29:0x00cf, B:31:0x00d5, B:33:0x00db, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed, B:41:0x00f3, B:43:0x00f9, B:48:0x0109, B:52:0x011c, B:56:0x012b, B:60:0x013e, B:64:0x014b, B:68:0x0156, B:72:0x0169, B:76:0x0178, B:77:0x0183, B:75:0x0172, B:71:0x015f, B:59:0x0138, B:55:0x0125, B:51:0x0116, B:22:0x009f, B:26:0x00b6, B:25:0x00b0), top: B:101:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:74:0x016f  */
            /* JADX WARN: Removed duplicated region for block: B:75:0x0172 A[Catch: all -> 0x01a2, Exception -> 0x01a6, TryCatch #5 {Exception -> 0x01a6, all -> 0x01a2, blocks: (B:9:0x0071, B:10:0x007c, B:12:0x0082, B:14:0x0088, B:16:0x008e, B:18:0x0094, B:27:0x00c9, B:29:0x00cf, B:31:0x00d5, B:33:0x00db, B:35:0x00e1, B:37:0x00e7, B:39:0x00ed, B:41:0x00f3, B:43:0x00f9, B:48:0x0109, B:52:0x011c, B:56:0x012b, B:60:0x013e, B:64:0x014b, B:68:0x0156, B:72:0x0169, B:76:0x0178, B:77:0x0183, B:75:0x0172, B:71:0x015f, B:59:0x0138, B:55:0x0125, B:51:0x0116, B:22:0x009f, B:26:0x00b6, B:25:0x00b0), top: B:101:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:97:0x01c0  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 452
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.AnonymousClass10.call():java.util.List");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public FriendStatusEntity getByUserId(final int targetUserId) {
        v0 D = c3.D();
        FriendStatusEntity friendStatusEntity = null;
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend_status WHERE target_user_id = ? LIMIT 1", 1);
        acquire.bindLong(1, targetUserId);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            try {
                int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "target_user_id");
                int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "invited_time");
                int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, e.b.f83079a);
                int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "status");
                if (query.moveToFirst()) {
                    friendStatusEntity = new FriendStatusEntity(query.getInt(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), __Status_stringToEnum(query.getString(columnIndexOrThrow4)));
                }
                query.close();
                if (H != null) {
                    H.t(SpanStatus.OK);
                }
                acquire.release();
                return friendStatusEntity;
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

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public i<UserRelationStatus> getChatRequestByTargetId(final int targetUserId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE target_user_id = ? LIMIT 1", 1);
        acquire.bindLong(1, targetUserId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"friend_status", "user"}, new Callable<UserRelationStatus>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.12
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Removed duplicated region for block: B:46:0x00fc  */
            /* JADX WARN: Removed duplicated region for block: B:47:0x00ff A[Catch: all -> 0x017a, Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:7:0x0021, B:9:0x0075, B:11:0x007b, B:13:0x0081, B:15:0x0087, B:24:0x00b8, B:26:0x00be, B:28:0x00c4, B:30:0x00ca, B:32:0x00d0, B:34:0x00d6, B:36:0x00dc, B:38:0x00e2, B:40:0x00e8, B:73:0x0167, B:44:0x00f2, B:48:0x0105, B:52:0x0114, B:56:0x0127, B:60:0x0133, B:64:0x013e, B:68:0x0151, B:72:0x0160, B:71:0x015a, B:67:0x0147, B:55:0x0121, B:51:0x010e, B:47:0x00ff, B:19:0x0090, B:23:0x00a7, B:22:0x00a1), top: B:90:0x0021, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:50:0x010b  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x010e A[Catch: all -> 0x017a, Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:7:0x0021, B:9:0x0075, B:11:0x007b, B:13:0x0081, B:15:0x0087, B:24:0x00b8, B:26:0x00be, B:28:0x00c4, B:30:0x00ca, B:32:0x00d0, B:34:0x00d6, B:36:0x00dc, B:38:0x00e2, B:40:0x00e8, B:73:0x0167, B:44:0x00f2, B:48:0x0105, B:52:0x0114, B:56:0x0127, B:60:0x0133, B:64:0x013e, B:68:0x0151, B:72:0x0160, B:71:0x015a, B:67:0x0147, B:55:0x0121, B:51:0x010e, B:47:0x00ff, B:19:0x0090, B:23:0x00a7, B:22:0x00a1), top: B:90:0x0021, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x011e  */
            /* JADX WARN: Removed duplicated region for block: B:55:0x0121 A[Catch: all -> 0x017a, Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:7:0x0021, B:9:0x0075, B:11:0x007b, B:13:0x0081, B:15:0x0087, B:24:0x00b8, B:26:0x00be, B:28:0x00c4, B:30:0x00ca, B:32:0x00d0, B:34:0x00d6, B:36:0x00dc, B:38:0x00e2, B:40:0x00e8, B:73:0x0167, B:44:0x00f2, B:48:0x0105, B:52:0x0114, B:56:0x0127, B:60:0x0133, B:64:0x013e, B:68:0x0151, B:72:0x0160, B:71:0x015a, B:67:0x0147, B:55:0x0121, B:51:0x010e, B:47:0x00ff, B:19:0x0090, B:23:0x00a7, B:22:0x00a1), top: B:90:0x0021, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x012e  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0131  */
            /* JADX WARN: Removed duplicated region for block: B:62:0x0139  */
            /* JADX WARN: Removed duplicated region for block: B:63:0x013c  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x0144  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0147 A[Catch: all -> 0x017a, Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:7:0x0021, B:9:0x0075, B:11:0x007b, B:13:0x0081, B:15:0x0087, B:24:0x00b8, B:26:0x00be, B:28:0x00c4, B:30:0x00ca, B:32:0x00d0, B:34:0x00d6, B:36:0x00dc, B:38:0x00e2, B:40:0x00e8, B:73:0x0167, B:44:0x00f2, B:48:0x0105, B:52:0x0114, B:56:0x0127, B:60:0x0133, B:64:0x013e, B:68:0x0151, B:72:0x0160, B:71:0x015a, B:67:0x0147, B:55:0x0121, B:51:0x010e, B:47:0x00ff, B:19:0x0090, B:23:0x00a7, B:22:0x00a1), top: B:90:0x0021, outer: #1 }] */
            /* JADX WARN: Removed duplicated region for block: B:70:0x0157  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x015a A[Catch: all -> 0x017a, Exception -> 0x017c, TryCatch #0 {Exception -> 0x017c, blocks: (B:7:0x0021, B:9:0x0075, B:11:0x007b, B:13:0x0081, B:15:0x0087, B:24:0x00b8, B:26:0x00be, B:28:0x00c4, B:30:0x00ca, B:32:0x00d0, B:34:0x00d6, B:36:0x00dc, B:38:0x00e2, B:40:0x00e8, B:73:0x0167, B:44:0x00f2, B:48:0x0105, B:52:0x0114, B:56:0x0127, B:60:0x0133, B:64:0x013e, B:68:0x0151, B:72:0x0160, B:71:0x015a, B:67:0x0147, B:55:0x0121, B:51:0x010e, B:47:0x00ff, B:19:0x0090, B:23:0x00a7, B:22:0x00a1), top: B:90:0x0021, outer: #1 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 401
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.AnonymousClass12.call():com.im.freechat.data.sources.database.entities.friendstatus.UserRelationStatus");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object insert(final FriendStatusEntity value, final Continuation continuation) {
        return insert2(value, (Continuation<? super Long>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insertOrUpdate(final List<? extends FriendStatusEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$0;
                lambda$insertOrUpdate$0 = FriendStatusDao_Impl.this.lambda$insertOrUpdate$0(list, (Continuation) obj);
                return lambda$insertOrUpdate$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public i<Integer> listenCountWithStatus(final List<? extends Status> statuses) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT COUNT(target_user_id) FROM friend_status WHERE status IN (");
        int size = statuses.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Status status : statuses) {
            if (status == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindString(i4, __Status_enumToString(status));
            }
            i4++;
        }
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"friend_status"}, new Callable<Integer>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.11
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                v0 D = c3.D();
                Integer num = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                Cursor query = DBUtil.query(FriendStatusDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        if (query.moveToFirst() && !query.isNull(0)) {
                            num = Integer.valueOf(query.getInt(0));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        return num;
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
    public /* bridge */ /* synthetic */ Object update(final FriendStatusEntity value, final Continuation continuation) {
        return update2(value, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao
    public void updateChatRequest(final FriendStatusEntity request) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__updateAdapterOfFriendStatusEntity.handle(request);
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

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public void delete(final FriendStatusEntity value) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__deletionAdapterOfFriendStatusEntity.handle(value);
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
    public Object insert2(final FriendStatusEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = FriendStatusDao_Impl.this.__insertionAdapterOfFriendStatusEntity.insertAndReturnId(value);
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    /* renamed from: update  reason: avoid collision after fix types in other method */
    public Object update2(final FriendStatusEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        FriendStatusDao_Impl.this.__updateAdapterOfFriendStatusEntity.handle(value);
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insert(final List<? extends FriendStatusEntity> values, final Continuation<? super List<Long>> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.6
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        List<Long> insertAndReturnIdsList = FriendStatusDao_Impl.this.__insertionAdapterOfFriendStatusEntity.insertAndReturnIdsList(values);
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object update(final List<? extends FriendStatusEntity> values, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao") : null;
                FriendStatusDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        FriendStatusDao_Impl.this.__updateAdapterOfFriendStatusEntity.handleMultiple(values);
                        FriendStatusDao_Impl.this.__db.setTransactionSuccessful();
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
                    FriendStatusDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
