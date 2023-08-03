package com.im.freechat.data.sources.database.entities.attachment;

import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.im.freechat.data.sources.database.Converters;
import io.sentry.SpanStatus;
import io.sentry.c3;
import io.sentry.v0;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* loaded from: classes2.dex */
public final class AttachmentDao_Impl extends AttachmentDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<AttachmentEntity> __insertionAdapterOfAttachmentEntity;
    private final EntityInsertionAdapter<HttpAttachmentEntity> __insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity;
    private final SharedSQLiteStatement __preparedStmtOfSetAttachmentIdUnsafe;
    private final SharedSQLiteStatement __preparedStmtOfSetAttachmentLocalPath;
    private final SharedSQLiteStatement __preparedStmtOfUpdatePreviewUrl;
    private final SharedSQLiteStatement __preparedStmtOfUpdateRemoteUrl;
    private final EntityDeletionOrUpdateAdapter<AttachmentEntity> __updateAdapterOfAttachmentEntity;

    public AttachmentDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity = new EntityInsertionAdapter<HttpAttachmentEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `attachment` (`media_id`,`parent_message_id`,`media_type`,`remote_url`,`width`,`height`,`preview_remote_url`,`file_size`,`duration`,`lat`,`lng`,`filename`,`mime_type`,`gif_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, HttpAttachmentEntity value) {
                stmt.bindLong(1, value.getMediaId());
                stmt.bindLong(2, value.getMessageId());
                stmt.bindLong(3, AttachmentDao_Impl.this.__converters.fromType(value.getType()));
                if (value.getRemoteUrl() == null) {
                    stmt.bindNull(4);
                } else {
                    stmt.bindString(4, value.getRemoteUrl());
                }
                if (value.getWidth() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindLong(5, value.getWidth().intValue());
                }
                if (value.getHeight() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getHeight().intValue());
                }
                if (value.getPreviewRemoteUrl() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getPreviewRemoteUrl());
                }
                if (value.getFileSize() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getFileSize().longValue());
                }
                if (value.getDuration() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getDuration().intValue());
                }
                if (value.getLatitude() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindDouble(10, value.getLatitude().floatValue());
                }
                if (value.getLongitude() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindDouble(11, value.getLongitude().floatValue());
                }
                if (value.getFileName() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, value.getFileName());
                }
                if (value.getMimeType() == null) {
                    stmt.bindNull(13);
                } else {
                    stmt.bindString(13, value.getMimeType());
                }
                if (value.getGifId() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getGifId());
                }
            }
        };
        this.__insertionAdapterOfAttachmentEntity = new EntityInsertionAdapter<AttachmentEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `attachment` (`media_id`,`parent_message_id`,`media_type`,`local_path`,`remote_url`,`width`,`height`,`preview_local_path`,`preview_remote_url`,`file_size`,`duration`,`lat`,`lng`,`filename`,`mime_type`,`gif_id`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, AttachmentEntity value) {
                stmt.bindLong(1, value.getMediaId());
                stmt.bindLong(2, value.getMessageId());
                stmt.bindLong(3, AttachmentDao_Impl.this.__converters.fromType(value.getType()));
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
                if (value.getWidth() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getWidth().intValue());
                }
                if (value.getHeight() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getHeight().intValue());
                }
                if (value.getPreviewLocalPath() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getPreviewLocalPath());
                }
                if (value.getPreviewRemoteUrl() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getPreviewRemoteUrl());
                }
                if (value.getFileSize() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getFileSize().longValue());
                }
                if (value.getDuration() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getDuration().intValue());
                }
                if (value.getLatitude() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindDouble(12, value.getLatitude().floatValue());
                }
                if (value.getLongitude() == null) {
                    stmt.bindNull(13);
                } else {
                    stmt.bindDouble(13, value.getLongitude().floatValue());
                }
                if (value.getFileName() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getFileName());
                }
                if (value.getMimeType() == null) {
                    stmt.bindNull(15);
                } else {
                    stmt.bindString(15, value.getMimeType());
                }
                if (value.getGifId() == null) {
                    stmt.bindNull(16);
                } else {
                    stmt.bindString(16, value.getGifId());
                }
            }
        };
        this.__updateAdapterOfAttachmentEntity = new EntityDeletionOrUpdateAdapter<AttachmentEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `attachment` SET `media_id` = ?,`parent_message_id` = ?,`media_type` = ?,`local_path` = ?,`remote_url` = ?,`width` = ?,`height` = ?,`preview_local_path` = ?,`preview_remote_url` = ?,`file_size` = ?,`duration` = ?,`lat` = ?,`lng` = ?,`filename` = ?,`mime_type` = ?,`gif_id` = ? WHERE `media_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, AttachmentEntity value) {
                stmt.bindLong(1, value.getMediaId());
                stmt.bindLong(2, value.getMessageId());
                stmt.bindLong(3, AttachmentDao_Impl.this.__converters.fromType(value.getType()));
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
                if (value.getWidth() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getWidth().intValue());
                }
                if (value.getHeight() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getHeight().intValue());
                }
                if (value.getPreviewLocalPath() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getPreviewLocalPath());
                }
                if (value.getPreviewRemoteUrl() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getPreviewRemoteUrl());
                }
                if (value.getFileSize() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getFileSize().longValue());
                }
                if (value.getDuration() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getDuration().intValue());
                }
                if (value.getLatitude() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindDouble(12, value.getLatitude().floatValue());
                }
                if (value.getLongitude() == null) {
                    stmt.bindNull(13);
                } else {
                    stmt.bindDouble(13, value.getLongitude().floatValue());
                }
                if (value.getFileName() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getFileName());
                }
                if (value.getMimeType() == null) {
                    stmt.bindNull(15);
                } else {
                    stmt.bindString(15, value.getMimeType());
                }
                if (value.getGifId() == null) {
                    stmt.bindNull(16);
                } else {
                    stmt.bindString(16, value.getGifId());
                }
                stmt.bindLong(17, value.getMediaId());
            }
        };
        this.__preparedStmtOfUpdatePreviewUrl = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE attachment SET preview_remote_url = ? WHERE media_id = ?";
            }
        };
        this.__preparedStmtOfUpdateRemoteUrl = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE attachment SET file_size = ?, remote_url = ? WHERE media_id = ?";
            }
        };
        this.__preparedStmtOfSetAttachmentIdUnsafe = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE attachment SET media_id = ? WHERE media_id = ?";
            }
        };
        this.__preparedStmtOfSetAttachmentLocalPath = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE attachment SET local_path = ? WHERE media_id = ?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object deleteByMediaIds(final List<Long> ids, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.19
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM attachment WHERE media_id IN (");
                StringUtil.appendPlaceholders(newStringBuilder, ids.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = AttachmentDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                int i4 = 1;
                for (Long l10 : ids) {
                    if (l10 == null) {
                        compileStatement.bindNull(i4);
                    } else {
                        compileStatement.bindLong(i4, l10.longValue());
                    }
                    i4++;
                }
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        compileStatement.executeUpdateDelete();
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object getAttachmentByMessageId(final long id, final Continuation<? super List<AttachmentEntity>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM attachment WHERE parent_message_id = ?", 1);
        acquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<AttachmentEntity>>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.17
            /* JADX WARN: Removed duplicated region for block: B:85:0x01e9  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 498
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.AnonymousClass17.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object getAttachmentsByIds(final List<Long> ids, final Continuation<? super List<AttachmentEntity>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM attachment WHERE media_id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Long l10 : ids) {
            if (l10 == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindLong(i4, l10.longValue());
            }
            i4++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<AttachmentEntity>>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.18
            /* JADX WARN: Removed duplicated region for block: B:85:0x01e9  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 498
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.AnonymousClass18.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object insert(final HttpAttachmentEntity entity, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.8
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        AttachmentDao_Impl.this.__insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity.insert((EntityInsertionAdapter) entity);
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object insertAll(final List<AttachmentEntity> entities, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.11
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        AttachmentDao_Impl.this.__insertionAdapterOfAttachmentEntity.insert((Iterable) entities);
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object setAttachmentIdUnsafe(final long oldId, final long newId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.15
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                SupportSQLiteStatement acquire = AttachmentDao_Impl.this.__preparedStmtOfSetAttachmentIdUnsafe.acquire();
                acquire.bindLong(1, newId);
                acquire.bindLong(2, oldId);
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    AttachmentDao_Impl.this.__preparedStmtOfSetAttachmentIdUnsafe.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object setAttachmentLocalPath(final long id, final String path, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.16
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                SupportSQLiteStatement acquire = AttachmentDao_Impl.this.__preparedStmtOfSetAttachmentLocalPath.acquire();
                String str = path;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, id);
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    AttachmentDao_Impl.this.__preparedStmtOfSetAttachmentLocalPath.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object update(final AttachmentEntity entity, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.12
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        AttachmentDao_Impl.this.__updateAdapterOfAttachmentEntity.handle(entity);
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object updatePreviewUrl(final long mediaId, final String url, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.13
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                SupportSQLiteStatement acquire = AttachmentDao_Impl.this.__preparedStmtOfUpdatePreviewUrl.acquire();
                String str = url;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, mediaId);
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    AttachmentDao_Impl.this.__preparedStmtOfUpdatePreviewUrl.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object updateRemoteUrl(final long mediaId, final String url, final long size, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.14
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                SupportSQLiteStatement acquire = AttachmentDao_Impl.this.__preparedStmtOfUpdateRemoteUrl.acquire();
                acquire.bindLong(1, size);
                String str = url;
                if (str == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindString(2, str);
                }
                acquire.bindLong(3, mediaId);
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    AttachmentDao_Impl.this.__preparedStmtOfUpdateRemoteUrl.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object insert(final AttachmentEntity entity, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = AttachmentDao_Impl.this.__insertionAdapterOfAttachmentEntity.insertAndReturnId(entity);
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.attachment.AttachmentDao
    public Object insert(final List<HttpAttachmentEntity> entities, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl.10
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.attachment.AttachmentDao") : null;
                AttachmentDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        AttachmentDao_Impl.this.__insertionAdapterOfHttpAttachmentEntityAsAttachmentEntity.insert((Iterable) entities);
                        AttachmentDao_Impl.this.__db.setTransactionSuccessful();
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
                    AttachmentDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
