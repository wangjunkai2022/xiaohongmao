package com.im.freechat.data.sources.database.entities.message;

import android.database.Cursor;
import androidx.collection.LongSparseArray;
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
import com.im.freechat.data.sources.database.Converters;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
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

/* loaded from: classes3.dex */
public final class MessageDao_Impl extends MessageDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<MessageEntity> __deletionAdapterOfMessageEntity;
    private final EntityInsertionAdapter<MessageEntity> __insertionAdapterOfMessageEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteByChatId;
    private final SharedSQLiteStatement __preparedStmtOfDeleteById;
    private final SharedSQLiteStatement __preparedStmtOfEditById;
    private final SharedSQLiteStatement __preparedStmtOfModifyMessage;
    private final SharedSQLiteStatement __preparedStmtOfReadMyMessage;
    private final SharedSQLiteStatement __preparedStmtOfReadOtherMessage;
    private final SharedSQLiteStatement __preparedStmtOfResetSendings;
    private final SharedSQLiteStatement __preparedStmtOfSetMessageIdUnsafe;
    private final SharedSQLiteStatement __preparedStmtOfSetMessageSending;
    private final SharedSQLiteStatement __preparedStmtOfSetSendFailed;
    private final EntityDeletionOrUpdateAdapter<MessageEntity> __updateAdapterOfMessageEntity;

    public MessageDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfMessageEntity = new EntityInsertionAdapter<MessageEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `message` (`message_id`,`sender_id`,`content`,`parent_chat_id`,`send_time`,`status`,`edit_time`,`forward_sender_id`,`forward_message_id`,`forward_chat_id`,`reply_to_message_id`,`mention_all`,`mentions`,`styles`,`is_service`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, MessageEntity value) {
                stmt.bindLong(1, value.getMessageId());
                stmt.bindLong(2, value.getSenderId());
                if (value.getContent() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getContent());
                }
                stmt.bindLong(4, value.getChatId());
                stmt.bindLong(5, value.getSendTime());
                Integer messageStatusToInt = MessageDao_Impl.this.__converters.messageStatusToInt(value.getMessageStatus());
                if (messageStatusToInt == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, messageStatusToInt.intValue());
                }
                if (value.getEditTime() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getEditTime().longValue());
                }
                if (value.getForwardSenderId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getForwardSenderId().intValue());
                }
                if (value.getForwardMessageId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getForwardMessageId().longValue());
                }
                if (value.getForwardChatId() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getForwardChatId().intValue());
                }
                if (value.getReplyToMessageId() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getReplyToMessageId().longValue());
                }
                stmt.bindLong(12, value.getMentionAll() ? 1L : 0L);
                String stringMapToString = MessageDao_Impl.this.__converters.stringMapToString(value.getMentions());
                if (stringMapToString == null) {
                    stmt.bindNull(13);
                } else {
                    stmt.bindString(13, stringMapToString);
                }
                String messageStylesToString = MessageDao_Impl.this.__converters.messageStylesToString(value.getStyles());
                if (messageStylesToString == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, messageStylesToString);
                }
                stmt.bindLong(15, value.isService() ? 1L : 0L);
            }
        };
        this.__deletionAdapterOfMessageEntity = new EntityDeletionOrUpdateAdapter<MessageEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.2
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `message` WHERE `message_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, MessageEntity value) {
                stmt.bindLong(1, value.getMessageId());
            }
        };
        this.__updateAdapterOfMessageEntity = new EntityDeletionOrUpdateAdapter<MessageEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `message` SET `message_id` = ?,`sender_id` = ?,`content` = ?,`parent_chat_id` = ?,`send_time` = ?,`status` = ?,`edit_time` = ?,`forward_sender_id` = ?,`forward_message_id` = ?,`forward_chat_id` = ?,`reply_to_message_id` = ?,`mention_all` = ?,`mentions` = ?,`styles` = ?,`is_service` = ? WHERE `message_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, MessageEntity value) {
                stmt.bindLong(1, value.getMessageId());
                stmt.bindLong(2, value.getSenderId());
                if (value.getContent() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getContent());
                }
                stmt.bindLong(4, value.getChatId());
                stmt.bindLong(5, value.getSendTime());
                Integer messageStatusToInt = MessageDao_Impl.this.__converters.messageStatusToInt(value.getMessageStatus());
                if (messageStatusToInt == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, messageStatusToInt.intValue());
                }
                if (value.getEditTime() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getEditTime().longValue());
                }
                if (value.getForwardSenderId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getForwardSenderId().intValue());
                }
                if (value.getForwardMessageId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getForwardMessageId().longValue());
                }
                if (value.getForwardChatId() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getForwardChatId().intValue());
                }
                if (value.getReplyToMessageId() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getReplyToMessageId().longValue());
                }
                stmt.bindLong(12, value.getMentionAll() ? 1L : 0L);
                String stringMapToString = MessageDao_Impl.this.__converters.stringMapToString(value.getMentions());
                if (stringMapToString == null) {
                    stmt.bindNull(13);
                } else {
                    stmt.bindString(13, stringMapToString);
                }
                String messageStylesToString = MessageDao_Impl.this.__converters.messageStylesToString(value.getStyles());
                if (messageStylesToString == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, messageStylesToString);
                }
                stmt.bindLong(15, value.isService() ? 1L : 0L);
                stmt.bindLong(16, value.getMessageId());
            }
        };
        this.__preparedStmtOfReadMyMessage = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.4
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET status = 2 WHERE sender_id = ? AND parent_chat_id = ? AND message_id <= ? AND status > 0";
            }
        };
        this.__preparedStmtOfReadOtherMessage = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.5
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET status = 2 WHERE (sender_id != ?) AND parent_chat_id = ? AND message_id <= ?";
            }
        };
        this.__preparedStmtOfDeleteById = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM message WHERE message_id = ?";
            }
        };
        this.__preparedStmtOfEditById = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET content = ?, edit_time = ? WHERE message_id = ?";
            }
        };
        this.__preparedStmtOfDeleteByChatId = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM message WHERE parent_chat_id = ?";
            }
        };
        this.__preparedStmtOfSetMessageIdUnsafe = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET message_id = ?, status = 1, send_time = ? WHERE message_id = ?";
            }
        };
        this.__preparedStmtOfSetMessageSending = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET status = 0 WHERE message_id = ?";
            }
        };
        this.__preparedStmtOfModifyMessage = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET content = ?, edit_time = ? WHERE message_id = ?";
            }
        };
        this.__preparedStmtOfResetSendings = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET status = -1 WHERE status = 0";
            }
        };
        this.__preparedStmtOfSetSendFailed = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE message SET status = -1 WHERE message_id = ?";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(final LongSparseArray<ArrayList<AttachmentEntity>> _map) {
        int i4;
        if (_map.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            LongSparseArray<ArrayList<AttachmentEntity>> longSparseArray = new LongSparseArray<>(999);
            int size = _map.size();
            int i10 = 0;
            loop0: while (true) {
                i4 = 0;
                while (i10 < size) {
                    longSparseArray.put(_map.keyAt(i10), _map.valueAt(i10));
                    i10++;
                    i4++;
                    if (i4 == 999) {
                        break;
                    }
                }
                __fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(longSparseArray);
                longSparseArray = new LongSparseArray<>(999);
            }
            if (i4 > 0) {
                __fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(longSparseArray);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `media_id`,`parent_message_id`,`media_type`,`local_path`,`remote_url`,`width`,`height`,`preview_local_path`,`preview_remote_url`,`file_size`,`duration`,`lat`,`lng`,`filename`,`mime_type`,`gif_id` FROM `attachment` WHERE `parent_message_id` IN (");
        int size2 = _map.size();
        StringUtil.appendPlaceholders(newStringBuilder, size2);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size2 + 0);
        int i11 = 1;
        for (int i12 = 0; i12 < _map.size(); i12++) {
            acquire.bindLong(i11, _map.keyAt(i12));
            i11++;
        }
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "parent_message_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<AttachmentEntity> arrayList = _map.get(query.getLong(columnIndex));
                if (arrayList != null) {
                    arrayList.add(new AttachmentEntity(query.getLong(0), query.getLong(1), this.__converters.mediaTypeFromInt(query.getInt(2)), query.isNull(3) ? null : query.getString(3), query.isNull(4) ? null : query.getString(4), query.isNull(5) ? null : Integer.valueOf(query.getInt(5)), query.isNull(6) ? null : Integer.valueOf(query.getInt(6)), query.isNull(7) ? null : query.getString(7), query.isNull(8) ? null : query.getString(8), query.isNull(9) ? null : Long.valueOf(query.getLong(9)), query.isNull(10) ? null : Integer.valueOf(query.getInt(10)), query.isNull(11) ? null : Float.valueOf(query.getFloat(11)), query.isNull(12) ? null : Float.valueOf(query.getFloat(12)), query.isNull(13) ? null : query.getString(13), query.isNull(14) ? null : query.getString(14), query.isNull(15) ? null : query.getString(15)));
                }
            }
        } finally {
            query.close();
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdate$0(List list, Continuation continuation) {
        return super.insertOrUpdate(list, (Continuation<? super Unit>) continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$readOtherMessages$1(int i4, int i10, long j4, Continuation continuation) {
        return super.readOtherMessages(i4, i10, j4, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$setMessageId$2(long j4, long j10, long j11, Continuation continuation) {
        return super.setMessageId(j4, j10, j11, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object deleteByChatId(final int chatId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.22
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfDeleteByChatId.acquire();
                acquire.bindLong(1, chatId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfDeleteByChatId.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object deleteById(final long messageId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.20
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfDeleteById.acquire();
                acquire.bindLong(1, messageId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfDeleteById.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object deleteByIds(final List<Long> messageIds, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.37
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM message WHERE message_id IN (");
                StringUtil.appendPlaceholders(newStringBuilder, messageIds.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = MessageDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                int i4 = 1;
                for (Long l10 : messageIds) {
                    if (l10 == null) {
                        compileStatement.bindNull(i4);
                    } else {
                        compileStatement.bindLong(i4, l10.longValue());
                    }
                    i4++;
                }
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        compileStatement.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object editById(final long messageId, final String content, final long editedAt, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.21
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfEditById.acquire();
                String str = content;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, editedAt);
                acquire.bindLong(3, messageId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfEditById.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object findMessagesByQuery(final String query, final Continuation<? super List<FullMessageEntity>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM message\n                    LEFT JOIN chat ON message.parent_chat_id = chat.chat_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    WHERE message.content LIKE '%' || ? || '%'\n    ", 1);
        if (query == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, query);
        }
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<List<FullMessageEntity>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.34
            /* JADX WARN: Removed duplicated region for block: B:101:0x026b  */
            /* JADX WARN: Removed duplicated region for block: B:102:0x026f A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0287  */
            /* JADX WARN: Removed duplicated region for block: B:106:0x028a  */
            /* JADX WARN: Removed duplicated region for block: B:110:0x02a1 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:122:0x02dd  */
            /* JADX WARN: Removed duplicated region for block: B:129:0x02fb  */
            /* JADX WARN: Removed duplicated region for block: B:130:0x02fe A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:133:0x030a  */
            /* JADX WARN: Removed duplicated region for block: B:134:0x030d A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:137:0x031d  */
            /* JADX WARN: Removed duplicated region for block: B:138:0x0320 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:141:0x032c  */
            /* JADX WARN: Removed duplicated region for block: B:142:0x032f  */
            /* JADX WARN: Removed duplicated region for block: B:146:0x0350 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:175:0x03ce A[Catch: all -> 0x03d7, TRY_ENTER, TryCatch #2 {all -> 0x03d7, blocks: (B:157:0x039f, B:175:0x03ce, B:176:0x03d6, B:166:0x03bc, B:167:0x03c4), top: B:184:0x001e }] */
            /* JADX WARN: Removed duplicated region for block: B:180:0x03e3  */
            /* JADX WARN: Removed duplicated region for block: B:195:0x0355 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01ae  */
            /* JADX WARN: Removed duplicated region for block: B:66:0x01b1 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:69:0x01c5  */
            /* JADX WARN: Removed duplicated region for block: B:70:0x01cb A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:73:0x01e9  */
            /* JADX WARN: Removed duplicated region for block: B:74:0x01ec A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:77:0x01fc  */
            /* JADX WARN: Removed duplicated region for block: B:78:0x01ff A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:81:0x020f  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x0212 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:85:0x0222  */
            /* JADX WARN: Removed duplicated region for block: B:86:0x0225 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:89:0x0235  */
            /* JADX WARN: Removed duplicated region for block: B:90:0x0238 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:93:0x0248  */
            /* JADX WARN: Removed duplicated region for block: B:94:0x024b  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x0253  */
            /* JADX WARN: Removed duplicated region for block: B:98:0x0255 A[Catch: all -> 0x03b6, TryCatch #0 {all -> 0x03b6, blocks: (B:10:0x0075, B:11:0x00c4, B:13:0x00ca, B:15:0x00da, B:18:0x00ee, B:19:0x0106, B:21:0x010c, B:23:0x0112, B:25:0x0118, B:27:0x011e, B:29:0x0124, B:31:0x012a, B:33:0x0130, B:35:0x0136, B:37:0x013c, B:39:0x0144, B:41:0x014c, B:43:0x0152, B:45:0x0158, B:47:0x0162, B:49:0x016c, B:51:0x0176, B:63:0x01a0, B:67:0x01b7, B:71:0x01d9, B:75:0x01f6, B:79:0x0209, B:83:0x021c, B:87:0x022f, B:91:0x0242, B:95:0x024d, B:99:0x0259, B:103:0x0275, B:107:0x028c, B:108:0x029b, B:110:0x02a1, B:112:0x02ab, B:114:0x02b5, B:116:0x02bf, B:118:0x02c9, B:127:0x02f1, B:131:0x0304, B:135:0x0313, B:139:0x0326, B:143:0x0331, B:144:0x0340, B:146:0x0350, B:147:0x0355, B:138:0x0320, B:134:0x030d, B:130:0x02fe, B:102:0x026f, B:98:0x0255, B:90:0x0238, B:86:0x0225, B:82:0x0212, B:78:0x01ff, B:74:0x01ec, B:70:0x01cb, B:66:0x01b1, B:148:0x0388, B:150:0x0393), top: B:182:0x0075 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.message.FullMessageEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 999
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass34.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object getLastMessageId(final Continuation<? super Long> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT MAX(message_id) FROM message", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.30
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                Long l10 = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                Cursor query = DBUtil.query(MessageDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        if (query.moveToFirst() && !query.isNull(0)) {
                            l10 = Long.valueOf(query.getLong(0));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
                        return l10;
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

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object getMessageById(final long messageId, final Continuation<? super MessageEntity> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM message WHERE message_id = ?", 1);
        acquire.bindLong(1, messageId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<MessageEntity>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.29
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public MessageEntity call() throws Exception {
                MessageEntity messageEntity;
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                Cursor query = DBUtil.query(MessageDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "message_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "sender_id");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "content");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "parent_chat_id");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "send_time");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "status");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "edit_time");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "forward_sender_id");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "forward_message_id");
                        int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "forward_chat_id");
                        int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "reply_to_message_id");
                        int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "mention_all");
                        int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "mentions");
                        v0 v0Var = H;
                        try {
                            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "styles");
                            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                            if (query.moveToFirst()) {
                                messageEntity = new MessageEntity(query.getLong(columnIndexOrThrow), query.getInt(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.getLong(columnIndexOrThrow5), MessageDao_Impl.this.__converters.messageStatusFromInt(query.isNull(columnIndexOrThrow6) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow6))), query.isNull(columnIndexOrThrow7) ? null : Long.valueOf(query.getLong(columnIndexOrThrow7)), query.isNull(columnIndexOrThrow8) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : Long.valueOf(query.getLong(columnIndexOrThrow9)), query.isNull(columnIndexOrThrow10) ? null : Integer.valueOf(query.getInt(columnIndexOrThrow10)), query.isNull(columnIndexOrThrow11) ? null : Long.valueOf(query.getLong(columnIndexOrThrow11)), query.getInt(columnIndexOrThrow12) != 0, MessageDao_Impl.this.__converters.stringToStringMap(query.isNull(columnIndexOrThrow13) ? null : query.getString(columnIndexOrThrow13)), MessageDao_Impl.this.__converters.messageStylesFromString(query.isNull(columnIndexOrThrow14) ? null : query.getString(columnIndexOrThrow14)), query.getInt(columnIndexOrThrow15) != 0);
                            } else {
                                messageEntity = null;
                            }
                            query.close();
                            if (v0Var != null) {
                                v0Var.t(SpanStatus.OK);
                            }
                            acquire.release();
                            return messageEntity;
                        } catch (Exception e4) {
                            e = e4;
                            H = v0Var;
                            if (H != null) {
                                H.c(SpanStatus.INTERNAL_ERROR);
                                H.s(e);
                            }
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            H = v0Var;
                            query.close();
                            if (H != null) {
                                H.h();
                            }
                            acquire.release();
                            throw th;
                        }
                    } catch (Exception e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object getMessagesByIds(final List<Long> ids, final Continuation<? super List<FullMessageEntity>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM message ");
        newStringBuilder.append("\n");
        newStringBuilder.append("                    LEFT JOIN user ON message.sender_id = user.user_id ");
        newStringBuilder.append("\n");
        newStringBuilder.append("                    WHERE message_id IN (");
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
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<FullMessageEntity>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.33
            /* JADX WARN: Removed duplicated region for block: B:100:0x0262  */
            /* JADX WARN: Removed duplicated region for block: B:101:0x0266 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:104:0x027e  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0281  */
            /* JADX WARN: Removed duplicated region for block: B:109:0x0298 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:121:0x02d4  */
            /* JADX WARN: Removed duplicated region for block: B:128:0x02f2  */
            /* JADX WARN: Removed duplicated region for block: B:129:0x02f5 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:132:0x0301  */
            /* JADX WARN: Removed duplicated region for block: B:133:0x0304 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:136:0x0314  */
            /* JADX WARN: Removed duplicated region for block: B:137:0x0317 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:140:0x0323  */
            /* JADX WARN: Removed duplicated region for block: B:141:0x0326  */
            /* JADX WARN: Removed duplicated region for block: B:145:0x0347 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:167:0x03af  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01a5  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01a8 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:68:0x01bc  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x01c2 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:72:0x01e0  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x01e3 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:76:0x01f3  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x01f6 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0206  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x0209 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:84:0x0219  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x021c A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x022c  */
            /* JADX WARN: Removed duplicated region for block: B:89:0x022f A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:92:0x023f  */
            /* JADX WARN: Removed duplicated region for block: B:93:0x0242  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x024a  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x024c A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.message.FullMessageEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 952
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass33.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object getMessagesByMediaIds(final List<Long> ids, final Continuation<? super List<FullMessageEntity>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM message ");
        newStringBuilder.append("\n");
        newStringBuilder.append("                    LEFT JOIN attachment ON attachment.parent_message_id = message.message_id");
        newStringBuilder.append("\n");
        newStringBuilder.append("                    LEFT JOIN user ON message.sender_id = user.user_id ");
        newStringBuilder.append("\n");
        newStringBuilder.append("                    WHERE message_id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(") OR media_id IN (");
        int size2 = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size2);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0 + size2);
        int i4 = 1;
        for (Long l10 : ids) {
            if (l10 == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindLong(i4, l10.longValue());
            }
            i4++;
        }
        int i10 = size + 1;
        for (Long l11 : ids) {
            if (l11 == null) {
                acquire.bindNull(i10);
            } else {
                acquire.bindLong(i10, l11.longValue());
            }
            i10++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<FullMessageEntity>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.35
            /* JADX WARN: Removed duplicated region for block: B:100:0x0262  */
            /* JADX WARN: Removed duplicated region for block: B:101:0x0266 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:104:0x027e  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0281  */
            /* JADX WARN: Removed duplicated region for block: B:109:0x0298 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:121:0x02d4  */
            /* JADX WARN: Removed duplicated region for block: B:128:0x02f2  */
            /* JADX WARN: Removed duplicated region for block: B:129:0x02f5 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:132:0x0301  */
            /* JADX WARN: Removed duplicated region for block: B:133:0x0304 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:136:0x0314  */
            /* JADX WARN: Removed duplicated region for block: B:137:0x0317 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:140:0x0323  */
            /* JADX WARN: Removed duplicated region for block: B:141:0x0326  */
            /* JADX WARN: Removed duplicated region for block: B:145:0x0347 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:167:0x03af  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01a5  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01a8 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:68:0x01bc  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x01c2 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:72:0x01e0  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x01e3 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:76:0x01f3  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x01f6 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0206  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x0209 A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:84:0x0219  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x021c A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x022c  */
            /* JADX WARN: Removed duplicated region for block: B:89:0x022f A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            /* JADX WARN: Removed duplicated region for block: B:92:0x023f  */
            /* JADX WARN: Removed duplicated region for block: B:93:0x0242  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x024a  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x024c A[Catch: all -> 0x0391, Exception -> 0x0395, TryCatch #5 {Exception -> 0x0395, all -> 0x0391, blocks: (B:9:0x006c, B:10:0x00bb, B:12:0x00c1, B:14:0x00d1, B:17:0x00e5, B:18:0x00fd, B:20:0x0103, B:22:0x0109, B:24:0x010f, B:26:0x0115, B:28:0x011b, B:30:0x0121, B:32:0x0127, B:34:0x012d, B:36:0x0133, B:38:0x013b, B:40:0x0143, B:42:0x0149, B:44:0x014f, B:46:0x0159, B:48:0x0163, B:50:0x016d, B:62:0x0197, B:66:0x01ae, B:70:0x01d0, B:74:0x01ed, B:78:0x0200, B:82:0x0213, B:86:0x0226, B:90:0x0239, B:94:0x0244, B:98:0x0250, B:102:0x026c, B:106:0x0283, B:107:0x0292, B:109:0x0298, B:111:0x02a2, B:113:0x02ac, B:115:0x02b6, B:117:0x02c0, B:126:0x02e8, B:130:0x02fb, B:134:0x030a, B:138:0x031d, B:142:0x0328, B:143:0x0337, B:145:0x0347, B:146:0x034c, B:137:0x0317, B:133:0x0304, B:129:0x02f5, B:101:0x0266, B:97:0x024c, B:89:0x022f, B:85:0x021c, B:81:0x0209, B:77:0x01f6, B:73:0x01e3, B:69:0x01c2, B:65:0x01a8), top: B:172:0x006c }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.message.FullMessageEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 952
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass35.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    protected Object getOtherUnreadMessages(final int currentUserId, final int chatId, final long messageId, final Continuation<? super List<Long>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT message_id FROM message WHERE (sender_id != ?) AND parent_chat_id = ? AND message_id <= ? AND status = 1", 3);
        acquire.bindLong(1, currentUserId);
        acquire.bindLong(2, chatId);
        acquire.bindLong(3, messageId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.27
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                Cursor query = DBUtil.query(MessageDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(query.isNull(0) ? null : Long.valueOf(query.getLong(0)));
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

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object getOthersUnreadMessageCount(final int currentUserId, final int chatId, final Continuation<? super Integer> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(message_id) FROM message WHERE parent_chat_id = ? AND sender_id != ? AND status = 1", 2);
        acquire.bindLong(1, chatId);
        acquire.bindLong(2, currentUserId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Integer>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.28
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                v0 D = c3.D();
                Integer num = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                Cursor query = DBUtil.query(MessageDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        if (query.moveToFirst() && !query.isNull(0)) {
                            num = Integer.valueOf(query.getInt(0));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
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
                    acquire.release();
                    throw th;
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object insert(final MessageEntity value, final Continuation continuation) {
        return insert2(value, (Continuation<? super Long>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insertOrUpdate(final List<? extends MessageEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.message.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$0;
                lambda$insertOrUpdate$0 = MessageDao_Impl.this.lambda$insertOrUpdate$0(list, (Continuation) obj);
                return lambda$insertOrUpdate$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public void modifyMessage(final long messageId, final String newContent, final long editedAt) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfModifyMessage.acquire();
        if (newContent == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, newContent);
        }
        acquire.bindLong(2, editedAt);
        acquire.bindLong(3, messageId);
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
            this.__preparedStmtOfModifyMessage.release(acquire);
        }
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object readMyMessage(final int currentUserId, final int chatId, final long messageId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.18
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfReadMyMessage.acquire();
                acquire.bindLong(1, currentUserId);
                acquire.bindLong(2, chatId);
                acquire.bindLong(3, messageId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfReadMyMessage.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    protected Object readOtherMessage(final int currentUserId, final int chatId, final long messageId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.19
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfReadOtherMessage.acquire();
                acquire.bindLong(1, currentUserId);
                acquire.bindLong(2, chatId);
                acquire.bindLong(3, messageId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfReadOtherMessage.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object readOtherMessages(final int currentUserId, final int chatId, final long messageId, final Continuation<? super List<Long>> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.message.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$readOtherMessages$1;
                lambda$readOtherMessages$1 = MessageDao_Impl.this.lambda$readOtherMessages$1(currentUserId, chatId, messageId, (Continuation) obj);
                return lambda$readOtherMessages$1;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object resetSendings(final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.25
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfResetSendings.acquire();
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfResetSendings.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object setMessageId(final long oldId, final long newId, final long sendTime, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.message.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$setMessageId$2;
                lambda$setMessageId$2 = MessageDao_Impl.this.lambda$setMessageId$2(oldId, newId, sendTime, (Continuation) obj);
                return lambda$setMessageId$2;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object setMessageIdUnsafe(final long oldId, final long newId, final long sendTime, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.23
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfSetMessageIdUnsafe.acquire();
                acquire.bindLong(1, newId);
                acquire.bindLong(2, sendTime);
                acquire.bindLong(3, oldId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfSetMessageIdUnsafe.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object setMessageSending(final long id, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.24
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfSetMessageSending.acquire();
                acquire.bindLong(1, id);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfSetMessageSending.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public Object setSendFailed(final long msgId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.26
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                SupportSQLiteStatement acquire = MessageDao_Impl.this.__preparedStmtOfSetSendFailed.acquire();
                acquire.bindLong(1, msgId);
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    MessageDao_Impl.this.__preparedStmtOfSetSendFailed.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public i<FullMessageEntity> subscribeLastReceivedMessage() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM full_message ORDER BY send_time DESC LIMIT 1", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"attachment", "full_message"}, new Callable<FullMessageEntity>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.36
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Removed duplicated region for block: B:100:0x0281  */
            /* JADX WARN: Removed duplicated region for block: B:104:0x0292 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:116:0x02bf  */
            /* JADX WARN: Removed duplicated region for block: B:123:0x02d3  */
            /* JADX WARN: Removed duplicated region for block: B:124:0x02d6 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:127:0x02e2  */
            /* JADX WARN: Removed duplicated region for block: B:128:0x02e5 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:131:0x02f5  */
            /* JADX WARN: Removed duplicated region for block: B:132:0x02f8 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:135:0x0304  */
            /* JADX WARN: Removed duplicated region for block: B:136:0x0307  */
            /* JADX WARN: Removed duplicated region for block: B:140:0x0318 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:152:0x0343  */
            /* JADX WARN: Removed duplicated region for block: B:159:0x0357  */
            /* JADX WARN: Removed duplicated region for block: B:160:0x035a A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:163:0x0366  */
            /* JADX WARN: Removed duplicated region for block: B:164:0x0369 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:167:0x0379  */
            /* JADX WARN: Removed duplicated region for block: B:168:0x037c A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:171:0x0388  */
            /* JADX WARN: Removed duplicated region for block: B:172:0x038b  */
            /* JADX WARN: Removed duplicated region for block: B:176:0x03a2 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:59:0x01b5  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x01b8 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:63:0x01cc  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01ce A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:67:0x01e6  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x01e9 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:71:0x01f9  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x01fc A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:75:0x020c  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x020f A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x021f  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0222 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x0232  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x0235 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:87:0x0245  */
            /* JADX WARN: Removed duplicated region for block: B:88:0x0248  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0250  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0252 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0268  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x026a A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:99:0x027e  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.message.FullMessageEntity call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 987
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass36.call():com.im.freechat.data.sources.database.entities.message.FullMessageEntity");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public i<List<FullMessageEntity>> subscribeMessages(final int id, final long laterThan) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM full_message WHERE parent_chat_id = ? AND send_time > ? ORDER BY message_id DESC", 2);
        acquire.bindLong(1, id);
        acquire.bindLong(2, laterThan);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"attachment", "full_message"}, new Callable<List<FullMessageEntity>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.31
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Removed duplicated region for block: B:100:0x029a  */
            /* JADX WARN: Removed duplicated region for block: B:101:0x029d  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x02ae A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:119:0x02f7  */
            /* JADX WARN: Removed duplicated region for block: B:125:0x0313  */
            /* JADX WARN: Removed duplicated region for block: B:126:0x0316 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:129:0x0322  */
            /* JADX WARN: Removed duplicated region for block: B:130:0x0325 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:133:0x0335  */
            /* JADX WARN: Removed duplicated region for block: B:134:0x0338 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:137:0x0344  */
            /* JADX WARN: Removed duplicated region for block: B:138:0x0347  */
            /* JADX WARN: Removed duplicated region for block: B:142:0x035e A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:154:0x039a  */
            /* JADX WARN: Removed duplicated region for block: B:161:0x03b8  */
            /* JADX WARN: Removed duplicated region for block: B:162:0x03bb A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:165:0x03c7  */
            /* JADX WARN: Removed duplicated region for block: B:166:0x03ca A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:169:0x03da  */
            /* JADX WARN: Removed duplicated region for block: B:170:0x03dd A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:173:0x03e9  */
            /* JADX WARN: Removed duplicated region for block: B:174:0x03ec  */
            /* JADX WARN: Removed duplicated region for block: B:178:0x040d A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:199:0x047c  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x01c3  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x01c6 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01da  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01e0 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:68:0x01fe  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x0201 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:72:0x0211  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0214 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0224  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x0227 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0237  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x023a A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:84:0x024a  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x024d A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x025d  */
            /* JADX WARN: Removed duplicated region for block: B:89:0x0260  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0268  */
            /* JADX WARN: Removed duplicated region for block: B:93:0x026a A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:96:0x0280  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x0284 A[Catch: all -> 0x045e, Exception -> 0x0462, TryCatch #4 {Exception -> 0x0462, all -> 0x045e, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:18:0x0128, B:20:0x012e, B:22:0x0134, B:24:0x013a, B:26:0x0140, B:28:0x0146, B:30:0x014c, B:32:0x0152, B:34:0x0158, B:36:0x015e, B:38:0x0164, B:40:0x016c, B:42:0x0174, B:44:0x017a, B:46:0x0184, B:48:0x018e, B:58:0x01b5, B:62:0x01cc, B:66:0x01ee, B:70:0x020b, B:74:0x021e, B:78:0x0231, B:82:0x0244, B:86:0x0257, B:90:0x0262, B:94:0x026e, B:98:0x028a, B:102:0x029f, B:103:0x02a8, B:105:0x02ae, B:107:0x02b6, B:109:0x02c0, B:111:0x02ca, B:113:0x02d4, B:123:0x0309, B:127:0x031c, B:131:0x032b, B:135:0x033e, B:139:0x0349, B:140:0x0358, B:142:0x035e, B:144:0x0368, B:146:0x0372, B:148:0x037c, B:150:0x0386, B:159:0x03ae, B:163:0x03c1, B:167:0x03d0, B:171:0x03e3, B:175:0x03ee, B:176:0x03fd, B:178:0x040d, B:179:0x0412, B:170:0x03dd, B:166:0x03ca, B:162:0x03bb, B:134:0x0338, B:130:0x0325, B:126:0x0316, B:97:0x0284, B:93:0x026a, B:85:0x024d, B:81:0x023a, B:77:0x0227, B:73:0x0214, B:69:0x0201, B:65:0x01e0, B:61:0x01c6), top: B:205:0x0071 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.message.FullMessageEntity> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 1152
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass31.call():java.util.List");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.message.MessageDao
    public i<FullMessageEntity> subscribePinnedMessageByChatId(final int id) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM full_message WHERE message_id = (SELECT pinned_message_id FROM chat WHERE chat_id = ?)", 1);
        acquire.bindLong(1, id);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"attachment", "full_message", "chat"}, new Callable<FullMessageEntity>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.32
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Removed duplicated region for block: B:100:0x0281  */
            /* JADX WARN: Removed duplicated region for block: B:104:0x0292 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:116:0x02bf  */
            /* JADX WARN: Removed duplicated region for block: B:123:0x02d3  */
            /* JADX WARN: Removed duplicated region for block: B:124:0x02d6 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:127:0x02e2  */
            /* JADX WARN: Removed duplicated region for block: B:128:0x02e5 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:131:0x02f5  */
            /* JADX WARN: Removed duplicated region for block: B:132:0x02f8 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:135:0x0304  */
            /* JADX WARN: Removed duplicated region for block: B:136:0x0307  */
            /* JADX WARN: Removed duplicated region for block: B:140:0x0318 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:152:0x0343  */
            /* JADX WARN: Removed duplicated region for block: B:159:0x0357  */
            /* JADX WARN: Removed duplicated region for block: B:160:0x035a A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:163:0x0366  */
            /* JADX WARN: Removed duplicated region for block: B:164:0x0369 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:167:0x0379  */
            /* JADX WARN: Removed duplicated region for block: B:168:0x037c A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:171:0x0388  */
            /* JADX WARN: Removed duplicated region for block: B:172:0x038b  */
            /* JADX WARN: Removed duplicated region for block: B:176:0x03a2 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:59:0x01b5  */
            /* JADX WARN: Removed duplicated region for block: B:60:0x01b8 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:63:0x01cc  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x01ce A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:67:0x01e6  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x01e9 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:71:0x01f9  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x01fc A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:75:0x020c  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x020f A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x021f  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0222 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x0232  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x0235 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:87:0x0245  */
            /* JADX WARN: Removed duplicated region for block: B:88:0x0248  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0250  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0252 A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0268  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x026a A[Catch: all -> 0x03bc, Exception -> 0x03c0, TryCatch #4 {Exception -> 0x03c0, all -> 0x03bc, blocks: (B:9:0x0071, B:10:0x00e6, B:12:0x00ec, B:14:0x00fc, B:17:0x0110, B:19:0x0125, B:21:0x012b, B:23:0x0131, B:25:0x0137, B:27:0x013d, B:29:0x0143, B:31:0x0149, B:33:0x014f, B:35:0x0155, B:37:0x015b, B:39:0x0163, B:41:0x016b, B:43:0x0171, B:45:0x0179, B:47:0x0183, B:57:0x01a7, B:61:0x01be, B:65:0x01d6, B:69:0x01f3, B:73:0x0206, B:77:0x0219, B:81:0x022c, B:85:0x023f, B:89:0x024a, B:93:0x0256, B:97:0x026e, B:101:0x0283, B:102:0x028c, B:104:0x0292, B:106:0x029a, B:108:0x02a2, B:110:0x02aa, B:112:0x02b2, B:121:0x02c9, B:125:0x02dc, B:129:0x02eb, B:133:0x02fe, B:137:0x0309, B:138:0x0312, B:140:0x0318, B:142:0x0320, B:144:0x0328, B:146:0x0330, B:148:0x0338, B:157:0x034d, B:161:0x0360, B:165:0x036f, B:169:0x0382, B:173:0x038d, B:174:0x0394, B:176:0x03a2, B:177:0x03a7, B:168:0x037c, B:164:0x0369, B:160:0x035a, B:132:0x02f8, B:128:0x02e5, B:124:0x02d6, B:96:0x026a, B:92:0x0252, B:84:0x0235, B:80:0x0222, B:76:0x020f, B:72:0x01fc, B:68:0x01e9, B:64:0x01ce, B:60:0x01b8), top: B:200:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:99:0x027e  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.message.FullMessageEntity call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 987
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.AnonymousClass32.call():com.im.freechat.data.sources.database.entities.message.FullMessageEntity");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object update(final MessageEntity value, final Continuation continuation) {
        return update2(value, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public void delete(final MessageEntity value) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__deletionAdapterOfMessageEntity.handle(value);
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
    public Object insert2(final MessageEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = MessageDao_Impl.this.__insertionAdapterOfMessageEntity.insertAndReturnId(value);
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    /* renamed from: update  reason: avoid collision after fix types in other method */
    public Object update2(final MessageEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.16
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        MessageDao_Impl.this.__updateAdapterOfMessageEntity.handle(value);
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insert(final List<? extends MessageEntity> values, final Continuation<? super List<Long>> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.15
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        List<Long> insertAndReturnIdsList = MessageDao_Impl.this.__insertionAdapterOfMessageEntity.insertAndReturnIdsList(values);
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object update(final List<? extends MessageEntity> values, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.message.MessageDao_Impl.17
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.message.MessageDao") : null;
                MessageDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        MessageDao_Impl.this.__updateAdapterOfMessageEntity.handleMultiple(values);
                        MessageDao_Impl.this.__db.setTransactionSuccessful();
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
                    MessageDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
