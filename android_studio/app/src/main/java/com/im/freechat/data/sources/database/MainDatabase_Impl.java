package com.im.freechat.data.sources.database;

import androidx.annotation.NonNull;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.room.util.ViewInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao_Impl;
import com.im.freechat.data.sources.database.entities.chat.ChatDao;
import com.im.freechat.data.sources.database.entities.chat.ChatDao_Impl;
import com.im.freechat.data.sources.database.entities.contact.UserDao;
import com.im.freechat.data.sources.database.entities.contact.UserDao_Impl;
import com.im.freechat.data.sources.database.entities.download.DownloadDao;
import com.im.freechat.data.sources.database.entities.download.DownloadDao_Impl;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao_Impl;
import com.im.freechat.data.sources.database.entities.member.MemberDao;
import com.im.freechat.data.sources.database.entities.member.MemberDao_Impl;
import com.im.freechat.data.sources.database.entities.message.MessageDao;
import com.im.freechat.data.sources.database.entities.message.MessageDao_Impl;
import com.im.freechat.ui.chat.history.o;
import io.sentry.clientreport.e;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.bouncycastle.i18n.MessageBundle;

/* loaded from: classes.dex */
public final class MainDatabase_Impl extends MainDatabase {
    private volatile AttachmentDao _attachmentDao;
    private volatile ChatDao _chatDao;
    private volatile DownloadDao _downloadDao;
    private volatile FriendStatusDao _friendStatusDao;
    private volatile MemberDao _memberDao;
    private volatile MessageDao _messageDao;
    private volatile UserDao _userDao;

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public AttachmentDao attachmentDao() {
        AttachmentDao attachmentDao;
        if (this._attachmentDao != null) {
            return this._attachmentDao;
        }
        synchronized (this) {
            if (this._attachmentDao == null) {
                this._attachmentDao = new AttachmentDao_Impl(this);
            }
            attachmentDao = this._attachmentDao;
        }
        return attachmentDao;
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public ChatDao chatDao() {
        ChatDao chatDao;
        if (this._chatDao != null) {
            return this._chatDao;
        }
        synchronized (this) {
            if (this._chatDao == null) {
                this._chatDao = new ChatDao_Impl(this);
            }
            chatDao = this._chatDao;
        }
        return chatDao;
    }

    @Override // androidx.room.RoomDatabase
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("PRAGMA defer_foreign_keys = TRUE");
            writableDatabase.execSQL("DELETE FROM `download`");
            writableDatabase.execSQL("DELETE FROM `user`");
            writableDatabase.execSQL("DELETE FROM `chat`");
            writableDatabase.execSQL("DELETE FROM `member`");
            writableDatabase.execSQL("DELETE FROM `message`");
            writableDatabase.execSQL("DELETE FROM `attachment`");
            writableDatabase.execSQL("DELETE FROM `friend_status`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override // androidx.room.RoomDatabase
    protected InvalidationTracker createInvalidationTracker() {
        HashMap hashMap = new HashMap(0);
        HashMap hashMap2 = new HashMap(1);
        HashSet hashSet = new HashSet(2);
        hashSet.add("message");
        hashSet.add("user");
        hashMap2.put("full_message", hashSet);
        return new InvalidationTracker(this, hashMap, hashMap2, "download", "user", "chat", "member", "message", "attachment", "friend_status");
    }

    @Override // androidx.room.RoomDatabase
    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration configuration) {
        return configuration.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(configuration.context).name(configuration.name).callback(new RoomOpenHelper(configuration, new RoomOpenHelper.Delegate(43) { // from class: com.im.freechat.data.sources.database.MainDatabase_Impl.1
            @Override // androidx.room.RoomOpenHelper.Delegate
            public void createAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("CREATE TABLE IF NOT EXISTS `download` (`chat_id` INTEGER NOT NULL, `media_id` INTEGER NOT NULL, `download_manager_id` INTEGER NOT NULL, `local_path` TEXT NOT NULL, `remote_url` TEXT NOT NULL, `file_size` INTEGER NOT NULL, `downloaded` INTEGER NOT NULL, `status` INTEGER NOT NULL, PRIMARY KEY(`media_id`, `chat_id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `user` (`user_id` INTEGER NOT NULL, `nickname` TEXT NOT NULL, `avatar_url` TEXT, `management_role` INTEGER NOT NULL, `user_name_mask` TEXT, `is_service` INTEGER NOT NULL DEFAULT 0, `is_current` INTEGER NOT NULL, `last_online` INTEGER, `bio` TEXT, PRIMARY KEY(`user_id`))");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `chat` (`chat_id` INTEGER NOT NULL, `title` TEXT, `avatar` TEXT, `type` INTEGER NOT NULL, `opponent_last_read_message_id` INTEGER, `last_message_id` INTEGER, `last_sync_message_id` INTEGER, `unread_count` INTEGER NOT NULL, `pinned_message_id` INTEGER, `pinned_user_id` INTEGER, `pinned_time` INTEGER, `is_public` INTEGER NOT NULL, `history_new_member` INTEGER NOT NULL, `invitation_link` TEXT, `draft_message` TEXT, PRIMARY KEY(`chat_id`), FOREIGN KEY(`last_message_id`) REFERENCES `message`(`message_id`) ON UPDATE NO ACTION ON DELETE SET NULL )");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_chat_last_message_id` ON `chat` (`last_message_id`)");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_chat_last_sync_message_id` ON `chat` (`last_sync_message_id`)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `member` (`user_id` INTEGER NOT NULL, `chat_id` INTEGER NOT NULL, `role` INTEGER NOT NULL, `status` INTEGER NOT NULL, PRIMARY KEY(`chat_id`, `user_id`), FOREIGN KEY(`user_id`) REFERENCES `user`(`user_id`) ON UPDATE NO ACTION ON DELETE CASCADE , FOREIGN KEY(`chat_id`) REFERENCES `chat`(`chat_id`) ON UPDATE NO ACTION ON DELETE CASCADE )");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_member_user_id` ON `member` (`user_id`)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `message` (`message_id` INTEGER NOT NULL, `sender_id` INTEGER NOT NULL, `content` TEXT, `parent_chat_id` INTEGER NOT NULL, `send_time` INTEGER NOT NULL, `status` INTEGER NOT NULL, `edit_time` INTEGER, `forward_sender_id` INTEGER, `forward_message_id` INTEGER, `forward_chat_id` INTEGER, `reply_to_message_id` INTEGER, `mention_all` INTEGER NOT NULL, `mentions` TEXT, `styles` TEXT, `is_service` INTEGER NOT NULL, PRIMARY KEY(`message_id`))");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_message_sender_id` ON `message` (`sender_id`)");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_message_parent_chat_id` ON `message` (`parent_chat_id`)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `attachment` (`media_id` INTEGER NOT NULL, `parent_message_id` INTEGER NOT NULL, `media_type` INTEGER NOT NULL, `local_path` TEXT, `remote_url` TEXT, `width` INTEGER, `height` INTEGER, `preview_local_path` TEXT, `preview_remote_url` TEXT, `file_size` INTEGER, `duration` INTEGER, `lat` REAL, `lng` REAL, `filename` TEXT, `mime_type` TEXT, `gif_id` TEXT, PRIMARY KEY(`media_id`), FOREIGN KEY(`parent_message_id`) REFERENCES `message`(`message_id`) ON UPDATE CASCADE ON DELETE CASCADE )");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_attachment_parent_message_id` ON `attachment` (`parent_message_id`)");
                _db.execSQL("CREATE INDEX IF NOT EXISTS `index_attachment_remote_url` ON `attachment` (`remote_url`)");
                _db.execSQL("CREATE TABLE IF NOT EXISTS `friend_status` (`target_user_id` INTEGER NOT NULL, `invited_time` INTEGER NOT NULL, `reason` TEXT, `status` TEXT NOT NULL, PRIMARY KEY(`target_user_id`), FOREIGN KEY(`target_user_id`) REFERENCES `user`(`user_id`) ON UPDATE NO ACTION ON DELETE NO ACTION )");
                _db.execSQL("CREATE VIEW `full_message` AS SELECT * FROM message LEFT JOIN user ON message.sender_id = user.user_id LEFT JOIN \n        (SELECT \n            user_id as forwarder_user_id,\n            nickname as forwarder_nickname,\n            avatar_url as forwarder_avatar_url,\n            management_role as forwarder_management_role,\n            user_name_mask as forwarder_user_name_mask,\n            is_current as forwarder_is_current\n        FROM user) ON message.forward_sender_id = forwarder_user_id");
                _db.execSQL(RoomMasterTable.CREATE_QUERY);
                _db.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '57e80285437fd5a5a91e4c08c968e853')");
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void dropAllTables(SupportSQLiteDatabase _db) {
                _db.execSQL("DROP TABLE IF EXISTS `download`");
                _db.execSQL("DROP TABLE IF EXISTS `user`");
                _db.execSQL("DROP TABLE IF EXISTS `chat`");
                _db.execSQL("DROP TABLE IF EXISTS `member`");
                _db.execSQL("DROP TABLE IF EXISTS `message`");
                _db.execSQL("DROP TABLE IF EXISTS `attachment`");
                _db.execSQL("DROP TABLE IF EXISTS `friend_status`");
                _db.execSQL("DROP VIEW IF EXISTS `full_message`");
                if (((RoomDatabase) MainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.get(i4)).onDestructiveMigration(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected void onCreate(SupportSQLiteDatabase _db) {
                if (((RoomDatabase) MainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.get(i4)).onCreate(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onOpen(SupportSQLiteDatabase _db) {
                ((RoomDatabase) MainDatabase_Impl.this).mDatabase = _db;
                _db.execSQL("PRAGMA foreign_keys = ON");
                MainDatabase_Impl.this.internalInitInvalidationTracker(_db);
                if (((RoomDatabase) MainDatabase_Impl.this).mCallbacks != null) {
                    int size = ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.size();
                    for (int i4 = 0; i4 < size; i4++) {
                        ((RoomDatabase.Callback) ((RoomDatabase) MainDatabase_Impl.this).mCallbacks.get(i4)).onOpen(_db);
                    }
                }
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPostMigrate(SupportSQLiteDatabase _db) {
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            public void onPreMigrate(SupportSQLiteDatabase _db) {
                DBUtil.dropFtsSyncTriggers(_db);
            }

            @Override // androidx.room.RoomOpenHelper.Delegate
            protected RoomOpenHelper.ValidationResult onValidateSchema(SupportSQLiteDatabase _db) {
                HashMap hashMap = new HashMap(8);
                hashMap.put("chat_id", new TableInfo.Column("chat_id", "INTEGER", true, 2, null, 1));
                hashMap.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 1, null, 1));
                hashMap.put("download_manager_id", new TableInfo.Column("download_manager_id", "INTEGER", true, 0, null, 1));
                hashMap.put("local_path", new TableInfo.Column("local_path", "TEXT", true, 0, null, 1));
                hashMap.put("remote_url", new TableInfo.Column("remote_url", "TEXT", true, 0, null, 1));
                hashMap.put("file_size", new TableInfo.Column("file_size", "INTEGER", true, 0, null, 1));
                hashMap.put("downloaded", new TableInfo.Column("downloaded", "INTEGER", true, 0, null, 1));
                hashMap.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                TableInfo tableInfo = new TableInfo("download", hashMap, new HashSet(0), new HashSet(0));
                TableInfo read = TableInfo.read(_db, "download");
                if (!tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(false, "download(com.im.freechat.data.sources.database.entities.download.DownloadEntity).\n Expected:\n" + tableInfo + "\n Found:\n" + read);
                }
                HashMap hashMap2 = new HashMap(9);
                hashMap2.put("user_id", new TableInfo.Column("user_id", "INTEGER", true, 1, null, 1));
                hashMap2.put("nickname", new TableInfo.Column("nickname", "TEXT", true, 0, null, 1));
                hashMap2.put("avatar_url", new TableInfo.Column("avatar_url", "TEXT", false, 0, null, 1));
                hashMap2.put("management_role", new TableInfo.Column("management_role", "INTEGER", true, 0, null, 1));
                hashMap2.put("user_name_mask", new TableInfo.Column("user_name_mask", "TEXT", false, 0, null, 1));
                hashMap2.put("is_service", new TableInfo.Column("is_service", "INTEGER", true, 0, "0", 1));
                hashMap2.put("is_current", new TableInfo.Column("is_current", "INTEGER", true, 0, null, 1));
                hashMap2.put("last_online", new TableInfo.Column("last_online", "INTEGER", false, 0, null, 1));
                hashMap2.put(ContactResponseMapperKt.BIO, new TableInfo.Column(ContactResponseMapperKt.BIO, "TEXT", false, 0, null, 1));
                TableInfo tableInfo2 = new TableInfo("user", hashMap2, new HashSet(0), new HashSet(0));
                TableInfo read2 = TableInfo.read(_db, "user");
                if (!tableInfo2.equals(read2)) {
                    return new RoomOpenHelper.ValidationResult(false, "user(com.im.freechat.data.sources.database.entities.contact.UserEntity).\n Expected:\n" + tableInfo2 + "\n Found:\n" + read2);
                }
                HashMap hashMap3 = new HashMap(15);
                hashMap3.put("chat_id", new TableInfo.Column("chat_id", "INTEGER", true, 1, null, 1));
                hashMap3.put(MessageBundle.TITLE_ENTRY, new TableInfo.Column(MessageBundle.TITLE_ENTRY, "TEXT", false, 0, null, 1));
                hashMap3.put("avatar", new TableInfo.Column("avatar", "TEXT", false, 0, null, 1));
                hashMap3.put("type", new TableInfo.Column("type", "INTEGER", true, 0, null, 1));
                hashMap3.put("opponent_last_read_message_id", new TableInfo.Column("opponent_last_read_message_id", "INTEGER", false, 0, null, 1));
                hashMap3.put("last_message_id", new TableInfo.Column("last_message_id", "INTEGER", false, 0, null, 1));
                hashMap3.put("last_sync_message_id", new TableInfo.Column("last_sync_message_id", "INTEGER", false, 0, null, 1));
                hashMap3.put("unread_count", new TableInfo.Column("unread_count", "INTEGER", true, 0, null, 1));
                hashMap3.put("pinned_message_id", new TableInfo.Column("pinned_message_id", "INTEGER", false, 0, null, 1));
                hashMap3.put("pinned_user_id", new TableInfo.Column("pinned_user_id", "INTEGER", false, 0, null, 1));
                hashMap3.put("pinned_time", new TableInfo.Column("pinned_time", "INTEGER", false, 0, null, 1));
                hashMap3.put("is_public", new TableInfo.Column("is_public", "INTEGER", true, 0, null, 1));
                hashMap3.put("history_new_member", new TableInfo.Column("history_new_member", "INTEGER", true, 0, null, 1));
                hashMap3.put("invitation_link", new TableInfo.Column("invitation_link", "TEXT", false, 0, null, 1));
                hashMap3.put("draft_message", new TableInfo.Column("draft_message", "TEXT", false, 0, null, 1));
                HashSet hashSet = new HashSet(1);
                hashSet.add(new TableInfo.ForeignKey("message", "SET NULL", "NO ACTION", Arrays.asList("last_message_id"), Arrays.asList("message_id")));
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new TableInfo.Index("index_chat_last_message_id", false, Arrays.asList("last_message_id"), Arrays.asList("ASC")));
                hashSet2.add(new TableInfo.Index("index_chat_last_sync_message_id", false, Arrays.asList("last_sync_message_id"), Arrays.asList("ASC")));
                TableInfo tableInfo3 = new TableInfo("chat", hashMap3, hashSet, hashSet2);
                TableInfo read3 = TableInfo.read(_db, "chat");
                if (!tableInfo3.equals(read3)) {
                    return new RoomOpenHelper.ValidationResult(false, "chat(com.im.freechat.data.sources.database.entities.chat.ChatEntity).\n Expected:\n" + tableInfo3 + "\n Found:\n" + read3);
                }
                HashMap hashMap4 = new HashMap(4);
                hashMap4.put("user_id", new TableInfo.Column("user_id", "INTEGER", true, 2, null, 1));
                hashMap4.put("chat_id", new TableInfo.Column("chat_id", "INTEGER", true, 1, null, 1));
                hashMap4.put("role", new TableInfo.Column("role", "INTEGER", true, 0, null, 1));
                hashMap4.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                HashSet hashSet3 = new HashSet(2);
                hashSet3.add(new TableInfo.ForeignKey("user", "CASCADE", "NO ACTION", Arrays.asList("user_id"), Arrays.asList("user_id")));
                hashSet3.add(new TableInfo.ForeignKey("chat", "CASCADE", "NO ACTION", Arrays.asList("chat_id"), Arrays.asList("chat_id")));
                HashSet hashSet4 = new HashSet(1);
                hashSet4.add(new TableInfo.Index("index_member_user_id", false, Arrays.asList("user_id"), Arrays.asList("ASC")));
                TableInfo tableInfo4 = new TableInfo("member", hashMap4, hashSet3, hashSet4);
                TableInfo read4 = TableInfo.read(_db, "member");
                if (!tableInfo4.equals(read4)) {
                    return new RoomOpenHelper.ValidationResult(false, "member(com.im.freechat.data.sources.database.entities.member.MemberEntity).\n Expected:\n" + tableInfo4 + "\n Found:\n" + read4);
                }
                HashMap hashMap5 = new HashMap(15);
                hashMap5.put("message_id", new TableInfo.Column("message_id", "INTEGER", true, 1, null, 1));
                hashMap5.put("sender_id", new TableInfo.Column("sender_id", "INTEGER", true, 0, null, 1));
                hashMap5.put("content", new TableInfo.Column("content", "TEXT", false, 0, null, 1));
                hashMap5.put("parent_chat_id", new TableInfo.Column("parent_chat_id", "INTEGER", true, 0, null, 1));
                hashMap5.put("send_time", new TableInfo.Column("send_time", "INTEGER", true, 0, null, 1));
                hashMap5.put("status", new TableInfo.Column("status", "INTEGER", true, 0, null, 1));
                hashMap5.put("edit_time", new TableInfo.Column("edit_time", "INTEGER", false, 0, null, 1));
                hashMap5.put("forward_sender_id", new TableInfo.Column("forward_sender_id", "INTEGER", false, 0, null, 1));
                hashMap5.put("forward_message_id", new TableInfo.Column("forward_message_id", "INTEGER", false, 0, null, 1));
                hashMap5.put("forward_chat_id", new TableInfo.Column("forward_chat_id", "INTEGER", false, 0, null, 1));
                hashMap5.put("reply_to_message_id", new TableInfo.Column("reply_to_message_id", "INTEGER", false, 0, null, 1));
                hashMap5.put("mention_all", new TableInfo.Column("mention_all", "INTEGER", true, 0, null, 1));
                hashMap5.put("mentions", new TableInfo.Column("mentions", "TEXT", false, 0, null, 1));
                hashMap5.put("styles", new TableInfo.Column("styles", "TEXT", false, 0, null, 1));
                hashMap5.put("is_service", new TableInfo.Column("is_service", "INTEGER", true, 0, null, 1));
                HashSet hashSet5 = new HashSet(0);
                HashSet hashSet6 = new HashSet(2);
                hashSet6.add(new TableInfo.Index("index_message_sender_id", false, Arrays.asList("sender_id"), Arrays.asList("ASC")));
                hashSet6.add(new TableInfo.Index("index_message_parent_chat_id", false, Arrays.asList("parent_chat_id"), Arrays.asList("ASC")));
                TableInfo tableInfo5 = new TableInfo("message", hashMap5, hashSet5, hashSet6);
                TableInfo read5 = TableInfo.read(_db, "message");
                if (!tableInfo5.equals(read5)) {
                    return new RoomOpenHelper.ValidationResult(false, "message(com.im.freechat.data.sources.database.entities.message.MessageEntity).\n Expected:\n" + tableInfo5 + "\n Found:\n" + read5);
                }
                HashMap hashMap6 = new HashMap(16);
                hashMap6.put("media_id", new TableInfo.Column("media_id", "INTEGER", true, 1, null, 1));
                hashMap6.put("parent_message_id", new TableInfo.Column("parent_message_id", "INTEGER", true, 0, null, 1));
                hashMap6.put("media_type", new TableInfo.Column("media_type", "INTEGER", true, 0, null, 1));
                hashMap6.put("local_path", new TableInfo.Column("local_path", "TEXT", false, 0, null, 1));
                hashMap6.put("remote_url", new TableInfo.Column("remote_url", "TEXT", false, 0, null, 1));
                hashMap6.put("width", new TableInfo.Column("width", "INTEGER", false, 0, null, 1));
                hashMap6.put("height", new TableInfo.Column("height", "INTEGER", false, 0, null, 1));
                hashMap6.put("preview_local_path", new TableInfo.Column("preview_local_path", "TEXT", false, 0, null, 1));
                hashMap6.put("preview_remote_url", new TableInfo.Column("preview_remote_url", "TEXT", false, 0, null, 1));
                hashMap6.put("file_size", new TableInfo.Column("file_size", "INTEGER", false, 0, null, 1));
                hashMap6.put("duration", new TableInfo.Column("duration", "INTEGER", false, 0, null, 1));
                hashMap6.put("lat", new TableInfo.Column("lat", "REAL", false, 0, null, 1));
                hashMap6.put("lng", new TableInfo.Column("lng", "REAL", false, 0, null, 1));
                hashMap6.put("filename", new TableInfo.Column("filename", "TEXT", false, 0, null, 1));
                hashMap6.put(o.f42921d, new TableInfo.Column(o.f42921d, "TEXT", false, 0, null, 1));
                hashMap6.put("gif_id", new TableInfo.Column("gif_id", "TEXT", false, 0, null, 1));
                HashSet hashSet7 = new HashSet(1);
                hashSet7.add(new TableInfo.ForeignKey("message", "CASCADE", "CASCADE", Arrays.asList("parent_message_id"), Arrays.asList("message_id")));
                HashSet hashSet8 = new HashSet(2);
                hashSet8.add(new TableInfo.Index("index_attachment_parent_message_id", false, Arrays.asList("parent_message_id"), Arrays.asList("ASC")));
                hashSet8.add(new TableInfo.Index("index_attachment_remote_url", false, Arrays.asList("remote_url"), Arrays.asList("ASC")));
                TableInfo tableInfo6 = new TableInfo("attachment", hashMap6, hashSet7, hashSet8);
                TableInfo read6 = TableInfo.read(_db, "attachment");
                if (!tableInfo6.equals(read6)) {
                    return new RoomOpenHelper.ValidationResult(false, "attachment(com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity).\n Expected:\n" + tableInfo6 + "\n Found:\n" + read6);
                }
                HashMap hashMap7 = new HashMap(4);
                hashMap7.put("target_user_id", new TableInfo.Column("target_user_id", "INTEGER", true, 1, null, 1));
                hashMap7.put("invited_time", new TableInfo.Column("invited_time", "INTEGER", true, 0, null, 1));
                hashMap7.put(e.b.f83079a, new TableInfo.Column(e.b.f83079a, "TEXT", false, 0, null, 1));
                hashMap7.put("status", new TableInfo.Column("status", "TEXT", true, 0, null, 1));
                HashSet hashSet9 = new HashSet(1);
                hashSet9.add(new TableInfo.ForeignKey("user", "NO ACTION", "NO ACTION", Arrays.asList("target_user_id"), Arrays.asList("user_id")));
                TableInfo tableInfo7 = new TableInfo("friend_status", hashMap7, hashSet9, new HashSet(0));
                TableInfo read7 = TableInfo.read(_db, "friend_status");
                if (!tableInfo7.equals(read7)) {
                    return new RoomOpenHelper.ValidationResult(false, "friend_status(com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusEntity).\n Expected:\n" + tableInfo7 + "\n Found:\n" + read7);
                }
                ViewInfo viewInfo = new ViewInfo("full_message", "CREATE VIEW `full_message` AS SELECT * FROM message LEFT JOIN user ON message.sender_id = user.user_id LEFT JOIN \n        (SELECT \n            user_id as forwarder_user_id,\n            nickname as forwarder_nickname,\n            avatar_url as forwarder_avatar_url,\n            management_role as forwarder_management_role,\n            user_name_mask as forwarder_user_name_mask,\n            is_current as forwarder_is_current\n        FROM user) ON message.forward_sender_id = forwarder_user_id");
                ViewInfo read8 = ViewInfo.read(_db, "full_message");
                if (!viewInfo.equals(read8)) {
                    return new RoomOpenHelper.ValidationResult(false, "full_message(com.im.freechat.data.sources.database.entities.message.FullMessageEntity).\n Expected:\n" + viewInfo + "\n Found:\n" + read8);
                }
                return new RoomOpenHelper.ValidationResult(true, null);
            }
        }, "57e80285437fd5a5a91e4c08c968e853", "b725e5bd4db430af6a8ece1bd3cde5f1")).build());
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public DownloadDao downloadDao() {
        DownloadDao downloadDao;
        if (this._downloadDao != null) {
            return this._downloadDao;
        }
        synchronized (this) {
            if (this._downloadDao == null) {
                this._downloadDao = new DownloadDao_Impl(this);
            }
            downloadDao = this._downloadDao;
        }
        return downloadDao;
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public FriendStatusDao friendStatusDao() {
        FriendStatusDao friendStatusDao;
        if (this._friendStatusDao != null) {
            return this._friendStatusDao;
        }
        synchronized (this) {
            if (this._friendStatusDao == null) {
                this._friendStatusDao = new FriendStatusDao_Impl(this);
            }
            friendStatusDao = this._friendStatusDao;
        }
        return friendStatusDao;
    }

    @Override // androidx.room.RoomDatabase
    public List<Migration> getAutoMigrations(@NonNull Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecsMap) {
        return Arrays.asList(new Migration[0]);
    }

    @Override // androidx.room.RoomDatabase
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override // androidx.room.RoomDatabase
    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(DownloadDao.class, DownloadDao_Impl.getRequiredConverters());
        hashMap.put(UserDao.class, UserDao_Impl.getRequiredConverters());
        hashMap.put(ChatDao.class, ChatDao_Impl.getRequiredConverters());
        hashMap.put(MemberDao.class, MemberDao_Impl.getRequiredConverters());
        hashMap.put(MessageDao.class, MessageDao_Impl.getRequiredConverters());
        hashMap.put(AttachmentDao.class, AttachmentDao_Impl.getRequiredConverters());
        hashMap.put(FriendStatusDao.class, FriendStatusDao_Impl.getRequiredConverters());
        return hashMap;
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public MemberDao memberDao() {
        MemberDao memberDao;
        if (this._memberDao != null) {
            return this._memberDao;
        }
        synchronized (this) {
            if (this._memberDao == null) {
                this._memberDao = new MemberDao_Impl(this);
            }
            memberDao = this._memberDao;
        }
        return memberDao;
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public MessageDao messageDao() {
        MessageDao messageDao;
        if (this._messageDao != null) {
            return this._messageDao;
        }
        synchronized (this) {
            if (this._messageDao == null) {
                this._messageDao = new MessageDao_Impl(this);
            }
            messageDao = this._messageDao;
        }
        return messageDao;
    }

    @Override // com.im.freechat.data.sources.database.MainDatabase
    public UserDao userDao() {
        UserDao userDao;
        if (this._userDao != null) {
            return this._userDao;
        }
        synchronized (this) {
            if (this._userDao == null) {
                this._userDao = new UserDao_Impl(this);
            }
            userDao = this._userDao;
        }
        return userDao;
    }
}
