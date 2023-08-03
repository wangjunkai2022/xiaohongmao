.class public final Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/message/MessageDao;
.source "MessageDao_Impl.java"


# instance fields
.field private final __converters:Lcom/im/freechat/data/sources/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfMessageEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteByChatId:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfEditById:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfModifyMessage:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReadMyMessage:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfReadOtherMessage:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfResetSendings:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetMessageIdUnsafe:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetMessageSending:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfSetSendFailed:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
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
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/data/sources/database/Converters;

    invoke-direct {v0}, Lcom/im/freechat/data/sources/database/Converters;-><init>()V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    .line 3
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__insertionAdapterOfMessageEntity:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__deletionAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__updateAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfReadMyMessage:Landroidx/room/SharedSQLiteStatement;

    .line 8
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfReadOtherMessage:Landroidx/room/SharedSQLiteStatement;

    .line 9
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    .line 10
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$7;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfEditById:Landroidx/room/SharedSQLiteStatement;

    .line 11
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$8;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfDeleteByChatId:Landroidx/room/SharedSQLiteStatement;

    .line 12
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$9;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetMessageIdUnsafe:Landroidx/room/SharedSQLiteStatement;

    .line 13
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$10;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetMessageSending:Landroidx/room/SharedSQLiteStatement;

    .line 14
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$11;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfModifyMessage:Landroidx/room/SharedSQLiteStatement;

    .line 15
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$12;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfResetSendings:Landroidx/room/SharedSQLiteStatement;

    .line 16
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$13;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetSendFailed:Landroidx/room/SharedSQLiteStatement;

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
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

    .line 7
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2, v3}, Landroidx/collection/LongSparseArray;-><init>(I)V

    goto :goto_0

    :cond_2
    if-lez v7, :cond_3

    .line 8
    invoke-direct {v1, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

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
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 24
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 25
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 26
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v8, 0x2

    .line 27
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 28
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    invoke-virtual {v13, v8}, Lcom/im/freechat/data/sources/database/Converters;->mediaTypeFromInt(I)Lcom/im/freechat/shared/entities/message/Message$MediaType;

    move-result-object v13

    const/4 v8, 0x3

    .line 29
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v14, v6

    goto :goto_3

    .line 30
    :cond_7
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_3
    const/4 v8, 0x4

    .line 31
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_8

    move-object v15, v6

    goto :goto_4

    .line 32
    :cond_8
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_4
    const/4 v8, 0x5

    .line 33
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_9

    move-object/from16 v16, v6

    goto :goto_5

    .line 34
    :cond_9
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_5
    const/4 v8, 0x6

    .line 35
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v17, v6

    goto :goto_6

    .line 36
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_6
    const/4 v8, 0x7

    .line 37
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v6

    goto :goto_7

    .line 38
    :cond_b
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v8

    :goto_7
    const/16 v8, 0x8

    .line 39
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v19, v6

    goto :goto_8

    .line 40
    :cond_c
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v8

    :goto_8
    const/16 v8, 0x9

    .line 41
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v20, v6

    goto :goto_9

    .line 42
    :cond_d
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v20, v8

    :goto_9
    const/16 v8, 0xa

    .line 43
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_e

    move-object/from16 v21, v6

    goto :goto_a

    .line 44
    :cond_e
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v21, v8

    :goto_a
    const/16 v8, 0xb

    .line 45
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v22, v6

    goto :goto_b

    .line 46
    :cond_f
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v22, v8

    :goto_b
    const/16 v8, 0xc

    .line 47
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v23, v6

    goto :goto_c

    .line 48
    :cond_10
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object/from16 v23, v8

    :goto_c
    const/16 v8, 0xd

    .line 49
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_11

    move-object/from16 v24, v6

    goto :goto_d

    .line 50
    :cond_11
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v24, v8

    :goto_d
    const/16 v8, 0xe

    .line 51
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_12

    move-object/from16 v25, v6

    goto :goto_e

    .line 52
    :cond_12
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v25, v8

    :goto_e
    const/16 v8, 0xf

    .line 53
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_13

    move-object/from16 v26, v6

    goto :goto_f

    .line 54
    :cond_13
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v8

    .line 55
    :goto_f
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-object/from16 v27, v8

    move-object/from16 v8, v27

    invoke-direct/range {v8 .. v26}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;-><init>(JJLcom/im/freechat/shared/entities/message/Message$MediaType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 57
    :cond_14
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    throw v0
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->lambda$setMessageId$2(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetMessageSending:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfResetSendings:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetSendFailed:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/collection/LongSparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__fetchRelationshipattachmentAscomImFreechatDataSourcesDatabaseEntitiesAttachmentAttachmentEntity(Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super/range {p0 .. p7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1501(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao;->readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1601(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__insertionAdapterOfMessageEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__updateAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfReadMyMessage:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfReadOtherMessage:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$600(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfDeleteById:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$700(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfEditById:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$800(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfDeleteByChatId:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$900(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfSetMessageIdUnsafe:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method public static synthetic b(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->lambda$readOtherMessages$1(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

.method private synthetic lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$1601(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$readOtherMessages$1(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$1501(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setMessageId$2(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$1401(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V
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

    const-string v2, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__deletionAdapterOfMessageEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->delete(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V

    return-void
.end method

.method public deleteByChatId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$22;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$22;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$20;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageIds",
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$37;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$37;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public editById(JLjava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messageId",
            "content",
            "editedAt",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v8, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$21;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$21;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/lang/String;JJ)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v8, p6}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public findMessagesByQuery(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "query",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM message\n                    LEFT JOIN chat ON message.parent_chat_id = chat.chat_id\n                    LEFT JOIN user ON message.sender_id = user.user_id\n                    WHERE message.content LIKE \'%\' || ? || \'%\'\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 4
    :goto_0
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$34;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$34;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLastMessageId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    const-string v0, "SELECT MAX(message_id) FROM message"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$30;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$30;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v3, v1, v2, v4, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMessageById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM message WHERE message_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;

    invoke-direct {v1, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM message "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                    LEFT JOIN user ON message.sender_id = user.user_id "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "                    WHERE message_id IN ("

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 8
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 11
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 12
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

    .line 13
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 16
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$33;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$33;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
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
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SELECT * FROM message "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                    LEFT JOIN attachment ON attachment.parent_message_id = message.message_id"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                    LEFT JOIN user ON message.sender_id = user.user_id "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "                    WHERE message_id IN ("

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 10
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v2, ") OR media_id IN ("

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 13
    invoke-static {v0, v2}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x0

    add-int/2addr v3, v2

    .line 16
    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 18
    invoke-virtual {v0, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 21
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_3
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 24
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, p1, v2, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getOtherUnreadMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentUserId",
            "chatId",
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT message_id FROM message WHERE (sender_id != ?) AND parent_chat_id = ? AND message_id <= ? AND status = 1"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p2

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    invoke-virtual {v0, v1, p3, p4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 5
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance p3, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$27;

    invoke-direct {p3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$27;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p3, p5}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOthersUnreadMessageCount(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentUserId",
            "chatId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT COUNT(message_id) FROM message WHERE parent_chat_id = ? AND sender_id != ? AND status = 1"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p2

    const/4 p2, 0x1

    .line 2
    invoke-virtual {v0, p2, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    int-to-long p1, p1

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    invoke-static {}, Landroidx/room/util/DBUtil;->createCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;

    invoke-direct {v1, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$28;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$14;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
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
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$15;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$15;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;)V

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
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/c;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/c;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public modifyMessage(JLjava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messageId",
            "newContent",
            "editedAt"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db"

    const-string v2, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfModifyMessage:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v1, v2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p3, 0x2

    .line 6
    invoke-interface {v1, p3, p4, p5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    const/4 p3, 0x3

    .line 7
    invoke-interface {v1, p3, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 8
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 9
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_2

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfModifyMessage:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 11
    :try_start_1
    sget-object p2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, p2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 12
    :cond_5
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__preparedStmtOfModifyMessage:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 13
    throw p1
.end method

.method public readMyMessage(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentUserId",
            "chatId",
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$18;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$18;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJ)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v7, p5}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected readOtherMessage(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentUserId",
            "chatId",
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$19;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$19;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJ)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v7, p5}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readOtherMessages(IIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "currentUserId",
            "chatId",
            "messageId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v7, Lcom/im/freechat/data/sources/database/entities/message/a;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/database/entities/message/a;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;IIJ)V

    invoke-static {v0, v7, p5}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public resetSendings(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$25;

    invoke-direct {v1, p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$25;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setMessageId(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "oldId",
            "newId",
            "sendTime",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v10, Lcom/im/freechat/data/sources/database/entities/message/b;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/b;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJ)V

    move-object/from16 v0, p7

    invoke-static {v9, v10, v0}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setMessageIdUnsafe(JJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "oldId",
            "newId",
            "sendTime",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    iget-object v9, v8, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v10, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;

    move-object v0, v10

    move-object v1, p0

    move-wide v2, p3

    move-wide/from16 v4, p5

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$23;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;JJJ)V

    const/4 v0, 0x1

    move-object/from16 v1, p7

    invoke-static {v9, v0, v10, v1}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setMessageSending(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$24;

    invoke-direct {v1, p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$24;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setSendFailed(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msgId",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$26;

    invoke-direct {v1, p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$26;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subscribeLastReceivedMessage()Lkotlinx/coroutines/flow/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM full_message ORDER BY send_time DESC LIMIT 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 2
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v3, "attachment"

    const-string v4, "full_message"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$36;

    invoke-direct {v4, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$36;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, v3, v4}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object v0

    return-object v0
.end method

.method public subscribeMessages(IJ)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "laterThan"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM full_message WHERE parent_chat_id = ? AND send_time > ? ORDER BY message_id DESC"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    const/4 p1, 0x1

    .line 2
    invoke-virtual {v0, p1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    invoke-virtual {v0, v1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 4
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string p2, "attachment"

    const-string p3, "full_message"

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$31;

    invoke-direct {p3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$31;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public subscribePinnedMessageByChatId(I)Lkotlinx/coroutines/flow/i;
    .locals 4
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
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM full_message WHERE message_id = (SELECT pinned_message_id FROM chat WHERE chat_id = ?)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v1, "attachment"

    const-string v2, "full_message"

    const-string v3, "chat"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;

    invoke-direct {v2, p0, v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$16;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$16;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->update(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$17;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$17;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
