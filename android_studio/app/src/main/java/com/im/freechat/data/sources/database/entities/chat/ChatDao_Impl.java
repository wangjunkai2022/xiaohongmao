package com.im.freechat.data.sources.database.entities.chat;

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
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
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
public final class ChatDao_Impl extends ChatDao {
    private final Converters __converters = new Converters();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<ChatEntity> __deletionAdapterOfChatEntity;
    private final EntityInsertionAdapter<ChatEntity> __insertionAdapterOfChatEntity;
    private final EntityInsertionAdapter<PartialChatUpdateEntity> __insertionAdapterOfPartialChatUpdateEntityAsChatEntity;
    private final SharedSQLiteStatement __preparedStmtOfDeleteChatById;
    private final SharedSQLiteStatement __preparedStmtOfIncreaseUnreadCount;
    private final SharedSQLiteStatement __preparedStmtOfPinChatWithTime;
    private final SharedSQLiteStatement __preparedStmtOfPinMessage;
    private final SharedSQLiteStatement __preparedStmtOfUnpinChat;
    private final SharedSQLiteStatement __preparedStmtOfUpdateAvatar;
    private final SharedSQLiteStatement __preparedStmtOfUpdateDraftMessage;
    private final SharedSQLiteStatement __preparedStmtOfUpdateLastMessageId;
    private final SharedSQLiteStatement __preparedStmtOfUpdateLastSyncMessageId;
    private final SharedSQLiteStatement __preparedStmtOfUpdatePublicState;
    private final SharedSQLiteStatement __preparedStmtOfUpdateShowHistoryToNewMembers;
    private final SharedSQLiteStatement __preparedStmtOfUpdateTitle;
    private final SharedSQLiteStatement __preparedStmtOfUpdateUnreadCount;
    private final EntityDeletionOrUpdateAdapter<ChatEntity> __updateAdapterOfChatEntity;
    private final EntityDeletionOrUpdateAdapter<PartialChatUpdateEntity> __updateAdapterOfPartialChatUpdateEntityAsChatEntity;

