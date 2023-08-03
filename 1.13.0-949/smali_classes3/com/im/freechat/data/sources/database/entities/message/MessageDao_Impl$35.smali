.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->getMessagesByMediaIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$_statement"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "is_service"

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "db"

    const-string v5, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v2, v4, v5}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 3
    :goto_0
    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v4}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v5, "message_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v7, "sender_id"

    .line 4
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "content"

    .line 5
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "parent_chat_id"

    .line 6
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "send_time"

    .line 7
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "status"

    .line 8
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "edit_time"

    .line 9
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "forward_sender_id"

    .line 10
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "forward_message_id"

    .line 11
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "forward_chat_id"

    .line 12
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v6, "reply_to_message_id"

    .line 13
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v3, "mention_all"

    .line 14
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "mentions"

    .line 15
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "styles"

    .line 16
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    .line 17
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "user_id"

    .line 18
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "nickname"

    .line 19
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "avatar_url"

    .line 20
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "management_role"

    .line 21
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "user_name_mask"

    .line 22
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 23
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v24, v2

    const-string v2, "is_current"

    .line 24
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    .line 25
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 26
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v26

    if-eqz v26, :cond_2

    move/from16 v26, v14

    move/from16 v27, v15

    .line 27
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 28
    invoke-virtual {v2, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    if-nez v28, :cond_1

    move/from16 v28, v0

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-virtual {v2, v14, v15, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move/from16 v28, v0

    :goto_2
    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v0, v28

    goto :goto_1

    :cond_2
    move/from16 v28, v0

    move/from16 v26, v14

    move/from16 v27, v15

    const/4 v0, -0x1

    .line 31
    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 32
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0, v2}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$1300(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 35
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    move/from16 v14, v26

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_7

    move/from16 v15, v27

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_8

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_8

    move-object/from16 v27, v0

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v2

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move/from16 v18, v2

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_4

    move/from16 v19, v2

    move/from16 v2, v28

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-nez v28, :cond_3

    goto :goto_6

    :cond_3
    move/from16 v47, v7

    move/from16 v28, v8

    move/from16 v7, v18

    const/4 v8, 0x0

    move/from16 v18, v0

    :goto_4
    move/from16 v0, v20

    goto/16 :goto_12

    :cond_4
    move/from16 v19, v2

    goto :goto_5

    :cond_5
    move/from16 v18, v2

    goto :goto_5

    :cond_6
    move/from16 v14, v26

    :cond_7
    move/from16 v15, v27

    :cond_8
    move-object/from16 v27, v0

    move/from16 v0, v17

    :cond_9
    move-object/from16 v17, v2

    :goto_5
    move/from16 v2, v28

    .line 36
    :goto_6
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 37
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 38
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_a

    const/16 v33, 0x0

    goto :goto_7

    .line 39
    :cond_a
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v33, v28

    .line 40
    :goto_7
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 41
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 42
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_b

    move/from16 v47, v7

    move/from16 v28, v8

    const/4 v7, 0x0

    goto :goto_8

    .line 43
    :cond_b
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move/from16 v47, v7

    move-object/from16 v7, v28

    move/from16 v28, v8

    .line 44
    :goto_8
    iget-object v8, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v8}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v37

    .line 45
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v38, 0x0

    goto :goto_9

    .line 46
    :cond_c
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v38, v7

    .line 47
    :goto_9
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v39, 0x0

    goto :goto_a

    .line 48
    :cond_d
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v39, v7

    .line 49
    :goto_a
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_e

    const/16 v40, 0x0

    goto :goto_b

    .line 50
    :cond_e
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v40, v7

    .line 51
    :goto_b
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v41, 0x0

    goto :goto_c

    .line 52
    :cond_f
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v41, v7

    .line 53
    :goto_c
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v42, 0x0

    goto :goto_d

    .line 54
    :cond_10
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v42, v7

    .line 55
    :goto_d
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_11

    const/16 v43, 0x1

    goto :goto_e

    :cond_11
    const/16 v43, 0x0

    .line 56
    :goto_e
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v7, 0x0

    goto :goto_f

    .line 57
    :cond_12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 58
    :goto_f
    iget-object v8, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v8}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v44

    move/from16 v7, v18

    .line 59
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_13

    move/from16 v18, v0

    const/4 v8, 0x0

    goto :goto_10

    .line 60
    :cond_13
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v18, v0

    .line 61
    :goto_10
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v45

    move/from16 v0, v19

    .line 62
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_14

    const/16 v46, 0x1

    goto :goto_11

    :cond_14
    const/16 v46, 0x0

    .line 63
    :goto_11
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 64
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v29, v8

    invoke-direct/range {v29 .. v46}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    move/from16 v19, v0

    goto/16 :goto_4

    .line 65
    :goto_12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_16

    move/from16 v20, v2

    move/from16 v2, v21

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_17

    move/from16 v21, v3

    move/from16 v3, v22

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v22, v6

    move/from16 v6, v23

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_19

    move/from16 v23, v7

    move/from16 v7, v24

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1a

    move/from16 v24, v9

    move/from16 v9, v25

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-nez v25, :cond_15

    goto :goto_13

    :cond_15
    move/from16 v26, v0

    move/from16 v25, v2

    move/from16 v29, v3

    const/4 v0, 0x0

    goto/16 :goto_18

    :cond_16
    move/from16 v20, v2

    move/from16 v2, v21

    :cond_17
    move/from16 v21, v3

    move/from16 v3, v22

    :cond_18
    move/from16 v22, v6

    move/from16 v6, v23

    :cond_19
    move/from16 v23, v7

    move/from16 v7, v24

    :cond_1a
    move/from16 v24, v9

    move/from16 v9, v25

    .line 66
    :goto_13
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 67
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1b

    const/16 v31, 0x0

    goto :goto_14

    .line 68
    :cond_1b
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v31, v25

    .line 69
    :goto_14
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1c

    const/16 v32, 0x0

    goto :goto_15

    .line 70
    :cond_1c
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v32, v25

    .line 71
    :goto_15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 72
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1d

    const/16 v34, 0x0

    goto :goto_16

    .line 73
    :cond_1d
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v34, v25

    .line 74
    :goto_16
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_1e

    const/16 v35, 0x1

    goto :goto_17

    :cond_1e
    const/16 v35, 0x0

    .line 75
    :goto_17
    new-instance v25, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-object/from16 v29, v25

    invoke-direct/range {v29 .. v35}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    move/from16 v26, v0

    move/from16 v29, v3

    move-object/from16 v0, v25

    move/from16 v25, v2

    .line 76
    :goto_18
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v30, v5

    move-object/from16 v5, v17

    .line 77
    invoke-virtual {v5, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1f

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :cond_1f
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct {v3, v8, v0, v5, v2}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V

    move-object/from16 v0, v27

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v27, v15

    move-object/from16 v2, v17

    move/from16 v17, v18

    move/from16 v3, v21

    move/from16 v18, v23

    move/from16 v21, v25

    move/from16 v8, v28

    move/from16 v5, v30

    move/from16 v23, v6

    move/from16 v25, v9

    move/from16 v28, v20

    move/from16 v6, v22

    move/from16 v9, v24

    move/from16 v20, v26

    move/from16 v22, v29

    move/from16 v24, v7

    move/from16 v26, v14

    move/from16 v7, v47

    goto/16 :goto_3

    .line 81
    :cond_20
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_21

    sget-object v2, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    move-object/from16 v3, v16

    invoke-interface {v3, v2}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 82
    :cond_21
    iget-object v2, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1a

    :catch_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_19

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_1a

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_19
    if-eqz v3, :cond_22

    .line 83
    :try_start_2
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v3, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v3, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_22
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    :goto_1a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_23

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    .line 84
    :cond_23
    iget-object v2, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$35;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 85
    throw v0
.end method
