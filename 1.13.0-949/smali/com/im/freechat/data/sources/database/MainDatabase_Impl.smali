.class public final Lcom/im/freechat/data/sources/database/MainDatabase_Impl;
.super Lcom/im/freechat/data/sources/database/MainDatabase;
.source "MainDatabase_Impl.java"


# instance fields
.field private volatile _attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

.field private volatile _chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

.field private volatile _downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

.field private volatile _friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

.field private volatile _memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

.field private volatile _messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

.field private volatile _userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/MainDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iput-object p1, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$700(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$800(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attachmentDao()Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_attachmentDao:Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chatDao()Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_chatDao:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllTables()V
    .locals 4

    const-string v0, "VACUUM"

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 1
    invoke-super {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 2
    invoke-super {p0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v2

    .line 3
    :try_start_0
    invoke-super {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const-string v3, "PRAGMA defer_foreign_keys = TRUE"

    .line 4
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `download`"

    .line 5
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `user`"

    .line 6
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `chat`"

    .line 7
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `member`"

    .line 8
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `message`"

    .line 9
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `attachment`"

    .line 10
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM `friend_status`"

    .line 11
    invoke-interface {v2, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 12
    invoke-super {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 14
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 15
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    .line 17
    invoke-super {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 18
    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_1

    .line 20
    invoke-interface {v2, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    :cond_1
    throw v3
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    const-string v3, "message"

    .line 4
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "user"

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v3, "full_message"

    .line 6
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "download"

    const-string v4, "user"

    const-string v5, "chat"

    const-string v6, "member"

    const-string v7, "message"

    const-string v8, "attachment"

    const-string v9, "friend_status"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/im/freechat/data/sources/database/MainDatabase_Impl$1;

    const/16 v2, 0x2b

    invoke-direct {v1, p0, v2}, Lcom/im/freechat/data/sources/database/MainDatabase_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/MainDatabase_Impl;I)V

    const-string v2, "57e80285437fd5a5a91e4c08c968e853"

    const-string v3, "b725e5bd4db430af6a8ece1bd3cde5f1"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public downloadDao()Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_downloadDao:Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public friendStatusDao()Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_friendStatusDao:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoMigrationSpecsMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/room/migration/Migration;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/room/migration/Migration;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/room/migration/AutoMigrationSpec;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method protected getRequiredTypeConverters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-class v1, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/download/DownloadDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    invoke-static {}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public memberDao()Lcom/im/freechat/data/sources/database/entities/member/MemberDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_memberDao:Lcom/im/freechat/data/sources/database/entities/member/MemberDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public messageDao()Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_messageDao:Lcom/im/freechat/data/sources/database/entities/message/MessageDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userDao()Lcom/im/freechat/data/sources/database/entities/contact/UserDao;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;

    invoke-direct {v0, p0}, Lcom/im/freechat/data/sources/database/entities/contact/UserDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/MainDatabase_Impl;->_userDao:Lcom/im/freechat/data/sources/database/entities/contact/UserDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
