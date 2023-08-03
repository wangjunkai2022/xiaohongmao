package com.im.freechat.data.sources.database.entities.contact;

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
import com.im.freechat.data.sources.api.entities.contact.ContactResponseMapperKt;
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
public final class UserDao_Impl extends UserDao {
    private final RoomDatabase __db;
    private final EntityInsertionAdapter<MemberContact> __insertionAdapterOfMemberContactAsUserEntity;
    private final EntityInsertionAdapter<PartialContactEntity> __insertionAdapterOfPartialContactEntityAsUserEntity;
    private final EntityInsertionAdapter<UserEntity> __insertionAdapterOfUserEntity;
    private final SharedSQLiteStatement __preparedStmtOfBlockContact;
    private final SharedSQLiteStatement __preparedStmtOfRemoveContact;
    private final SharedSQLiteStatement __preparedStmtOfSetAvatar;
    private final SharedSQLiteStatement __preparedStmtOfSetBio;
    private final SharedSQLiteStatement __preparedStmtOfSetNickname;
    private final SharedSQLiteStatement __preparedStmtOfUpdateOnlineStatus;
    private final SharedSQLiteStatement __preparedStmtOfUpdateOnlineStatusByUserId;
    private final SharedSQLiteStatement __preparedStmtOfUpdateUserMask;
    private final SharedSQLiteStatement __preparedStmtOfUpdateUserName;
    private final EntityDeletionOrUpdateAdapter<MemberContact> __updateAdapterOfMemberContactAsUserEntity;
    private final EntityDeletionOrUpdateAdapter<PartialContactEntity> __updateAdapterOfPartialContactEntityAsUserEntity;
    private final EntityDeletionOrUpdateAdapter<UserEntity> __updateAdapterOfUserEntity;

