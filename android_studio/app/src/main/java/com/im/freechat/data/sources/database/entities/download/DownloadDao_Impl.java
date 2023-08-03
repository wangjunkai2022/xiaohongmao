package com.im.freechat.data.sources.database.entities.download;

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
public final class DownloadDao_Impl extends DownloadDao {
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<DownloadEntity> __deletionAdapterOfDownloadEntity;
    private final EntityInsertionAdapter<DownloadEntity> __insertionAdapterOfDownloadEntity;
    private final SharedSQLiteStatement __preparedStmtOfRemoveDownload;
    private final EntityDeletionOrUpdateAdapter<DownloadEntity> __updateAdapterOfDownloadEntity;

    public DownloadDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfDownloadEntity = new EntityInsertionAdapter<DownloadEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `download` (`chat_id`,`media_id`,`download_manager_id`,`local_path`,`remote_url`,`file_size`,`downloaded`,`status`) VALUES (?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, DownloadEntity value) {
                stmt.bindLong(1, value.getChatId());
                stmt.bindLong(2, value.getMediaId());
                stmt.bindLong(3, value.getDownloadManagerID());
                if (value.getLocalPath() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getLocalPath());
                }
                if (value.getRemoteUrl() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getRemoteUrl());
                }
                stmt.bindLong(6, value.getFileSize());
                stmt.bindLong(7, value.getDownloaded());
                stmt.bindLong(8, value.getStatus());
            }
        };
        this.__deletionAdapterOfDownloadEntity = new EntityDeletionOrUpdateAdapter<DownloadEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `download` WHERE `media_id` = ? AND `chat_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, DownloadEntity value) {
                stmt.bindLong(1, value.getMediaId());
                stmt.bindLong(2, value.getChatId());
            }
        };
        this.__updateAdapterOfDownloadEntity = new EntityDeletionOrUpdateAdapter<DownloadEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `download` SET `chat_id` = ?,`media_id` = ?,`download_manager_id` = ?,`local_path` = ?,`remote_url` = ?,`file_size` = ?,`downloaded` = ?,`status` = ? WHERE `media_id` = ? AND `chat_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, DownloadEntity value) {
                stmt.bindLong(1, value.getChatId());
                stmt.bindLong(2, value.getMediaId());
                stmt.bindLong(3, value.getDownloadManagerID());
                if (value.getLocalPath() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getLocalPath());
                }
                if (value.getRemoteUrl() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getRemoteUrl());
                }
                stmt.bindLong(6, value.getFileSize());
                stmt.bindLong(7, value.getDownloaded());
                stmt.bindLong(8, value.getStatus());
                stmt.bindLong(9, value.getMediaId());
                stmt.bindLong(10, value.getChatId());
            }
        };
        this.__preparedStmtOfRemoveDownload = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM download WHERE media_id = ?";
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

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public Object getDownload(final long mediaId, final Continuation<? super DownloadEntity> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM download WHERE media_id = ?", 1);
        acquire.bindLong(1, mediaId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<DownloadEntity>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public DownloadEntity call() throws Exception {
                v0 D = c3.D();
                DownloadEntity downloadEntity = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                Cursor query = DBUtil.query(DownloadDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "media_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "download_manager_id");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "local_path");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "remote_url");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "file_size");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "downloaded");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        if (query.moveToFirst()) {
                            downloadEntity = new DownloadEntity(query.getInt(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getLong(columnIndexOrThrow6), query.getLong(columnIndexOrThrow7), query.getInt(columnIndexOrThrow8));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
                        return downloadEntity;
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

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public i<List<DownloadEntity>> getDownloads() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM download", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"download"}, new Callable<List<DownloadEntity>>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.11
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<DownloadEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                Cursor query = DBUtil.query(DownloadDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "media_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "download_manager_id");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "local_path");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "remote_url");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "file_size");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "downloaded");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new DownloadEntity(query.getInt(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getLong(columnIndexOrThrow6), query.getLong(columnIndexOrThrow7), query.getInt(columnIndexOrThrow8)));
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

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public i<List<DownloadEntity>> getFilesByStatuses(final int... statuses) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM download WHERE status IN (");
        int length = statuses.length;
        StringUtil.appendPlaceholders(newStringBuilder, length);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), length + 0);
        int i4 = 1;
        for (int i10 : statuses) {
            acquire.bindLong(i4, i10);
            i4++;
        }
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"download"}, new Callable<List<DownloadEntity>>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.10
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<DownloadEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                Cursor query = DBUtil.query(DownloadDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "media_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "download_manager_id");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "local_path");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "remote_url");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "file_size");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "downloaded");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new DownloadEntity(query.getInt(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getLong(columnIndexOrThrow6), query.getLong(columnIndexOrThrow7), query.getInt(columnIndexOrThrow8)));
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
    public /* bridge */ /* synthetic */ Object insert(final DownloadEntity value, final Continuation continuation) {
        return insert2(value, (Continuation<? super Long>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insertOrUpdate(final List<? extends DownloadEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.download.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$0;
                lambda$insertOrUpdate$0 = DownloadDao_Impl.this.lambda$insertOrUpdate$0(list, (Continuation) obj);
                return lambda$insertOrUpdate$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public Object removeDownload(final long mediaId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.9
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                SupportSQLiteStatement acquire = DownloadDao_Impl.this.__preparedStmtOfRemoveDownload.acquire();
                acquire.bindLong(1, mediaId);
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    DownloadDao_Impl.this.__preparedStmtOfRemoveDownload.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public Object removeDownloads(final List<Long> mediaIds, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.14
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM download WHERE media_id IN (");
                StringUtil.appendPlaceholders(newStringBuilder, mediaIds.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = DownloadDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                int i4 = 1;
                for (Long l10 : mediaIds) {
                    if (l10 == null) {
                        compileStatement.bindNull(i4);
                    } else {
                        compileStatement.bindLong(i4, l10.longValue());
                    }
                    i4++;
                }
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        compileStatement.executeUpdateDelete();
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object update(final DownloadEntity value, final Continuation continuation) {
        return update2(value, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public void delete(final DownloadEntity value) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__deletionAdapterOfDownloadEntity.handle(value);
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
    public Object insert2(final DownloadEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = DownloadDao_Impl.this.__insertionAdapterOfDownloadEntity.insertAndReturnId(value);
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    /* renamed from: update  reason: avoid collision after fix types in other method */
    public Object update2(final DownloadEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.7
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        DownloadDao_Impl.this.__updateAdapterOfDownloadEntity.handle(value);
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.download.DownloadDao
    public Object getDownloads(final List<Long> mediaIds, final Continuation<? super List<DownloadEntity>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM download WHERE media_id IN (");
        int size = mediaIds.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Long l10 : mediaIds) {
            if (l10 == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindLong(i4, l10.longValue());
            }
            i4++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<DownloadEntity>>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.12
            @Override // java.util.concurrent.Callable
            public List<DownloadEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                Cursor query = DBUtil.query(DownloadDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "chat_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "media_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "download_manager_id");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "local_path");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "remote_url");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "file_size");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "downloaded");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new DownloadEntity(query.getInt(columnIndexOrThrow), query.getLong(columnIndexOrThrow2), query.getLong(columnIndexOrThrow3), query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getLong(columnIndexOrThrow6), query.getLong(columnIndexOrThrow7), query.getInt(columnIndexOrThrow8)));
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
    public Object insert(final List<? extends DownloadEntity> values, final Continuation<? super List<Long>> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.6
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        List<Long> insertAndReturnIdsList = DownloadDao_Impl.this.__insertionAdapterOfDownloadEntity.insertAndReturnIdsList(values);
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object update(final List<? extends DownloadEntity> values, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.download.DownloadDao") : null;
                DownloadDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        DownloadDao_Impl.this.__updateAdapterOfDownloadEntity.handleMultiple(values);
                        DownloadDao_Impl.this.__db.setTransactionSuccessful();
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
                    DownloadDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
