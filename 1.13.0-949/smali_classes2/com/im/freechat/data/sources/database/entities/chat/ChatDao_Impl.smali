.class public final Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;
.source "ChatDao_Impl.java"


# instance fields
.field private final __converters:Lcom/im/freechat/data/sources/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfChatEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteChatById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfIncreaseUnreadCount:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPinChatWithTime:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfPinMessage:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUnpinChat:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateAvatar:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateDraftMessage:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLastMessageId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateLastSyncMessageId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdatePublicState:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateShowHistoryToNewMembers:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateTitle:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateUnreadCount:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __updateAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/data/sources/database/Converters;

    invoke-direct {v0}, Lcom/im/freechat/data/sources/database/Converters;-><init>()V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    .line 3
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__insertionAdapterOfChatEntity:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__insertionAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityInsertionAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__deletionAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__updateAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 8
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__updateAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 9
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfPinChatWithTime:Landroidx/room/SharedSQLiteStatement;

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfPinMessage:Landroidx/room/SharedSQLiteStatement;

    .line 11
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateDraftMessage:Landroidx/room/SharedSQLiteStatement;

    .line 12
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdatePublicState:Landroidx/room/SharedSQLiteStatement;

    .line 13
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateShowHistoryToNewMembers:Landroidx/room/SharedSQLiteStatement;

    .line 14
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$11;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateTitle:Landroidx/room/SharedSQLiteStatement;

    .line 15
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$12;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateAvatar:Landroidx/room/SharedSQLiteStatement;

    .line 16
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$13;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateLastMessageId:Landroidx/room/SharedSQLiteStatement;

    .line 17
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$14;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateLastSyncMessageId:Landroidx/room/SharedSQLiteStatement;

    .line 18
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$15;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$15;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUnpinChat:Landroidx/room/SharedSQLiteStatement;

    .line 19
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$16;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$16;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfDeleteChatById:Landroidx/room/SharedSQLiteStatement;

    .line 20
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$17;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$17;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateUnreadCount:Landroidx/room/SharedSQLiteStatement;

    .line 21
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$18;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$18;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfIncreaseUnreadCount:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method private __fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    .line 3
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v6, v5, :cond_2

    .line 5
    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_1

    .line 6
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

    .line 7
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 8
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `media_id`,`parent_message_id`,`media_type`,`local_path`,`remote_url`,`width`,`height`,`preview_local_path`,`preview_remote_url`,`file_size`,`duration`,`lat`,`lng`,`filename`,`mime_type`,`gif_id` FROM `attachment` WHERE `parent_message_id` IN ("

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 12
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v4

    .line 15
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 16
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 17
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 18
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    invoke-static {v5, v2, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v5, "parent_message_id"

    .line 20
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndex(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6

    .line 21
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 22
    :cond_6
    :goto_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 23
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 24
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 25
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 26
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 27
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v8, 0x2

    .line 28
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 29
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    invoke-virtual {v13, v8}, Lcom/im/freechat/data/sources/database/Converters;->mediaTypeFromInt(I)Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v13

    const/4 v8, 0x3

    .line 30
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v14, v6

    goto :goto_3

    .line 31
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_3
    const/4 v8, 0x4

    .line 32
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v6

    goto :goto_4

    .line 33
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_4
    const/4 v8, 0x5

    .line 34
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v16, v6

    goto :goto_5

    .line 35
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_5
    const/4 v8, 0x6

    .line 36
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v17, v6

    goto :goto_6

    .line 37
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_6
    const/4 v8, 0x7

    .line 38
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v6

    goto :goto_7

    .line 39
    :cond_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    :goto_7
    const/16 v8, 0x8

    .line 40
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v19, v6

    goto :goto_8

    .line 41
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    :goto_8
    const/16 v8, 0x9

    .line 42
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v20, v6

    goto :goto_9

    .line 43
    :cond_d
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v20, v8

    :goto_9
    const/16 v8, 0xa

    .line 44
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v21, v6

    goto :goto_a

    .line 45
    :cond_e
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v21, v8

    :goto_a
    const/16 v8, 0xb

    .line 46
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v22, v6

    goto :goto_b

    .line 47
    :cond_f
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v22, v8

    :goto_b
    const/16 v8, 0xc

    .line 48
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v23, v6

    goto :goto_c

    .line 49
    :cond_10
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v23, v8

    :goto_c
    const/16 v8, 0xd

    .line 50
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v24, v6

    goto :goto_d

    .line 51
    :cond_11
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v24, v8

    :goto_d
    const/16 v8, 0xe

    .line 52
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_12

    move-object/from16 v25, v6

    goto :goto_e

    .line 53
    :cond_12
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v8

    :goto_e
    const/16 v8, 0xf

    .line 54
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_13

    move-object/from16 v26, v6

    goto :goto_f

    .line 55
    :cond_13
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v8

    .line 56
    :goto_f
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object/from16 v27, v8

    move-object/from16 v8, v27

    invoke-direct/range {v8 .. v26}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 58
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 59
    throw v0
.end method

.method private __fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(Landroidx/collection/LongSparseArray;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "_map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-le v2, v3, :cond_4

    .line 3
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    :cond_1
    if-ge v6, v5, :cond_2

    .line 5
    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v8

    invoke-virtual {v0, v6}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v2, v8, v9, v10}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v3, :cond_1

    .line 6
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(Landroidx/collection/LongSparseArray;)V

    .line 7
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 8
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(Landroidx/collection/LongSparseArray;)V

    :cond_3
    return-void

    .line 9
    :cond_4
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SELECT `user`.`user_id` AS `user_id`,`user`.`nickname` AS `nickname`,`user`.`avatar_url` AS `avatar_url`,`user`.`management_role` AS `management_role`,`user`.`user_name_mask` AS `user_name_mask`,`user`.`is_service` AS `is_service`,`user`.`is_current` AS `is_current`,`user`.`last_online` AS `last_online`,`user`.`bio` AS `bio`,_junction.`chat_id` FROM `member` AS _junction INNER JOIN `user` ON (_junction.`user_id` = `user`.`user_id`) WHERE _junction.`chat_id` IN ("

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    .line 12
    invoke-static {v2, v3}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v5, ")"

    .line 13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v4

    .line 15
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 16
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    .line 17
    invoke-virtual {v0, v5}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v7

    .line 18
    invoke-virtual {v2, v6, v7, v8}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    add-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v6, 0x0

    invoke-static {v5, v2, v4, v6}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 20
    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_e

    const/16 v5, 0x9

    .line 21
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 22
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 23
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 24
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v9, v6

    goto :goto_3

    .line 25
    :cond_7
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    :goto_3
    const/4 v7, 0x2

    .line 26
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v6

    goto :goto_4

    .line 27
    :cond_8
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    :goto_4
    const/4 v7, 0x3

    .line 28
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v7, 0x4

    .line 29
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v6

    goto :goto_5

    .line 30
    :cond_9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    :goto_5
    const/4 v7, 0x5

    .line 31
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_a

    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    const/4 v13, 0x0

    :goto_6
    const/4 v7, 0x6

    .line 32
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_b

    const/4 v14, 0x1

    goto :goto_7

    :cond_b
    const/4 v14, 0x0

    :goto_7
    const/4 v7, 0x7

    .line 33
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object v15, v6

    goto :goto_8

    .line 34
    :cond_c
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v15, v7

    :goto_8
    const/16 v7, 0x8

    .line 35
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    move-object/from16 v16, v6

    goto :goto_9

    .line 36
    :cond_d
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .line 37
    :goto_9
    new-instance v7, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v16}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 39
    :cond_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 40
    throw v0
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateShowHistoryToNewMembers:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateTitle:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateAvatar:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateLastMessageId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateLastSyncMessageId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUnpinChat:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfDeleteChatById:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateUnreadCount:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfIncreaseUnreadCount:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipuserAscomImFreechatDataSourcesDatabaseEntitiesContactUserEntity(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__insertionAdapterOfChatEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static synthetic access$2101(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->insertOrUpdatePartial(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2201(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao;->deleteChatsNotInList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2301(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__insertionAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__updateAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__updateAdapterOfPartialChatUpdateEntityAsChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfPinChatWithTime:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfPinMessage:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdateDraftMessage:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$900(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__preparedStmtOfUpdatePublicState:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public static synthetic b(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->lambda$deleteChatsNotInList$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->lambda$insertOrUpdatePartial$2(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$deleteChatsNotInList$1(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2201(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2301(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$insertOrUpdatePartial$2(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2101(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public checkLastMessages(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ids",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT chat_id FROM chat WHERE last_message_id IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$48;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$48;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public delete(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db"

    const-string v2, "com.im.freechat.data.sources.database.entities.chat.ChatDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__deletionAdapterOfChatEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 6
    :try_start_1
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    :cond_4
    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->delete(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V

    return-void
.end method

.method public deleteChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$35;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$35;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteChatsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ids",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$52;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$52;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteChatsNotInList(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ids",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/b;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/b;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllChatIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT chat_id FROM chat"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$46;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$46;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllChats(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$38;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$38;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x1

    invoke-static {v2, v0, v1, v3, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChatById(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$42;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$42;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChatByIdWithContacts(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastSyncMessageId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "chatId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT last_sync_message_id FROM chat WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 6
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$51;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$51;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastSyncMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT MAX(last_sync_message_id) FROM chat"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$50;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$50;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getNonPredefinedChatIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nonPredefinedTypes",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT chat.chat_id FROM chat WHERE type in ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 12
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$39;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$39;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getServiceChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "type",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT chat.chat_id FROM chat WHERE type = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$43;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$43;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public increaseUnreadCount(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$37;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$37;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$19;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$19;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$21;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$21;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic insert(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$20;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$20;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/a;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/a;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insertOrUpdatePartial(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "list",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/c;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/c;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listenCommonGroupsForUserId(I)Lkotlinx/coroutines/flow/i;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT chat.*, message.*  FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id INNER JOIN member ON chat.chat_id = member.chat_id WHERE user_id = ? AND type = 2 "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "member"

    const-string v2, "user"

    const-string v3, "attachment"

    const-string v4, "chat"

    const-string v5, "message"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public listenSingleChatForUserId(I)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT chat_id FROM chat WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "chat"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$44;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$44;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public listenTotalUnreadCount()Lkotlinx/coroutines/flow/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT SUM(unread_count) from chat"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "chat"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$49;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$49;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public pinChatWithTime(IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "time",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$25;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$25;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;JI)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public pinMessage(ILjava/lang/Long;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "chatId",
            "messageId",
            "userId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$26;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$26;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/Long;Ljava/lang/Integer;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subscribeChat(I)Lkotlinx/coroutines/flow/i;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM chat LEFT JOIN message ON chat.last_message_id = message.message_id WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "member"

    const-string v3, "user"

    const-string v4, "attachment"

    const-string v5, "chat"

    const-string v6, "message"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$41;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$41;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v1, v2, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public subscribeChats()Lkotlinx/coroutines/flow/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM chat \n                    LEFT JOIN message ON chat.last_message_id = message.message_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    LEFT JOIN (SELECT send_time as last_time, message_id as last_time_msg_id FROM message) ON chat.last_message_id = last_time_msg_id"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "member"

    const-string v3, "user"

    const-string v4, "attachment"

    const-string v5, "chat"

    const-string v6, "message"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x1

    invoke-static {v1, v0, v2, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public unpinChat(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$34;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$34;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$22;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$22;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->update(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "values",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$23;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$23;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateAvatar(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "avatar",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$31;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$31;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateDraftMessage(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "draft",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$27;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$27;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateLastMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "lastMessageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$32;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$32;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/Long;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateLastSyncMessageId(ILjava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "lastSyncMessageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$33;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$33;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/Long;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updatePartial(Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "value",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$24;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$24;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Lcom/im/freechat/data/sources/database/entities/chat/PartialChatUpdateEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updatePublicState(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "isPublic",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$28;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$28;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;ZI)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateShowHistoryToNewMembers(IZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "show",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$29;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$29;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;ZI)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateTitle(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "title",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$30;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$30;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Ljava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateUnreadCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "unreadCount",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$36;

    invoke-direct {v1, p0, p2, p1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$36;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;II)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