    public UserDao_Impl(RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfMemberContactAsUserEntity = new EntityInsertionAdapter<MemberContact>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.1
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `user` (`user_id`,`nickname`,`avatar_url`,`management_role`,`is_current`,`last_online`,`bio`) VALUES (?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, MemberContact value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                stmt.bindLong(5, value.isCurrentUser() ? 1L : 0L);
                stmt.bindLong(6, value.getLastOnline());
                if (value.getBio() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getBio());
                }
            }
        };
        this.__insertionAdapterOfPartialContactEntityAsUserEntity = new EntityInsertionAdapter<PartialContactEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.2
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `user` (`user_id`,`nickname`,`avatar_url`,`management_role`,`is_service`,`is_current`,`last_online`,`bio`) VALUES (?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, PartialContactEntity value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                stmt.bindLong(5, value.isService() ? 1L : 0L);
                stmt.bindLong(6, value.isCurrentUser() ? 1L : 0L);
                stmt.bindLong(7, value.getLastOnline());
                if (value.getBio() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getBio());
                }
            }
        };
        this.__insertionAdapterOfUserEntity = new EntityInsertionAdapter<UserEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.3
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "INSERT OR IGNORE INTO `user` (`user_id`,`nickname`,`avatar_url`,`management_role`,`user_name_mask`,`is_service`,`is_current`,`last_online`,`bio`) VALUES (?,?,?,?,?,?,?,?,?)";
            }

            @Override // androidx.room.EntityInsertionAdapter
            public void bind(SupportSQLiteStatement stmt, UserEntity value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                if (value.getUserNameMask() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getUserNameMask());
                }
                stmt.bindLong(6, value.isService() ? 1L : 0L);
                stmt.bindLong(7, value.isCurrentUser() ? 1L : 0L);
                if (value.getLastOnline() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getLastOnline().longValue());
                }
                if (value.getBio() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getBio());
                }
            }
        };
        this.__updateAdapterOfMemberContactAsUserEntity = new EntityDeletionOrUpdateAdapter<MemberContact>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.4
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `user` SET `user_id` = ?,`nickname` = ?,`avatar_url` = ?,`management_role` = ?,`is_current` = ?,`last_online` = ?,`bio` = ? WHERE `user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, MemberContact value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                stmt.bindLong(5, value.isCurrentUser() ? 1L : 0L);
                stmt.bindLong(6, value.getLastOnline());
                if (value.getBio() == null) {
                    stmt.bindNull(7);
                } else {
                    stmt.bindString(7, value.getBio());
                }
                stmt.bindLong(8, value.getUserId());
            }
        };
        this.__updateAdapterOfPartialContactEntityAsUserEntity = new EntityDeletionOrUpdateAdapter<PartialContactEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.5
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `user` SET `user_id` = ?,`nickname` = ?,`avatar_url` = ?,`management_role` = ?,`is_service` = ?,`is_current` = ?,`last_online` = ?,`bio` = ? WHERE `user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, PartialContactEntity value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                stmt.bindLong(5, value.isService() ? 1L : 0L);
                stmt.bindLong(6, value.isCurrentUser() ? 1L : 0L);
                stmt.bindLong(7, value.getLastOnline());
                if (value.getBio() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindString(8, value.getBio());
                }
                stmt.bindLong(9, value.getUserId());
            }
        };
        this.__updateAdapterOfUserEntity = new EntityDeletionOrUpdateAdapter<UserEntity>(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.6
            @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE OR ABORT `user` SET `user_id` = ?,`nickname` = ?,`avatar_url` = ?,`management_role` = ?,`user_name_mask` = ?,`is_service` = ?,`is_current` = ?,`last_online` = ?,`bio` = ? WHERE `user_id` = ?";
            }

            @Override // androidx.room.EntityDeletionOrUpdateAdapter
            public void bind(SupportSQLiteStatement stmt, UserEntity value) {
                stmt.bindLong(1, value.getUserId());
                if (value.getNickname() == null) {
                    stmt.bindNull(2);
                } else {
                    stmt.bindString(2, value.getNickname());
                }
                if (value.getAvatarUrl() == null) {
                    stmt.bindNull(3);
                } else {
                    stmt.bindString(3, value.getAvatarUrl());
                }
                stmt.bindLong(4, value.getManagementRole());
                if (value.getUserNameMask() == null) {
                    stmt.bindNull(5);
                } else {
                    stmt.bindString(5, value.getUserNameMask());
                }
                stmt.bindLong(6, value.isService() ? 1L : 0L);
                stmt.bindLong(7, value.isCurrentUser() ? 1L : 0L);
                if (value.getLastOnline() == null) {
                    stmt.bindNull(8);
                } else {
                    stmt.bindLong(8, value.getLastOnline().longValue());
                }
                if (value.getBio() == null) {
                    stmt.bindNull(9);
                } else {
                    stmt.bindString(9, value.getBio());
                }
                stmt.bindLong(10, value.getUserId());
            }
        };
        this.__preparedStmtOfUpdateOnlineStatus = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.7
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET last_online = ? WHERE is_current = 1";
            }
        };
        this.__preparedStmtOfUpdateOnlineStatusByUserId = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.8
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET last_online = ? WHERE user_id = ?";
            }
        };
        this.__preparedStmtOfUpdateUserMask = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.9
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET user_name_mask=? WHERE user_id = ?";
            }
        };
        this.__preparedStmtOfUpdateUserName = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.10
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET nickname=? WHERE user_id = ?";
            }
        };
        this.__preparedStmtOfRemoveContact = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.11
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "DELETE FROM user WHERE user_id = ?";
            }
        };
        this.__preparedStmtOfBlockContact = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.12
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET user_id = ? WHERE user_id=?";
            }
        };
        this.__preparedStmtOfSetBio = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.13
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET bio = ? WHERE user_id=?";
            }
        };
        this.__preparedStmtOfSetAvatar = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.14
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET avatar_url = ? WHERE user_id=?";
            }
        };
        this.__preparedStmtOfSetNickname = new SharedSQLiteStatement(__db) { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.15
            @Override // androidx.room.SharedSQLiteStatement
            public String createQuery() {
                return "UPDATE user SET nickname = ? WHERE user_id=?";
            }
        };
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdate$1(List list, Continuation continuation) {
        return super.insertOrUpdate(list, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$insertOrUpdateAll$2(List list, Continuation continuation) {
        return super.insertOrUpdateAll(list, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$synchronizeDatabase$0(List list, Continuation continuation) {
        return super.synchronizeDatabase(list, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object blockContact(final int contactId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.27
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfBlockContact.acquire();
                acquire.bindLong(1, contactId);
                acquire.bindLong(2, contactId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfBlockContact.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object followContact(final int contactId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.29
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfBlockContact.acquire();
                acquire.bindLong(1, contactId);
                acquire.bindLong(2, contactId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfBlockContact.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object getContact(final int userId, final Continuation<? super UserEntity> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM user WHERE user_id = ?", 1);
        acquire.bindLong(1, userId);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<UserEntity>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.36
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public UserEntity call() throws Exception {
                v0 D = c3.D();
                UserEntity userEntity = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                Cursor query = DBUtil.query(UserDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nickname");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "avatar_url");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "management_role");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "user_name_mask");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "is_current");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "last_online");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, ContactResponseMapperKt.BIO);
                        if (query.moveToFirst()) {
                            userEntity = new UserEntity(query.getInt(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6) != 0, query.getInt(columnIndexOrThrow7) != 0, query.isNull(columnIndexOrThrow8) ? null : Long.valueOf(query.getLong(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
                        return userEntity;
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

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object getContacts(final List<Integer> userIds, final Continuation<? super List<UserEntity>> continuation) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM user WHERE user_id IN (");
        int size = userIds.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i4 = 1;
        for (Integer num : userIds) {
            if (num == null) {
                acquire.bindNull(i4);
            } else {
                acquire.bindLong(i4, num.intValue());
            }
            i4++;
        }
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<List<UserEntity>>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.38
            @Override // java.util.concurrent.Callable
            public List<UserEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                Cursor query = DBUtil.query(UserDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nickname");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "avatar_url");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "management_role");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "user_name_mask");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "is_current");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "last_online");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, ContactResponseMapperKt.BIO);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new UserEntity(query.getInt(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6) != 0, query.getInt(columnIndexOrThrow7) != 0, query.isNull(columnIndexOrThrow8) ? null : Long.valueOf(query.getLong(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9)));
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

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object getCurrentUser(final Continuation<? super UserEntity> continuation) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM user WHERE is_current = 1", 0);
        return CoroutinesRoom.execute(this.__db, false, DBUtil.createCancellationSignal(), new Callable<UserEntity>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.35
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public UserEntity call() throws Exception {
                v0 D = c3.D();
                UserEntity userEntity = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                Cursor query = DBUtil.query(UserDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nickname");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "avatar_url");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "management_role");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "user_name_mask");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "is_current");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "last_online");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, ContactResponseMapperKt.BIO);
                        if (query.moveToFirst()) {
                            userEntity = new UserEntity(query.getInt(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6) != 0, query.getInt(columnIndexOrThrow7) != 0, query.isNull(columnIndexOrThrow8) ? null : Long.valueOf(query.getLong(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        acquire.release();
                        return userEntity;
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

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object insert(final MemberContact value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = UserDao_Impl.this.__insertionAdapterOfMemberContactAsUserEntity.insertAndReturnId(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object insertOrUpdate(final List<MemberContact> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.contact.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdate$1;
                lambda$insertOrUpdate$1 = UserDao_Impl.this.lambda$insertOrUpdate$1(list, (Continuation) obj);
                return lambda$insertOrUpdate$1;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object insertOrUpdateAll(final List<UserEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.contact.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$insertOrUpdateAll$2;
                lambda$insertOrUpdateAll$2 = UserDao_Impl.this.lambda$insertOrUpdateAll$2(list, (Continuation) obj);
                return lambda$insertOrUpdateAll$2;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public i<List<UserEntity>> listenAllContacts() {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM user", 0);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"user"}, new Callable<List<UserEntity>>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.34
            protected void finalize() {
                acquire.release();
            }

            @Override // java.util.concurrent.Callable
            public List<UserEntity> call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                Cursor query = DBUtil.query(UserDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nickname");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "avatar_url");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "management_role");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "user_name_mask");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "is_current");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "last_online");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, ContactResponseMapperKt.BIO);
                        ArrayList arrayList = new ArrayList(query.getCount());
                        while (query.moveToNext()) {
                            arrayList.add(new UserEntity(query.getInt(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6) != 0, query.getInt(columnIndexOrThrow7) != 0, query.isNull(columnIndexOrThrow8) ? null : Long.valueOf(query.getLong(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9)));
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

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object removeContact(final int userId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.26
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfRemoveContact.acquire();
                acquire.bindLong(1, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfRemoveContact.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object setAvatar(final int userId, final String avatarUrl, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.32
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfSetAvatar.acquire();
                String str = avatarUrl;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfSetAvatar.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object setBio(final int userId, final String bio, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.31
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfSetBio.acquire();
                String str = bio;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfSetBio.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object setNickname(final int userId, final String nickname, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.33
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfSetNickname.acquire();
                String str = nickname;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfSetNickname.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public i<UserEntity> subscribeContact(final int userId) {
        final RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM user WHERE user_id = ?", 1);
        acquire.bindLong(1, userId);
        return CoroutinesRoom.createFlow(this.__db, false, new String[]{"user"}, new Callable<UserEntity>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.37
            protected void finalize() {
                acquire.release();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public UserEntity call() throws Exception {
                v0 D = c3.D();
                UserEntity userEntity = null;
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                Cursor query = DBUtil.query(UserDao_Impl.this.__db, acquire, false, null);
                try {
                    try {
                        int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "user_id");
                        int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "nickname");
                        int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "avatar_url");
                        int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "management_role");
                        int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "user_name_mask");
                        int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, "is_service");
                        int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "is_current");
                        int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "last_online");
                        int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, ContactResponseMapperKt.BIO);
                        if (query.moveToFirst()) {
                            userEntity = new UserEntity(query.getInt(columnIndexOrThrow), query.isNull(columnIndexOrThrow2) ? null : query.getString(columnIndexOrThrow2), query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3), query.getInt(columnIndexOrThrow4), query.isNull(columnIndexOrThrow5) ? null : query.getString(columnIndexOrThrow5), query.getInt(columnIndexOrThrow6) != 0, query.getInt(columnIndexOrThrow7) != 0, query.isNull(columnIndexOrThrow8) ? null : Long.valueOf(query.getLong(columnIndexOrThrow8)), query.isNull(columnIndexOrThrow9) ? null : query.getString(columnIndexOrThrow9));
                        }
                        query.close();
                        if (H != null) {
                            H.t(SpanStatus.OK);
                        }
                        return userEntity;
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

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object synchronizeDatabase(final List<PartialContactEntity> list, final Continuation<? super Unit> continuation) {
        return RoomDatabaseKt.withTransaction(this.__db, new Function1() { // from class: com.im.freechat.data.sources.database.entities.contact.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object lambda$synchronizeDatabase$0;
                lambda$synchronizeDatabase$0 = UserDao_Impl.this.lambda$synchronizeDatabase$0(list, (Continuation) obj);
                return lambda$synchronizeDatabase$0;
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object unblockContact(final int contactId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.28
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfBlockContact.acquire();
                acquire.bindLong(1, contactId);
                acquire.bindLong(2, contactId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfBlockContact.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object unfollowContact(final int contactId, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.30
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfBlockContact.acquire();
                acquire.bindLong(1, contactId);
                acquire.bindLong(2, contactId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfBlockContact.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object update(final MemberContact value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.19
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        UserDao_Impl.this.__updateAdapterOfMemberContactAsUserEntity.handle(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object updateOnlineStatus(final long last, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.22
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfUpdateOnlineStatus.acquire();
                acquire.bindLong(1, last);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfUpdateOnlineStatus.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object updateOnlineStatusByUserId(final int userId, final Long lastOnline, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.23
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfUpdateOnlineStatusByUserId.acquire();
                Long l10 = lastOnline;
                if (l10 == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindLong(1, l10.longValue());
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfUpdateOnlineStatusByUserId.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object updateUserMask(final int userId, final String userMask, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.24
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfUpdateUserMask.acquire();
                String str = userMask;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfUpdateUserMask.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object updateUserName(final int userId, final String userName, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.25
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                SupportSQLiteStatement acquire = UserDao_Impl.this.__preparedStmtOfUpdateUserName.acquire();
                String str = userName;
                if (str == null) {
                    acquire.bindNull(1);
                } else {
                    acquire.bindString(1, str);
                }
                acquire.bindLong(2, userId);
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        acquire.executeUpdateDelete();
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                    UserDao_Impl.this.__preparedStmtOfUpdateUserName.release(acquire);
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object insert(final PartialContactEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.17
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = UserDao_Impl.this.__insertionAdapterOfPartialContactEntityAsUserEntity.insertAndReturnId(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object update(final PartialContactEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.20
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        UserDao_Impl.this.__updateAdapterOfPartialContactEntityAsUserEntity.handle(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object insert(final UserEntity value, final Continuation<? super Long> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Long>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.18
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public Long call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        long insertAndReturnId = UserDao_Impl.this.__insertionAdapterOfUserEntity.insertAndReturnId(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }

    @Override // com.im.freechat.data.sources.database.entities.contact.UserDao
    public Object update(final UserEntity value, final Continuation<? super Unit> continuation) {
        return CoroutinesRoom.execute(this.__db, true, new Callable<Unit>() { // from class: com.im.freechat.data.sources.database.entities.contact.UserDao_Impl.21
            @Override // java.util.concurrent.Callable
            public Unit call() throws Exception {
                v0 D = c3.D();
                v0 H = D != null ? D.H("db", "com.im.freechat.data.sources.database.entities.contact.UserDao") : null;
                UserDao_Impl.this.__db.beginTransaction();
                try {
                    try {
                        UserDao_Impl.this.__updateAdapterOfUserEntity.handle(value);
                        UserDao_Impl.this.__db.setTransactionSuccessful();
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
                    UserDao_Impl.this.__db.endTransaction();
                    if (H != null) {
                        H.h();
                    }
                }
            }
        }, continuation);
    }
}