    public ChatDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfChatEntity = new EntityInsertionAdapter<ChatEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `chat` (`chat_id`,`title`,`avatar`,`type`,`opponent_last_read_message_id`,`last_message_id`,`last_sync_message_id`,`unread_count`,`pinned_message_id`,`pinned_user_id`,`pinned_time`,`is_public`,`history_new_member`,`invitation_link`,`draft_message`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, ChatEntity value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                if (value.getAvatar() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatar());
                }
                stmt.bindLong(4, ChatDao_Impl.this.__converters.fromType(value.getType()));
                if (value.getLastReadMessageId() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindLong(5, value.getLastReadMessageId().longValue());
                }
                if (value.getLastChatMessageId() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getLastChatMessageId().longValue());
                }
                if (value.getLastSyncMessageId() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getLastSyncMessageId().longValue());
                }
                stmt.bindLong(8, value.getUnreadCount());
                if (value.getPinnedMessageId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getPinnedMessageId().longValue());
                }
                if (value.getPinnedUserId() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getPinnedUserId().intValue());
                }
                if (value.getPinnedTime() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getPinnedTime().longValue());
                }
                stmt.bindLong(12, value.isPublic() ? 1L : 0L);
                stmt.bindLong(13, value.getShowHistoryToNewMembers() ? 1L : 0L);
                if (value.getInvitationLink() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getInvitationLink());
                }
                if (value.getDraftMessage() == null) {
                    stmt.bindNull(15);
                } else {
                    stmt.bindString(15, value.getDraftMessage());
                }
            }
        };
        this.__insertionAdapterOfPartialChatUpdateEntityAsChatEntity = new EntityInsertionAdapter<PartialChatUpdateEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `chat` (`chat_id`,`title`,`avatar`,`type`,`opponent_last_read_message_id`,`last_message_id`,`unread_count`,`pinned_message_id`,`pinned_user_id`,`is_public`,`history_new_member`,`invitation_link`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, PartialChatUpdateEntity value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                if (value.getAvatar() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatar());
                }
                stmt.bindLong(4, ChatDao_Impl.this.__converters.fromType(value.getType()));
                if (value.getLastReadMessageId() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindLong(5, value.getLastReadMessageId().longValue());
                }
                if (value.getLastChatMessageId() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getLastChatMessageId().longValue());
                }
                stmt.bindLong(7, value.getUnreadCount());
                if (value.getPinnedMessageId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getPinnedMessageId().longValue());
                }
                if (value.getPinnedUserId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getPinnedUserId().intValue());
                }
                stmt.bindLong(10, value.isPublic() ? 1L : 0L);
                stmt.bindLong(11, value.getShowHistoryToNewMembers() ? 1L : 0L);
                if (value.getInvitationLink() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, value.getInvitationLink());
                }
            }
        };
        this.__deletionAdapterOfChatEntity = new EntityDeletionOrUpdateAdapter<ChatEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.3
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM `chat` WHERE `chat_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, ChatEntity value) {
                stmt.bindLong(1, value.getId());
            }
        };
        this.__updateAdapterOfChatEntity = new EntityDeletionOrUpdateAdapter<ChatEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.4
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `chat` SET `chat_id` = ?,`title` = ?,`avatar` = ?,`type` = ?,`opponent_last_read_message_id` = ?,`last_message_id` = ?,`last_sync_message_id` = ?,`unread_count` = ?,`pinned_message_id` = ?,`pinned_user_id` = ?,`pinned_time` = ?,`is_public` = ?,`history_new_member` = ?,`invitation_link` = ?,`draft_message` = ? WHERE `chat_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, ChatEntity value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                if (value.getAvatar() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatar());
                }
                stmt.bindLong(4, ChatDao_Impl.this.__converters.fromType(value.getType()));
                if (value.getLastReadMessageId() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindLong(5, value.getLastReadMessageId().longValue());
                }
                if (value.getLastChatMessageId() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getLastChatMessageId().longValue());
                }
                if (value.getLastSyncMessageId() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindLong(7, value.getLastSyncMessageId().longValue());
                }
                stmt.bindLong(8, value.getUnreadCount());
                if (value.getPinnedMessageId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getPinnedMessageId().longValue());
                }
                if (value.getPinnedUserId() == null) {
                    stmt.bindNull(10);
                } else {
                    stmt.bindLong(10, value.getPinnedUserId().intValue());
                }
                if (value.getPinnedTime() == null) {
                    stmt.bindNull(11);
                } else {
                    stmt.bindLong(11, value.getPinnedTime().longValue());
                }
                stmt.bindLong(12, value.isPublic() ? 1L : 0L);
                stmt.bindLong(13, value.getShowHistoryToNewMembers() ? 1L : 0L);
                if (value.getInvitationLink() == null) {
                    stmt.bindNull(14);
                } else {
                    stmt.bindString(14, value.getInvitationLink());
                }
                if (value.getDraftMessage() == null) {
                    stmt.bindNull(15);
                } else {
                    stmt.bindString(15, value.getDraftMessage());
                }
                stmt.bindLong(16, value.getId());
            }
        };
        this.__updateAdapterOfPartialChatUpdateEntityAsChatEntity = new EntityDeletionOrUpdateAdapter<PartialChatUpdateEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.5
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `chat` SET `chat_id` = ?,`title` = ?,`avatar` = ?,`type` = ?,`opponent_last_read_message_id` = ?,`last_message_id` = ?,`unread_count` = ?,`pinned_message_id` = ?,`pinned_user_id` = ?,`is_public` = ?,`history_new_member` = ?,`invitation_link` = ? WHERE `chat_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, PartialChatUpdateEntity value) {
                stmt.bindLong(1, value.getId());
                if (value.getTitle() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getTitle());
                }
                if (value.getAvatar() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatar());
                }
                stmt.bindLong(4, ChatDao_Impl.this.__converters.fromType(value.getType()));
                if (value.getLastReadMessageId() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindLong(5, value.getLastReadMessageId().longValue());
                }
                if (value.getLastChatMessageId() == null) {
                    stmt.bindNull(6);
                } else {
                    stmt.bindLong(6, value.getLastChatMessageId().longValue());
                }
                stmt.bindLong(7, value.getUnreadCount());
                if (value.getPinnedMessageId() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getPinnedMessageId().longValue());
                }
                if (value.getPinnedUserId() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindLong(9, value.getPinnedUserId().intValue());
                }
                stmt.bindLong(10, value.isPublic() ? 1L : 0L);
                stmt.bindLong(11, value.getShowHistoryToNewMembers() ? 1L : 0L);
                if (value.getInvitationLink() == null) {
                    stmt.bindNull(12);
                } else {
                    stmt.bindString(12, value.getInvitationLink());
                }
                stmt.bindLong(13, value.getId());
            }
        };
        this.__preparedStmtOfPinChatWithTime = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.6
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET pinned_time = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfPinMessage = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET pinned_message_id = ?, pinned_user_id = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateDraftMessage = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET draft_message = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdatePublicState = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET is_public = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateShowHistoryToNewMembers = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET history_new_member = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateTitle = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET title = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateAvatar = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET avatar = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateLastMessageId = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET last_message_id = ?, last_sync_message_id = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateLastSyncMessageId = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.14
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET last_sync_message_id = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUnpinChat = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.15
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET pinned_time = NULL WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfDeleteChatById = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.16
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM chat WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfUpdateUnreadCount = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.17
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET unread_count = ? WHERE chat_id = ?";
            }
        };
        this.__preparedStmtOfIncreaseUnreadCount = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.18
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE chat SET unread_count = unread_count + 1 WHERE chat_id = ?";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(final LongSparseArray<ArrayList<AttachmentEntity>> _map) {
        ArrayList<AttachmentEntity> arrayList;
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
                if (!query.isNull(columnIndex) && (arrayList = _map.get(query.getLong(columnIndex))) != null) {
                    arrayList.add(new AttachmentEntity(query.getLong(0), query.getLong(1), this.__converters.mediaTypeFromInt(query.getInt(2)), query.isNull(3) ? null : query.getString(3), query.isNull(4) ? null : query.getString(4), query.isNull(5) ? null : Integer.valueOf(query.getInt(5)), query.isNull(6) ? null : Integer.valueOf(query.getInt(6)), query.isNull(7) ? null : query.getString(7), query.isNull(8) ? null : query.getString(8), query.isNull(9) ? null : Long.valueOf(query.getLong(9)), query.isNull(10) ? null : Integer.valueOf(query.getInt(10)), query.isNull(11) ? null : Float.valueOf(query.getFloat(11)), query.isNull(12) ? null : Float.valueOf(query.getFloat(12)), query.isNull(13) ? null : query.getString(13), query.isNull(14) ? null : query.getString(14), query.isNull(15) ? null : query.getString(15)));
                }
            }
        } finally {
            query.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void __fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(final LongSparseArray<ArrayList<UserEntity>> _map) {
        int i4;
        if (_map.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            LongSparseArray<ArrayList<UserEntity>> longSparseArray = new LongSparseArray<>(999);
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
                __fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(longSparseArray);
                longSparseArray = new LongSparseArray<>(999);
            }
            if (i4 > 0) {
                __fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(longSparseArray);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `user`.`user_id` AS `user_id`,`user`.`nickname` AS `nickname`,`user`.`avatar_url` AS `avatar_url`,`user`.`management_role` AS `management_role`,`user`.`user_name_mask` AS `user_name_mask`,`user`.`is_service` AS `is_service`,`user`.`is_current` AS `is_current`,`user`.`last_online` AS `last_online`,`user`.`bio` AS `bio`,_junction.`chat_id` FROM `member` AS _junction INNER JOIN `user` ON (_junction.`user_id` = `user`.`user_id`) WHERE _junction.`chat_id` IN (");
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
        while (query.moveToNext()) {
            try {
                ArrayList<UserEntity> arrayList = _map.get(query.getLong(9));
                if (arrayList != null) {
                    arrayList.add(new UserEntity(query.getInt(0), query.isNull(1) ? null : query.getString(1), query.isNull(2) ? null : query.getString(2), query.getInt(3), query.isNull(4) ? null : query.getString(4), query.getInt(5) != 0, query.getInt(6) != 0, query.isNull(7) ? null : Long.valueOf(query.getLong(7)), query.isNull(8) ? null : query.getString(8)));
                }
            } finally {
                query.close();
            }
        }
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$deleteChatsNotInList$1(List list, Continuation continuation) {
        return super.deleteChatsNotInList(list, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdate$0(List list, Continuation continuation) {
        return super.insertOrUpdate(list, (Continuation<? super Unit>) continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdatePartial$2(List list, Continuation continuation) {
        return super.insertOrUpdatePartial(list, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object checkLastMessages(final List<Long> ids, final Continuation<? super List<Long>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT chat_id FROM chat WHERE last_message_id IN (");
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
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.48
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object deleteChatById(final int id, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.35
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfDeleteChatById.acquire();
                acquire.bindLong(1, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfDeleteChatById.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object deleteChatsByIds(final List<Integer> ids, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.52
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                StringBuilder newStringBuilder = StringUtil.newStringBuilder();
                newStringBuilder.append("DELETE FROM chat WHERE chat_id IN (");
                StringUtil.appendPlaceholders(newStringBuilder, ids.size());
                newStringBuilder.append(")");
                SupportSQLiteStatement compileStatement = ChatDao_Impl.this.__db.compileStatement(newStringBuilder.toString());
                int i4 = 1;
                for (Integer num : ids) {
                    if (num == null) {
                        compileStatement.bindNull(i4);
                    } else {
                        compileStatement.bindLong(i4, num.intValue());
                    }
                    i4++;
                }
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        compileStatement.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object deleteChatsNotInList(final List<Integer> ids, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.chat.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$deleteChatsNotInList$1;
                lambda$deleteChatsNotInList$1 = ChatDao_Impl.this.lambda$deleteChatsNotInList$1(ids, (Continuation) obj);
                return lambda$deleteChatsNotInList$1;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getAllChatIds(final Continuation<? super List<Integer>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT chat_id FROM chat", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Integer>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.46
            @Override // java.util.concurrent.Callable
            public List<Integer> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getAllChats(final Continuation<? super List<ChatWithContacts>> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id", 0);
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<List<ChatWithContacts>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.38
            /* JADX WARN: Removed duplicated region for block: B:101:0x02f5  */
            /* JADX WARN: Removed duplicated region for block: B:102:0x02f8  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x0300  */
            /* JADX WARN: Removed duplicated region for block: B:106:0x0305  */
            /* JADX WARN: Removed duplicated region for block: B:109:0x030f  */
            /* JADX WARN: Removed duplicated region for block: B:110:0x0312 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:113:0x031e  */
            /* JADX WARN: Removed duplicated region for block: B:114:0x0321 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:118:0x0336  */
            /* JADX WARN: Removed duplicated region for block: B:183:0x049c  */
            /* JADX WARN: Removed duplicated region for block: B:197:0x04d8 A[Catch: all -> 0x0792, TryCatch #0 {all -> 0x0792, blocks: (B:119:0x033a, B:121:0x0340, B:123:0x034a, B:125:0x0354, B:127:0x035e, B:129:0x0368, B:131:0x0372, B:133:0x037c, B:135:0x0386, B:137:0x0390, B:139:0x039a, B:141:0x03a4, B:143:0x03ae, B:145:0x03b8, B:147:0x03c0, B:149:0x03ca, B:151:0x03d4, B:153:0x03de, B:155:0x03e8, B:157:0x03f2, B:159:0x03fc, B:195:0x04d2, B:197:0x04d8, B:199:0x04de, B:201:0x04e4, B:203:0x04ea, B:205:0x04f0, B:207:0x04f6, B:209:0x04fc, B:211:0x0502, B:213:0x0508, B:215:0x050e, B:217:0x0514, B:219:0x051a, B:221:0x0520, B:223:0x0526, B:225:0x0530, B:233:0x0553, B:237:0x056a, B:241:0x0582, B:236:0x0564), top: B:366:0x033a }] */
            /* JADX WARN: Removed duplicated region for block: B:235:0x0561  */
            /* JADX WARN: Removed duplicated region for block: B:236:0x0564 A[Catch: all -> 0x0792, TryCatch #0 {all -> 0x0792, blocks: (B:119:0x033a, B:121:0x0340, B:123:0x034a, B:125:0x0354, B:127:0x035e, B:129:0x0368, B:131:0x0372, B:133:0x037c, B:135:0x0386, B:137:0x0390, B:139:0x039a, B:141:0x03a4, B:143:0x03ae, B:145:0x03b8, B:147:0x03c0, B:149:0x03ca, B:151:0x03d4, B:153:0x03de, B:155:0x03e8, B:157:0x03f2, B:159:0x03fc, B:195:0x04d2, B:197:0x04d8, B:199:0x04de, B:201:0x04e4, B:203:0x04ea, B:205:0x04f0, B:207:0x04f6, B:209:0x04fc, B:211:0x0502, B:213:0x0508, B:215:0x050e, B:217:0x0514, B:219:0x051a, B:221:0x0520, B:223:0x0526, B:225:0x0530, B:233:0x0553, B:237:0x056a, B:241:0x0582, B:236:0x0564), top: B:366:0x033a }] */
            /* JADX WARN: Removed duplicated region for block: B:239:0x0578  */
            /* JADX WARN: Removed duplicated region for block: B:241:0x0582 A[Catch: all -> 0x0792, TRY_LEAVE, TryCatch #0 {all -> 0x0792, blocks: (B:119:0x033a, B:121:0x0340, B:123:0x034a, B:125:0x0354, B:127:0x035e, B:129:0x0368, B:131:0x0372, B:133:0x037c, B:135:0x0386, B:137:0x0390, B:139:0x039a, B:141:0x03a4, B:143:0x03ae, B:145:0x03b8, B:147:0x03c0, B:149:0x03ca, B:151:0x03d4, B:153:0x03de, B:155:0x03e8, B:157:0x03f2, B:159:0x03fc, B:195:0x04d2, B:197:0x04d8, B:199:0x04de, B:201:0x04e4, B:203:0x04ea, B:205:0x04f0, B:207:0x04f6, B:209:0x04fc, B:211:0x0502, B:213:0x0508, B:215:0x050e, B:217:0x0514, B:219:0x051a, B:221:0x0520, B:223:0x0526, B:225:0x0530, B:233:0x0553, B:237:0x056a, B:241:0x0582, B:236:0x0564), top: B:366:0x033a }] */
            /* JADX WARN: Removed duplicated region for block: B:245:0x05a3  */
            /* JADX WARN: Removed duplicated region for block: B:246:0x05a6 A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:249:0x05b6  */
            /* JADX WARN: Removed duplicated region for block: B:250:0x05b9 A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:253:0x05c9  */
            /* JADX WARN: Removed duplicated region for block: B:254:0x05cc A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:257:0x05dc  */
            /* JADX WARN: Removed duplicated region for block: B:258:0x05df A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:261:0x05ef  */
            /* JADX WARN: Removed duplicated region for block: B:262:0x05f2 A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:265:0x0602  */
            /* JADX WARN: Removed duplicated region for block: B:266:0x0605  */
            /* JADX WARN: Removed duplicated region for block: B:269:0x060d  */
            /* JADX WARN: Removed duplicated region for block: B:270:0x060f A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:273:0x0623  */
            /* JADX WARN: Removed duplicated region for block: B:274:0x0625 A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:277:0x063b  */
            /* JADX WARN: Removed duplicated region for block: B:278:0x063e  */
            /* JADX WARN: Removed duplicated region for block: B:282:0x0653 A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:294:0x068a  */
            /* JADX WARN: Removed duplicated region for block: B:301:0x06a8  */
            /* JADX WARN: Removed duplicated region for block: B:302:0x06ab A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:305:0x06b7  */
            /* JADX WARN: Removed duplicated region for block: B:306:0x06ba A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:309:0x06ca  */
            /* JADX WARN: Removed duplicated region for block: B:310:0x06cd A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:313:0x06d9  */
            /* JADX WARN: Removed duplicated region for block: B:314:0x06dc  */
            /* JADX WARN: Removed duplicated region for block: B:318:0x06ef A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:319:0x0702  */
            /* JADX WARN: Removed duplicated region for block: B:321:0x070d A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:325:0x072a A[Catch: all -> 0x07c6, TryCatch #2 {all -> 0x07c6, blocks: (B:243:0x0593, B:247:0x05b0, B:251:0x05c3, B:255:0x05d6, B:259:0x05e9, B:263:0x05fc, B:267:0x0607, B:271:0x0613, B:275:0x0629, B:279:0x0640, B:280:0x064d, B:282:0x0653, B:284:0x065d, B:286:0x0667, B:288:0x0671, B:290:0x067b, B:299:0x069e, B:303:0x06b1, B:307:0x06c0, B:311:0x06d3, B:315:0x06de, B:316:0x06e9, B:318:0x06ef, B:321:0x070d, B:322:0x0712, B:323:0x071c, B:325:0x072a, B:326:0x072f, B:310:0x06cd, B:306:0x06ba, B:302:0x06ab, B:274:0x0625, B:270:0x060f, B:262:0x05f2, B:258:0x05df, B:254:0x05cc, B:250:0x05b9, B:246:0x05a6, B:329:0x0796, B:331:0x07a3), top: B:368:0x0593 }] */
            /* JADX WARN: Removed duplicated region for block: B:359:0x07e1 A[Catch: all -> 0x07ea, TRY_ENTER, TryCatch #5 {all -> 0x07ea, blocks: (B:350:0x07cf, B:351:0x07d7, B:338:0x07af, B:359:0x07e1, B:360:0x07e9), top: B:373:0x001e }] */
            /* JADX WARN: Removed duplicated region for block: B:385:0x072f A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:69:0x024d  */
            /* JADX WARN: Removed duplicated region for block: B:70:0x0250 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:73:0x025c  */
            /* JADX WARN: Removed duplicated region for block: B:74:0x0261 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:77:0x027f  */
            /* JADX WARN: Removed duplicated region for block: B:78:0x0282 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:81:0x0292  */
            /* JADX WARN: Removed duplicated region for block: B:82:0x0295 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:85:0x02a5  */
            /* JADX WARN: Removed duplicated region for block: B:86:0x02a8 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:89:0x02bc  */
            /* JADX WARN: Removed duplicated region for block: B:90:0x02bf A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:93:0x02cf  */
            /* JADX WARN: Removed duplicated region for block: B:94:0x02d2 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:97:0x02e2  */
            /* JADX WARN: Removed duplicated region for block: B:98:0x02e5 A[Catch: all -> 0x07c8, TryCatch #4 {all -> 0x07c8, blocks: (B:10:0x0075, B:11:0x0143, B:13:0x0149, B:15:0x0159, B:17:0x0166, B:19:0x016c, B:21:0x0178, B:23:0x0187, B:24:0x01a4, B:26:0x01aa, B:28:0x01b0, B:30:0x01b6, B:32:0x01bc, B:34:0x01c2, B:36:0x01c8, B:38:0x01ce, B:40:0x01d4, B:42:0x01da, B:44:0x01e2, B:46:0x01ea, B:48:0x01f4, B:50:0x01fe, B:52:0x0208, B:54:0x0212, B:67:0x0243, B:71:0x0256, B:75:0x0269, B:79:0x028c, B:83:0x029f, B:87:0x02b2, B:91:0x02c9, B:95:0x02dc, B:99:0x02ef, B:103:0x02fa, B:107:0x0309, B:111:0x0318, B:115:0x0327, B:116:0x0330, B:114:0x0321, B:110:0x0312, B:98:0x02e5, B:94:0x02d2, B:90:0x02bf, B:86:0x02a8, B:82:0x0295, B:78:0x0282, B:74:0x0261, B:70:0x0250), top: B:371:0x0075 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.chat.ChatWithContacts> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 2042
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass38.call():java.util.List");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getChatById(final int id, final Continuation<? super ChatWithContacts> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?", 1);
        acquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<ChatWithContacts>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.42
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Removed duplicated region for block: B:102:0x02aa  */
            /* JADX WARN: Removed duplicated region for block: B:103:0x02af  */
            /* JADX WARN: Removed duplicated region for block: B:106:0x02b9  */
            /* JADX WARN: Removed duplicated region for block: B:107:0x02bc A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:110:0x02c8  */
            /* JADX WARN: Removed duplicated region for block: B:111:0x02cb A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:115:0x02e0  */
            /* JADX WARN: Removed duplicated region for block: B:159:0x0399  */
            /* JADX WARN: Removed duplicated region for block: B:175:0x03bf A[Catch: all -> 0x0541, Exception -> 0x0545, TryCatch #8 {Exception -> 0x0545, all -> 0x0541, blocks: (B:116:0x02e2, B:118:0x02e8, B:120:0x02f0, B:122:0x02f8, B:124:0x0300, B:126:0x0308, B:128:0x0310, B:130:0x0318, B:132:0x0320, B:134:0x0328, B:136:0x0330, B:138:0x0338, B:140:0x0342, B:142:0x034c, B:173:0x03b9, B:175:0x03bf, B:177:0x03c5, B:179:0x03cb, B:181:0x03d1, B:183:0x03d7, B:185:0x03dd, B:187:0x03e3, B:189:0x03e9, B:191:0x03ef, B:193:0x03f5, B:195:0x03fb, B:197:0x0401, B:199:0x0407, B:201:0x040d, B:205:0x0419, B:209:0x0430, B:213:0x0442, B:208:0x042a), top: B:301:0x02e2 }] */
            /* JADX WARN: Removed duplicated region for block: B:207:0x0427  */
            /* JADX WARN: Removed duplicated region for block: B:208:0x042a A[Catch: all -> 0x0541, Exception -> 0x0545, TryCatch #8 {Exception -> 0x0545, all -> 0x0541, blocks: (B:116:0x02e2, B:118:0x02e8, B:120:0x02f0, B:122:0x02f8, B:124:0x0300, B:126:0x0308, B:128:0x0310, B:130:0x0318, B:132:0x0320, B:134:0x0328, B:136:0x0330, B:138:0x0338, B:140:0x0342, B:142:0x034c, B:173:0x03b9, B:175:0x03bf, B:177:0x03c5, B:179:0x03cb, B:181:0x03d1, B:183:0x03d7, B:185:0x03dd, B:187:0x03e3, B:189:0x03e9, B:191:0x03ef, B:193:0x03f5, B:195:0x03fb, B:197:0x0401, B:199:0x0407, B:201:0x040d, B:205:0x0419, B:209:0x0430, B:213:0x0442, B:208:0x042a), top: B:301:0x02e2 }] */
            /* JADX WARN: Removed duplicated region for block: B:211:0x043e  */
            /* JADX WARN: Removed duplicated region for block: B:213:0x0442 A[Catch: all -> 0x0541, Exception -> 0x0545, TRY_LEAVE, TryCatch #8 {Exception -> 0x0545, all -> 0x0541, blocks: (B:116:0x02e2, B:118:0x02e8, B:120:0x02f0, B:122:0x02f8, B:124:0x0300, B:126:0x0308, B:128:0x0310, B:130:0x0318, B:132:0x0320, B:134:0x0328, B:136:0x0330, B:138:0x0338, B:140:0x0342, B:142:0x034c, B:173:0x03b9, B:175:0x03bf, B:177:0x03c5, B:179:0x03cb, B:181:0x03d1, B:183:0x03d7, B:185:0x03dd, B:187:0x03e3, B:189:0x03e9, B:191:0x03ef, B:193:0x03f5, B:195:0x03fb, B:197:0x0401, B:199:0x0407, B:201:0x040d, B:205:0x0419, B:209:0x0430, B:213:0x0442, B:208:0x042a), top: B:301:0x02e2 }] */
            /* JADX WARN: Removed duplicated region for block: B:217:0x045b  */
            /* JADX WARN: Removed duplicated region for block: B:218:0x045e A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:221:0x046e  */
            /* JADX WARN: Removed duplicated region for block: B:222:0x0471 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:225:0x0481  */
            /* JADX WARN: Removed duplicated region for block: B:226:0x0484 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:229:0x0494  */
            /* JADX WARN: Removed duplicated region for block: B:230:0x0497 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:233:0x04a7  */
            /* JADX WARN: Removed duplicated region for block: B:234:0x04aa A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:237:0x04ba  */
            /* JADX WARN: Removed duplicated region for block: B:238:0x04bd  */
            /* JADX WARN: Removed duplicated region for block: B:241:0x04c5  */
            /* JADX WARN: Removed duplicated region for block: B:242:0x04c7 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:245:0x04db  */
            /* JADX WARN: Removed duplicated region for block: B:246:0x04dd A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:249:0x04f1  */
            /* JADX WARN: Removed duplicated region for block: B:250:0x04f4  */
            /* JADX WARN: Removed duplicated region for block: B:254:0x0503 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:255:0x0510  */
            /* JADX WARN: Removed duplicated region for block: B:257:0x0513 A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:261:0x052e A[Catch: all -> 0x053d, Exception -> 0x053f, TryCatch #9 {Exception -> 0x053f, all -> 0x053d, blocks: (B:252:0x04fd, B:254:0x0503, B:257:0x0513, B:258:0x0518, B:259:0x0520, B:261:0x052e, B:262:0x0533, B:215:0x044b, B:219:0x0468, B:223:0x047b, B:227:0x048e, B:231:0x04a1, B:235:0x04b4, B:239:0x04bf, B:243:0x04cb, B:247:0x04e1, B:251:0x04f6, B:246:0x04dd, B:242:0x04c7, B:234:0x04aa, B:230:0x0497, B:226:0x0484, B:222:0x0471, B:218:0x045e), top: B:299:0x044b }] */
            /* JADX WARN: Removed duplicated region for block: B:294:0x0580  */
            /* JADX WARN: Removed duplicated region for block: B:297:0x0571 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:66:0x01fd  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0200 A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:70:0x020c  */
            /* JADX WARN: Removed duplicated region for block: B:71:0x020f A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:74:0x0229  */
            /* JADX WARN: Removed duplicated region for block: B:75:0x022c A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:78:0x023c  */
            /* JADX WARN: Removed duplicated region for block: B:79:0x023f A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:82:0x024f  */
            /* JADX WARN: Removed duplicated region for block: B:83:0x0252 A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:86:0x0266  */
            /* JADX WARN: Removed duplicated region for block: B:87:0x0269 A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:90:0x0279  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x027c A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:94:0x028c  */
            /* JADX WARN: Removed duplicated region for block: B:95:0x028f A[Catch: all -> 0x055e, Exception -> 0x0563, TryCatch #6 {Exception -> 0x0563, all -> 0x055e, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:24:0x0163, B:26:0x0169, B:28:0x016f, B:30:0x0175, B:32:0x017b, B:34:0x0181, B:36:0x0187, B:38:0x018d, B:40:0x0193, B:42:0x019b, B:44:0x01a3, B:46:0x01ab, B:48:0x01b5, B:50:0x01bf, B:52:0x01c9, B:64:0x01f3, B:68:0x0206, B:72:0x0215, B:76:0x0236, B:80:0x0249, B:84:0x025c, B:88:0x0273, B:92:0x0286, B:96:0x0299, B:100:0x02a4, B:104:0x02b3, B:108:0x02c2, B:112:0x02d1, B:113:0x02da, B:111:0x02cb, B:107:0x02bc, B:95:0x028f, B:91:0x027c, B:87:0x0269, B:83:0x0252, B:79:0x023f, B:75:0x022c, B:71:0x020f, B:67:0x0200), top: B:305:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:98:0x029f  */
            /* JADX WARN: Removed duplicated region for block: B:99:0x02a2  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.chat.ChatWithContacts call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 1417
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass42.call():com.im.freechat.data.sources.database.entities.chat.ChatWithContacts");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getChatByIdWithContacts(final int id, final Continuation<? super ChatWithContacts> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?", 1);
        acquire.bindLong(1, id);
        return CoroutinesRoom.execute(this.__db, true, DBUtil.createCancellationSignal(), new Callable<ChatWithContacts>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.47
            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:100:0x02ab  */
            /* JADX WARN: Removed duplicated region for block: B:103:0x02b3  */
            /* JADX WARN: Removed duplicated region for block: B:104:0x02b8  */
            /* JADX WARN: Removed duplicated region for block: B:107:0x02c2  */
            /* JADX WARN: Removed duplicated region for block: B:108:0x02c5 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:111:0x02d1  */
            /* JADX WARN: Removed duplicated region for block: B:112:0x02d4 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:116:0x02e9  */
            /* JADX WARN: Removed duplicated region for block: B:160:0x03a2  */
            /* JADX WARN: Removed duplicated region for block: B:176:0x03c8 A[Catch: all -> 0x0546, TryCatch #5 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:309:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:208:0x0430  */
            /* JADX WARN: Removed duplicated region for block: B:209:0x0433 A[Catch: all -> 0x0546, TryCatch #5 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:309:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:212:0x0447  */
            /* JADX WARN: Removed duplicated region for block: B:214:0x044b A[Catch: all -> 0x0546, TRY_LEAVE, TryCatch #5 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:309:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:218:0x0464  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x0467 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:222:0x0477  */
            /* JADX WARN: Removed duplicated region for block: B:223:0x047a A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:226:0x048a  */
            /* JADX WARN: Removed duplicated region for block: B:227:0x048d A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:230:0x049d  */
            /* JADX WARN: Removed duplicated region for block: B:231:0x04a0 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:234:0x04b0  */
            /* JADX WARN: Removed duplicated region for block: B:235:0x04b3 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:238:0x04c3  */
            /* JADX WARN: Removed duplicated region for block: B:239:0x04c6  */
            /* JADX WARN: Removed duplicated region for block: B:242:0x04ce  */
            /* JADX WARN: Removed duplicated region for block: B:243:0x04d0 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:246:0x04e4  */
            /* JADX WARN: Removed duplicated region for block: B:247:0x04e6 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:250:0x04fa  */
            /* JADX WARN: Removed duplicated region for block: B:251:0x04fd  */
            /* JADX WARN: Removed duplicated region for block: B:255:0x050c A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:256:0x0519  */
            /* JADX WARN: Removed duplicated region for block: B:258:0x051c A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:262:0x0537 A[Catch: all -> 0x057b, TryCatch #6 {all -> 0x057b, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:311:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:297:0x0599 A[Catch: all -> 0x05a2, TRY_ENTER, TryCatch #2 {all -> 0x05a2, blocks: (B:276:0x0564, B:297:0x0599, B:298:0x05a1, B:288:0x0585, B:289:0x058d), top: B:306:0x001d }] */
            /* JADX WARN: Removed duplicated region for block: B:302:0x05ae  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0206  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x0209 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0215  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x0218 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:75:0x0232  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0235 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0245  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0248 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x0258  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x025b A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:87:0x026f  */
            /* JADX WARN: Removed duplicated region for block: B:88:0x0272 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0282  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0285 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0295  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x0298 A[Catch: all -> 0x057d, TryCatch #8 {all -> 0x057d, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:313:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:99:0x02a8  */
            /* JADX WARN: Type inference failed for: r1v0, types: [com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl$47] */
            /* JADX WARN: Type inference failed for: r1v1 */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v3, types: [io.sentry.v0] */
            /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.v0] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.chat.ChatWithContacts call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 1458
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass47.call():com.im.freechat.data.sources.database.entities.chat.ChatWithContacts");
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getLastSyncMessageId(final Continuation<? super Long> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT MAX(last_sync_message_id) FROM chat", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.50
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                Long l10 = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getNonPredefinedChatIds(final List<Integer> nonPredefinedTypes, final Continuation<? super List<Integer>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT chat.chat_id FROM chat WHERE type in (");
        int size = nonPredefinedTypes.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Integer num : nonPredefinedTypes) {
            if (num == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindLong(i4, num.intValue());
            }
            i4++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<Integer>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.39
            @Override // java.util.concurrent.Callable
            public List<Integer> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getServiceChatId(final int type, final Continuation<? super Integer> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT chat.chat_id FROM chat WHERE type = ?", 1);
        acquire.bindLong(1, type);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Integer>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.43
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                v0 D = c3.D();
                Integer num = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object increaseUnreadCount(final int id, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.37
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfIncreaseUnreadCount.acquire();
                acquire.bindLong(1, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfIncreaseUnreadCount.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object insert(final ChatEntity value, final Continuation continuation) {
        return insert2(value, (Continuation<? super Long>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insertOrUpdate(final List<? extends ChatEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.chat.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$0;
                lambda$insertOrUpdate$0 = ChatDao_Impl.this.lambda$insertOrUpdate$0(list, (Continuation) obj);
                return lambda$insertOrUpdate$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object insertOrUpdatePartial(final List<PartialChatUpdateEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.chat.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdatePartial$2;
                lambda$insertOrUpdatePartial$2 = ChatDao_Impl.this.lambda$insertOrUpdatePartial$2(list, (Continuation) obj);
                return lambda$insertOrUpdatePartial$2;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public i<List<ChatWithContacts>> listenCommonGroupsForUserId(final int userId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT chat.*, message.*  FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id INNER JOIN member ON chat.chat_id = member.chat_id WHERE user_id = ? AND type = 2 ", 1);
        acquire.bindLong(1, userId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"member", "user", "attachment", "chat", "message"}, new Callable<List<ChatWithContacts>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.45
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Removed duplicated region for block: B:100:0x02b8  */
            /* JADX WARN: Removed duplicated region for block: B:101:0x02bb  */
            /* JADX WARN: Removed duplicated region for block: B:104:0x02c3  */
            /* JADX WARN: Removed duplicated region for block: B:105:0x02c8  */
            /* JADX WARN: Removed duplicated region for block: B:108:0x02d2  */
            /* JADX WARN: Removed duplicated region for block: B:109:0x02d5 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:112:0x02e1  */
            /* JADX WARN: Removed duplicated region for block: B:113:0x02e4 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:117:0x02f9 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:161:0x03f0  */
            /* JADX WARN: Removed duplicated region for block: B:175:0x042c A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:207:0x049a  */
            /* JADX WARN: Removed duplicated region for block: B:208:0x049d A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:211:0x04b1  */
            /* JADX WARN: Removed duplicated region for block: B:213:0x04bb A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:216:0x04dc  */
            /* JADX WARN: Removed duplicated region for block: B:217:0x04df A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:220:0x04ef  */
            /* JADX WARN: Removed duplicated region for block: B:221:0x04f2 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:224:0x0502  */
            /* JADX WARN: Removed duplicated region for block: B:225:0x0505 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:228:0x0515  */
            /* JADX WARN: Removed duplicated region for block: B:229:0x0518 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:232:0x0528  */
            /* JADX WARN: Removed duplicated region for block: B:233:0x052b A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:236:0x053b  */
            /* JADX WARN: Removed duplicated region for block: B:237:0x053e  */
            /* JADX WARN: Removed duplicated region for block: B:240:0x0546  */
            /* JADX WARN: Removed duplicated region for block: B:241:0x0548 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:244:0x055c  */
            /* JADX WARN: Removed duplicated region for block: B:245:0x055e A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:248:0x0572  */
            /* JADX WARN: Removed duplicated region for block: B:249:0x0575  */
            /* JADX WARN: Removed duplicated region for block: B:253:0x0584 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:254:0x0596  */
            /* JADX WARN: Removed duplicated region for block: B:256:0x05a0 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:260:0x05bf A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:281:0x0644  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x0210  */
            /* JADX WARN: Removed duplicated region for block: B:69:0x0213 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:72:0x021f  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0224 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0242  */
            /* JADX WARN: Removed duplicated region for block: B:77:0x0245 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0255  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x0258 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:84:0x0268  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x026b A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:88:0x027f  */
            /* JADX WARN: Removed duplicated region for block: B:89:0x0282 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0292  */
            /* JADX WARN: Removed duplicated region for block: B:93:0x0295 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            /* JADX WARN: Removed duplicated region for block: B:96:0x02a5  */
            /* JADX WARN: Removed duplicated region for block: B:97:0x02a8 A[Catch: all -> 0x0626, Exception -> 0x062a, TryCatch #5 {Exception -> 0x062a, all -> 0x0626, blocks: (B:9:0x0071, B:10:0x0105, B:12:0x010b, B:14:0x011b, B:16:0x0128, B:18:0x012e, B:20:0x013a, B:22:0x0149, B:23:0x0166, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b6, B:49:0x01c0, B:51:0x01ca, B:53:0x01d4, B:66:0x0206, B:70:0x0219, B:74:0x022c, B:78:0x024f, B:82:0x0262, B:86:0x0275, B:90:0x028c, B:94:0x029f, B:98:0x02b2, B:102:0x02bd, B:106:0x02cc, B:110:0x02db, B:114:0x02ea, B:115:0x02f3, B:117:0x02f9, B:119:0x0303, B:121:0x030d, B:123:0x0317, B:125:0x0321, B:127:0x032b, B:129:0x0335, B:131:0x033f, B:133:0x0349, B:135:0x0353, B:137:0x035d, B:139:0x0367, B:141:0x0371, B:143:0x037b, B:173:0x0426, B:175:0x042c, B:177:0x0432, B:179:0x0438, B:181:0x043e, B:183:0x0444, B:185:0x044a, B:187:0x0450, B:189:0x0456, B:191:0x045c, B:193:0x0462, B:195:0x0468, B:197:0x046e, B:199:0x0474, B:201:0x047a, B:251:0x057e, B:253:0x0584, B:256:0x05a0, B:257:0x05a5, B:258:0x05af, B:260:0x05bf, B:261:0x05c4, B:205:0x048c, B:209:0x04a3, B:214:0x04cc, B:218:0x04e9, B:222:0x04fc, B:226:0x050f, B:230:0x0522, B:234:0x0535, B:238:0x0540, B:242:0x054c, B:246:0x0562, B:250:0x0577, B:245:0x055e, B:241:0x0548, B:233:0x052b, B:229:0x0518, B:225:0x0505, B:221:0x04f2, B:217:0x04df, B:213:0x04bb, B:208:0x049d, B:113:0x02e4, B:109:0x02d5, B:97:0x02a8, B:93:0x0295, B:89:0x0282, B:85:0x026b, B:81:0x0258, B:77:0x0245, B:73:0x0224, B:69:0x0213), top: B:285:0x0071 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.chat.ChatWithContacts> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 1608
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass45.call():java.util.List");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public i<Integer> listenSingleChatForUserId(final int userId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT chat_id FROM chat WHERE chat_id = ?", 1);
        acquire.bindLong(1, userId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"chat"}, new Callable<Integer>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.44
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                v0 D = c3.D();
                Integer num = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public i<Integer> listenTotalUnreadCount() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT SUM(unread_count) from chat", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"chat"}, new Callable<Integer>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.49
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Integer call() throws Exception {
                v0 D = c3.D();
                Integer num = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object pinChatWithTime(final int id, final long time, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.25
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfPinChatWithTime.acquire();
                acquire.bindLong(1, time);
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfPinChatWithTime.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object pinMessage(final int chatId, final Long messageId, final Integer userId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.26
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfPinMessage.acquire();
                Long l10 = messageId;
                if (l10 == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindLong(1, l10.longValue());
                }
                Integer num = userId;
                if (num == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindLong(2, num.intValue());
                }
                acquire.bindLong(3, chatId);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfPinMessage.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public i<ChatWithContacts> subscribeChat(final int id) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?", 1);
        acquire.bindLong(1, id);
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"member", "user", "attachment", "chat", "message"}, new Callable<ChatWithContacts>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.41
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:100:0x02ab  */
            /* JADX WARN: Removed duplicated region for block: B:103:0x02b3  */
            /* JADX WARN: Removed duplicated region for block: B:104:0x02b8  */
            /* JADX WARN: Removed duplicated region for block: B:107:0x02c2  */
            /* JADX WARN: Removed duplicated region for block: B:108:0x02c5 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:111:0x02d1  */
            /* JADX WARN: Removed duplicated region for block: B:112:0x02d4 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:116:0x02e9  */
            /* JADX WARN: Removed duplicated region for block: B:160:0x03a2  */
            /* JADX WARN: Removed duplicated region for block: B:176:0x03c8 A[Catch: all -> 0x0546, TryCatch #2 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:308:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:208:0x0430  */
            /* JADX WARN: Removed duplicated region for block: B:209:0x0433 A[Catch: all -> 0x0546, TryCatch #2 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:308:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:212:0x0447  */
            /* JADX WARN: Removed duplicated region for block: B:214:0x044b A[Catch: all -> 0x0546, TRY_LEAVE, TryCatch #2 {all -> 0x0546, blocks: (B:117:0x02eb, B:119:0x02f1, B:121:0x02f9, B:123:0x0301, B:125:0x0309, B:127:0x0311, B:129:0x0319, B:131:0x0321, B:133:0x0329, B:135:0x0331, B:137:0x0339, B:139:0x0341, B:141:0x034b, B:143:0x0355, B:174:0x03c2, B:176:0x03c8, B:178:0x03ce, B:180:0x03d4, B:182:0x03da, B:184:0x03e0, B:186:0x03e6, B:188:0x03ec, B:190:0x03f2, B:192:0x03f8, B:194:0x03fe, B:196:0x0404, B:198:0x040a, B:200:0x0410, B:202:0x0416, B:206:0x0422, B:210:0x0439, B:214:0x044b, B:209:0x0433), top: B:308:0x02eb }] */
            /* JADX WARN: Removed duplicated region for block: B:218:0x0464  */
            /* JADX WARN: Removed duplicated region for block: B:219:0x0467 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:222:0x0477  */
            /* JADX WARN: Removed duplicated region for block: B:223:0x047a A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:226:0x048a  */
            /* JADX WARN: Removed duplicated region for block: B:227:0x048d A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:230:0x049d  */
            /* JADX WARN: Removed duplicated region for block: B:231:0x04a0 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:234:0x04b0  */
            /* JADX WARN: Removed duplicated region for block: B:235:0x04b3 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:238:0x04c3  */
            /* JADX WARN: Removed duplicated region for block: B:239:0x04c6  */
            /* JADX WARN: Removed duplicated region for block: B:242:0x04ce  */
            /* JADX WARN: Removed duplicated region for block: B:243:0x04d0 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:246:0x04e4  */
            /* JADX WARN: Removed duplicated region for block: B:247:0x04e6 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:250:0x04fa  */
            /* JADX WARN: Removed duplicated region for block: B:251:0x04fd  */
            /* JADX WARN: Removed duplicated region for block: B:255:0x050c A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:256:0x0519  */
            /* JADX WARN: Removed duplicated region for block: B:258:0x051c A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:262:0x0537 A[Catch: all -> 0x0576, TryCatch #1 {all -> 0x0576, blocks: (B:253:0x0506, B:255:0x050c, B:258:0x051c, B:259:0x0521, B:260:0x0529, B:262:0x0537, B:263:0x053c, B:267:0x054d, B:269:0x0558, B:216:0x0454, B:220:0x0471, B:224:0x0484, B:228:0x0497, B:232:0x04aa, B:236:0x04bd, B:240:0x04c8, B:244:0x04d4, B:248:0x04ea, B:252:0x04ff, B:247:0x04e6, B:243:0x04d0, B:235:0x04b3, B:231:0x04a0, B:227:0x048d, B:223:0x047a, B:219:0x0467), top: B:306:0x0454 }] */
            /* JADX WARN: Removed duplicated region for block: B:297:0x058f A[Catch: all -> 0x0598, TRY_ENTER, TryCatch #5 {all -> 0x0598, blocks: (B:276:0x0564, B:297:0x058f, B:298:0x0597, B:288:0x0580, B:289:0x0583), top: B:310:0x001d }] */
            /* JADX WARN: Removed duplicated region for block: B:302:0x05a4  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x0206  */
            /* JADX WARN: Removed duplicated region for block: B:68:0x0209 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:71:0x0215  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x0218 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:75:0x0232  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0235 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0245  */
            /* JADX WARN: Removed duplicated region for block: B:80:0x0248 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:83:0x0258  */
            /* JADX WARN: Removed duplicated region for block: B:84:0x025b A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:87:0x026f  */
            /* JADX WARN: Removed duplicated region for block: B:88:0x0272 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:91:0x0282  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x0285 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:95:0x0295  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x0298 A[Catch: all -> 0x0578, TryCatch #6 {all -> 0x0578, blocks: (B:10:0x007a, B:11:0x010e, B:13:0x0114, B:15:0x0124, B:17:0x0131, B:19:0x0137, B:21:0x0143, B:23:0x0152, B:25:0x016c, B:27:0x0172, B:29:0x0178, B:31:0x017e, B:33:0x0184, B:35:0x018a, B:37:0x0190, B:39:0x0196, B:41:0x019c, B:43:0x01a4, B:45:0x01ac, B:47:0x01b4, B:49:0x01be, B:51:0x01c8, B:53:0x01d2, B:65:0x01fc, B:69:0x020f, B:73:0x021e, B:77:0x023f, B:81:0x0252, B:85:0x0265, B:89:0x027c, B:93:0x028f, B:97:0x02a2, B:101:0x02ad, B:105:0x02bc, B:109:0x02cb, B:113:0x02da, B:114:0x02e3, B:112:0x02d4, B:108:0x02c5, B:96:0x0298, B:92:0x0285, B:88:0x0272, B:84:0x025b, B:80:0x0248, B:76:0x0235, B:72:0x0218, B:68:0x0209), top: B:311:0x007a }] */
            /* JADX WARN: Removed duplicated region for block: B:99:0x02a8  */
            /* JADX WARN: Type inference failed for: r1v0, types: [com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl$41] */
            /* JADX WARN: Type inference failed for: r1v1 */
            /* JADX WARN: Type inference failed for: r1v2 */
            /* JADX WARN: Type inference failed for: r1v3, types: [io.sentry.v0] */
            /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.v0] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public com.im.freechat.data.sources.database.entities.chat.ChatWithContacts call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 1448
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass41.call():com.im.freechat.data.sources.database.entities.chat.ChatWithContacts");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public i<List<ChatWithContacts>> subscribeChats() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    LEFT JOIN (SELECT send_time as last_time, message_id as last_time_msg_id FROM message) ON chat.last_message_id = last_time_msg_id", 0);
        return CoroutinesRoom.createFlow(this.__db, true, new String[]{"member", "user", "attachment", "chat", "message"}, new Callable<List<ChatWithContacts>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.40
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Removed duplicated region for block: B:102:0x0308  */
            /* JADX WARN: Removed duplicated region for block: B:103:0x030b A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:106:0x031b  */
            /* JADX WARN: Removed duplicated region for block: B:107:0x031e  */
            /* JADX WARN: Removed duplicated region for block: B:110:0x0326  */
            /* JADX WARN: Removed duplicated region for block: B:111:0x032b  */
            /* JADX WARN: Removed duplicated region for block: B:114:0x0335  */
            /* JADX WARN: Removed duplicated region for block: B:115:0x0338 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:118:0x0344  */
            /* JADX WARN: Removed duplicated region for block: B:119:0x0347 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:123:0x035c  */
            /* JADX WARN: Removed duplicated region for block: B:188:0x04c3  */
            /* JADX WARN: Removed duplicated region for block: B:202:0x04ff A[Catch: all -> 0x07c0, TryCatch #0 {all -> 0x07c0, blocks: (B:124:0x0360, B:126:0x0366, B:128:0x0370, B:130:0x037a, B:132:0x0384, B:134:0x038e, B:136:0x0398, B:138:0x03a2, B:140:0x03ac, B:142:0x03b6, B:144:0x03c0, B:146:0x03ca, B:148:0x03d4, B:150:0x03de, B:152:0x03e6, B:154:0x03f0, B:156:0x03fa, B:158:0x0404, B:160:0x040e, B:162:0x0418, B:164:0x0422, B:200:0x04f9, B:202:0x04ff, B:204:0x0505, B:206:0x050b, B:208:0x0511, B:210:0x0517, B:212:0x051d, B:214:0x0523, B:216:0x0529, B:218:0x052f, B:220:0x0535, B:222:0x053b, B:224:0x0541, B:226:0x0547, B:228:0x054d, B:230:0x0557, B:238:0x057a, B:242:0x0591, B:246:0x05a9, B:241:0x058b), top: B:371:0x0360 }] */
            /* JADX WARN: Removed duplicated region for block: B:240:0x0588  */
            /* JADX WARN: Removed duplicated region for block: B:241:0x058b A[Catch: all -> 0x07c0, TryCatch #0 {all -> 0x07c0, blocks: (B:124:0x0360, B:126:0x0366, B:128:0x0370, B:130:0x037a, B:132:0x0384, B:134:0x038e, B:136:0x0398, B:138:0x03a2, B:140:0x03ac, B:142:0x03b6, B:144:0x03c0, B:146:0x03ca, B:148:0x03d4, B:150:0x03de, B:152:0x03e6, B:154:0x03f0, B:156:0x03fa, B:158:0x0404, B:160:0x040e, B:162:0x0418, B:164:0x0422, B:200:0x04f9, B:202:0x04ff, B:204:0x0505, B:206:0x050b, B:208:0x0511, B:210:0x0517, B:212:0x051d, B:214:0x0523, B:216:0x0529, B:218:0x052f, B:220:0x0535, B:222:0x053b, B:224:0x0541, B:226:0x0547, B:228:0x054d, B:230:0x0557, B:238:0x057a, B:242:0x0591, B:246:0x05a9, B:241:0x058b), top: B:371:0x0360 }] */
            /* JADX WARN: Removed duplicated region for block: B:244:0x059f  */
            /* JADX WARN: Removed duplicated region for block: B:246:0x05a9 A[Catch: all -> 0x07c0, TRY_LEAVE, TryCatch #0 {all -> 0x07c0, blocks: (B:124:0x0360, B:126:0x0366, B:128:0x0370, B:130:0x037a, B:132:0x0384, B:134:0x038e, B:136:0x0398, B:138:0x03a2, B:140:0x03ac, B:142:0x03b6, B:144:0x03c0, B:146:0x03ca, B:148:0x03d4, B:150:0x03de, B:152:0x03e6, B:154:0x03f0, B:156:0x03fa, B:158:0x0404, B:160:0x040e, B:162:0x0418, B:164:0x0422, B:200:0x04f9, B:202:0x04ff, B:204:0x0505, B:206:0x050b, B:208:0x0511, B:210:0x0517, B:212:0x051d, B:214:0x0523, B:216:0x0529, B:218:0x052f, B:220:0x0535, B:222:0x053b, B:224:0x0541, B:226:0x0547, B:228:0x054d, B:230:0x0557, B:238:0x057a, B:242:0x0591, B:246:0x05a9, B:241:0x058b), top: B:371:0x0360 }] */
            /* JADX WARN: Removed duplicated region for block: B:250:0x05ca  */
            /* JADX WARN: Removed duplicated region for block: B:251:0x05cd A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:254:0x05dd  */
            /* JADX WARN: Removed duplicated region for block: B:255:0x05e0 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:258:0x05f0  */
            /* JADX WARN: Removed duplicated region for block: B:259:0x05f3 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:262:0x0603  */
            /* JADX WARN: Removed duplicated region for block: B:263:0x0606 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:266:0x0616  */
            /* JADX WARN: Removed duplicated region for block: B:267:0x0619 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:270:0x0629  */
            /* JADX WARN: Removed duplicated region for block: B:271:0x062c  */
            /* JADX WARN: Removed duplicated region for block: B:274:0x0634  */
            /* JADX WARN: Removed duplicated region for block: B:275:0x0636 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:278:0x064a  */
            /* JADX WARN: Removed duplicated region for block: B:279:0x064c A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:282:0x0662  */
            /* JADX WARN: Removed duplicated region for block: B:283:0x0665  */
            /* JADX WARN: Removed duplicated region for block: B:287:0x067a A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:299:0x06b1  */
            /* JADX WARN: Removed duplicated region for block: B:306:0x06cf  */
            /* JADX WARN: Removed duplicated region for block: B:307:0x06d2 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:310:0x06de  */
            /* JADX WARN: Removed duplicated region for block: B:311:0x06e1 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:314:0x06f1  */
            /* JADX WARN: Removed duplicated region for block: B:315:0x06f4 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:318:0x0700  */
            /* JADX WARN: Removed duplicated region for block: B:319:0x0703  */
            /* JADX WARN: Removed duplicated region for block: B:323:0x0716 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:324:0x0729  */
            /* JADX WARN: Removed duplicated region for block: B:326:0x0734 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:330:0x0751 A[Catch: all -> 0x07ef, TryCatch #7 {all -> 0x07ef, blocks: (B:248:0x05ba, B:252:0x05d7, B:256:0x05ea, B:260:0x05fd, B:264:0x0610, B:268:0x0623, B:272:0x062e, B:276:0x063a, B:280:0x0650, B:284:0x0667, B:285:0x0674, B:287:0x067a, B:289:0x0684, B:291:0x068e, B:293:0x0698, B:295:0x06a2, B:304:0x06c5, B:308:0x06d8, B:312:0x06e7, B:316:0x06fa, B:320:0x0705, B:321:0x0710, B:323:0x0716, B:326:0x0734, B:327:0x0739, B:328:0x0743, B:330:0x0751, B:331:0x0756, B:315:0x06f4, B:311:0x06e1, B:307:0x06d2, B:279:0x064c, B:275:0x0636, B:267:0x0619, B:263:0x0606, B:259:0x05f3, B:255:0x05e0, B:251:0x05cd, B:334:0x07c4, B:336:0x07d1), top: B:381:0x05ba }] */
            /* JADX WARN: Removed duplicated region for block: B:364:0x0805 A[Catch: all -> 0x080e, TRY_ENTER, TryCatch #5 {all -> 0x080e, blocks: (B:355:0x07f8, B:356:0x07fb, B:343:0x07dd, B:364:0x0805, B:365:0x080d), top: B:380:0x001e }] */
            /* JADX WARN: Removed duplicated region for block: B:390:0x0756 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:74:0x0273  */
            /* JADX WARN: Removed duplicated region for block: B:75:0x0276 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:78:0x0282  */
            /* JADX WARN: Removed duplicated region for block: B:79:0x0287 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:82:0x02a5  */
            /* JADX WARN: Removed duplicated region for block: B:83:0x02a8 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:86:0x02b8  */
            /* JADX WARN: Removed duplicated region for block: B:87:0x02bb A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:90:0x02cb  */
            /* JADX WARN: Removed duplicated region for block: B:91:0x02ce A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:94:0x02e2  */
            /* JADX WARN: Removed duplicated region for block: B:95:0x02e5 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            /* JADX WARN: Removed duplicated region for block: B:98:0x02f5  */
            /* JADX WARN: Removed duplicated region for block: B:99:0x02f8 A[Catch: all -> 0x07f1, TryCatch #1 {all -> 0x07f1, blocks: (B:10:0x0075, B:11:0x014b, B:13:0x0151, B:15:0x0161, B:17:0x016e, B:19:0x0174, B:21:0x0180, B:23:0x018f, B:24:0x01ac, B:26:0x01b2, B:30:0x01c2, B:32:0x01ca, B:34:0x01d0, B:36:0x01d6, B:38:0x01dc, B:40:0x01e2, B:42:0x01e8, B:44:0x01ee, B:46:0x01f6, B:48:0x0200, B:50:0x020a, B:52:0x0214, B:54:0x021e, B:56:0x0228, B:58:0x0232, B:72:0x0269, B:76:0x027c, B:80:0x028f, B:84:0x02b2, B:88:0x02c5, B:92:0x02d8, B:96:0x02ef, B:100:0x0302, B:104:0x0315, B:108:0x0320, B:112:0x032f, B:116:0x033e, B:120:0x034d, B:121:0x0356, B:119:0x0347, B:115:0x0338, B:103:0x030b, B:99:0x02f8, B:95:0x02e5, B:91:0x02ce, B:87:0x02bb, B:83:0x02a8, B:79:0x0287, B:75:0x0276, B:29:0x01ba), top: B:373:0x0075 }] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.List<com.im.freechat.data.sources.database.entities.chat.ChatWithContacts> call() throws java.lang.Exception {
                /*
                    Method dump skipped, instructions count: 2078
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.AnonymousClass40.call():java.util.List");
            }
        });
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object unpinChat(final int id, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.34
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUnpinChat.acquire();
                acquire.bindLong(1, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUnpinChat.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public /* bridge */ /* synthetic */ Object update(final ChatEntity value, final Continuation continuation) {
        return update2(value, (Continuation<? super Unit>) continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateAvatar(final int id, final String avatar, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.31
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateAvatar.acquire();
                String str = avatar;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateAvatar.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateDraftMessage(final int id, final String draft, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.27
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateDraftMessage.acquire();
                String str = draft;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateDraftMessage.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateLastMessageId(final int id, final Long lastMessageId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.32
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateLastMessageId.acquire();
                Long l10 = lastMessageId;
                if (l10 == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindLong(1, l10.longValue());
                }
                Long l11 = lastMessageId;
                if (l11 == null) {
                    acquire.bindNull(2);
                } else {
                    acquire.bindLong(2, l11.longValue());
                }
                acquire.bindLong(3, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateLastMessageId.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateLastSyncMessageId(final int id, final Long lastSyncMessageId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.33
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateLastSyncMessageId.acquire();
                Long l10 = lastSyncMessageId;
                if (l10 == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindLong(1, l10.longValue());
                }
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateLastSyncMessageId.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updatePartial(final PartialChatUpdateEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.24
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        ChatDao_Impl.this.__updateAdapterOfPartialChatUpdateEntityAsChatEntity.handle(value);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updatePublicState(final int id, final boolean isPublic, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.28
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdatePublicState.acquire();
                acquire.bindLong(1, isPublic ? 1L : 0L);
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdatePublicState.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateShowHistoryToNewMembers(final int id, final boolean show, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.29
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateShowHistoryToNewMembers.acquire();
                acquire.bindLong(1, show ? 1L : 0L);
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateShowHistoryToNewMembers.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateTitle(final int id, final String title, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.30
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateTitle.acquire();
                String str = title;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateTitle.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object updateUnreadCount(final int id, final int unreadCount, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.36
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                SupportSQLiteStatement acquire = ChatDao_Impl.this.__preparedStmtOfUpdateUnreadCount.acquire();
                acquire.bindLong(1, unreadCount);
                acquire.bindLong(2, id);
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    ChatDao_Impl.this.__preparedStmtOfUpdateUnreadCount.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public void delete(final ChatEntity value) {
        v0 D = c3.D();
        v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            try {
                this.__deletionAdapterOfChatEntity.handle(value);
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
    public Object insert2(final ChatEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.19
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = ChatDao_Impl.this.__insertionAdapterOfChatEntity.insertAndReturnId(value);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    /* renamed from: update  reason: avoid collision after fix types in other method */
    public Object update2(final ChatEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.22
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        ChatDao_Impl.this.__updateAdapterOfChatEntity.handle(value);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object insert(final List<? extends ChatEntity> values, final Continuation<? super List<Long>> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<List<Long>>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.20
            @Override // java.util.concurrent.Callable
            public List<Long> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        List<Long> insertAndReturnIdsList = ChatDao_Impl.this.__insertionAdapterOfChatEntity.insertAndReturnIdsList(values);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.BaseDao
    public Object update(final List<? extends ChatEntity> values, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.23
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        ChatDao_Impl.this.__updateAdapterOfChatEntity.handleMultiple(values);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object getLastSyncMessageId(final int chatId, final Continuation<? super Long> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT last_sync_message_id FROM chat WHERE chat_id = ?", 1);
        acquire.bindLong(1, chatId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.51
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                Long l10 = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                Cursor query = DBUtil.query(ChatDao_Impl.this.__db, acquire, false, null);
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

    @Override // com.im.freechat.data.sources.database.entities.chat.ChatDao
    public Object insert(final PartialChatUpdateEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl.21
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.chat.ChatDao") : null;
                ChatDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = ChatDao_Impl.this.__insertionAdapterOfPartialChatUpdateEntityAsChatEntity.insertAndReturnId(value);
                        ChatDao_Impl.this.__db.setTransactionSuccessful();
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
                    ChatDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
