package com.im.freechat.data.sources.database;

import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentDao;
import com.im.freechat.data.sources.database.entities.attachment.AttachmentEntity;
import com.im.freechat.data.sources.database.entities.chat.ChatDao;
import com.im.freechat.data.sources.database.entities.chat.ChatEntity;
import com.im.freechat.data.sources.database.entities.contact.UserDao;
import com.im.freechat.data.sources.database.entities.contact.UserEntity;
import com.im.freechat.data.sources.database.entities.download.DownloadDao;
import com.im.freechat.data.sources.database.entities.download.DownloadEntity;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao;
import com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusEntity;
import com.im.freechat.data.sources.database.entities.member.MemberDao;
import com.im.freechat.data.sources.database.entities.member.MemberEntity;
import com.im.freechat.data.sources.database.entities.message.FullMessageEntity;
import com.im.freechat.data.sources.database.entities.message.MessageDao;
import com.im.freechat.data.sources.database.entities.message.MessageEntity;
import kotlin.Metadata;
import m8.g;

/* compiled from: MainDatabase.kt */
@TypeConverters({Converters.class})
@Database(entities = {DownloadEntity.class, UserEntity.class, ChatEntity.class, MemberEntity.class, MessageEntity.class, AttachmentEntity.class, FriendStatusEntity.class}, version = 43, views = {FullMessageEntity.class})
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0006H&J\b\u0010\u0007\u001a\u00020\bH&J\b\u0010\t\u001a\u00020\nH&J\b\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\u000eH&J\b\u0010\u000f\u001a\u00020\u0010H&¨\u0006\u0011"}, d2 = {"Lcom/im/freechat/data/sources/database/MainDatabase;", "Landroidx/room/RoomDatabase;", "()V", "attachmentDao", "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;", "chatDao", "Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;", "downloadDao", "Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;", "friendStatusDao", "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;", "memberDao", "Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "messageDao", "Lcom/im/freechat/data/sources/database/entities/message/MessageDao;", "userDao", "Lcom/im/freechat/data/sources/database/entities/contact/UserDao;", "data_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public abstract class MainDatabase extends RoomDatabase {
    @g
    public abstract AttachmentDao attachmentDao();

    @g
    public abstract ChatDao chatDao();

    @g
    public abstract DownloadDao downloadDao();

    @g
    public abstract FriendStatusDao friendStatusDao();

    @g
    public abstract MemberDao memberDao();

    @g
    public abstract MessageDao messageDao();

    @g
    public abstract UserDao userDao();
}
