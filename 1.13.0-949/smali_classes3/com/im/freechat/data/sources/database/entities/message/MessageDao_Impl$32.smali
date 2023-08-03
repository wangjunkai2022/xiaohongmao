.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->subscribePinnedMessageByChatId(I)Lkotlinx/coroutines/flow/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;",
        ">;"
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;
    .locals 51
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v3, "db"

    const-string v4, "com.im.freechat.data.sources.database.entities.message.MessageDao"

    invoke-interface {v0, v3, v4}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "message_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "sender_id"

    .line 4
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "content"

    .line 5
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "parent_chat_id"

    .line 6
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "send_time"

    .line 7
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "status"

    .line 8
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "edit_time"

    .line 9
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "forward_sender_id"

    .line 10
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "forward_message_id"

    .line 11
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "forward_chat_id"

    .line 12
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "reply_to_message_id"

    .line 13
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "mention_all"

    .line 14
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "mentions"

    .line 15
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "styles"

    .line 16
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "is_service"

    .line 17
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "user_id"

    .line 18
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "nickname"

    .line 19
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "avatar_url"

    .line 20
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "management_role"

    .line 21
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "user_name_mask"

    .line 22
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "is_current"

    .line 23
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "forwarder_user_id"

    .line 24
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "forwarder_nickname"

    .line 25
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "forwarder_avatar_url"

    .line 26
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "forwarder_management_role"

    .line 27
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "forwarder_user_name_mask"

    .line 28
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "forwarder_is_current"

    .line 29
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    .line 30
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 31
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v31

    if-eqz v31, :cond_2

    move/from16 v31, v14

    move/from16 v32, v15

    .line 32
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 33
    invoke-virtual {v3, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/ArrayList;

    if-nez v33, :cond_1

    move/from16 v33, v5

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {v3, v14, v15, v5}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move/from16 v33, v5

    :goto_2
    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v5, v33

    goto :goto_1

    :cond_2
    move/from16 v33, v5

    move/from16 v31, v14

    move/from16 v32, v15

    const/4 v5, -0x1

    .line 36
    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 37
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v5, v3}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$1300(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 38
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 39
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move/from16 v5, v31

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v15, v32

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_5

    move/from16 v14, v33

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_8

    move-object/from16 v32, v3

    move/from16 v3, v17

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    move/from16 v17, v3

    move/from16 v3, v18

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v3, v19

    const/4 v2, 0x0

    goto/16 :goto_10

    :cond_4
    move/from16 v17, v3

    goto :goto_3

    :cond_5
    move-object/from16 v32, v3

    move/from16 v3, v18

    move/from16 v14, v33

    goto :goto_4

    :cond_6
    move/from16 v5, v31

    :cond_7
    move/from16 v15, v32

    move/from16 v14, v33

    :cond_8
    move-object/from16 v32, v3

    :goto_3
    move/from16 v3, v18

    .line 40
    :goto_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 42
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v37, 0x0

    goto :goto_5

    .line 43
    :cond_9
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v37, v6

    .line 44
    :goto_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 45
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    .line 46
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    goto :goto_6

    .line 47
    :cond_a
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 48
    :goto_6
    iget-object v7, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v7}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v41

    .line 49
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v42, 0x0

    goto :goto_7

    .line 50
    :cond_b
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v42, v6

    .line 51
    :goto_7
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v43, 0x0

    goto :goto_8

    .line 52
    :cond_c
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v43, v6

    .line 53
    :goto_8
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v44, 0x0

    goto :goto_9

    .line 54
    :cond_d
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v44, v6

    .line 55
    :goto_9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v45, 0x0

    goto :goto_a

    .line 56
    :cond_e
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v45, v5

    .line 57
    :goto_a
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const/16 v46, 0x0

    goto :goto_b

    .line 58
    :cond_f
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v46, v5

    .line 59
    :goto_b
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_10

    const/16 v47, 0x1

    goto :goto_c

    :cond_10
    const/16 v47, 0x0

    .line 60
    :goto_c
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    goto :goto_d

    .line 61
    :cond_11
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    :goto_d
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v48

    move/from16 v2, v17

    .line 63
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v2, 0x0

    goto :goto_e

    .line 64
    :cond_12
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    :goto_e
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v49

    .line 66
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_13

    const/16 v50, 0x1

    goto :goto_f

    :cond_13
    const/16 v50, 0x0

    .line 67
    :goto_f
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v33, v2

    invoke-direct/range {v33 .. v50}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    move/from16 v3, v19

    .line 68
    :goto_10
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_15

    move/from16 v5, v20

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_16

    move/from16 v6, v21

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_17

    move/from16 v7, v22

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_18

    move/from16 v8, v23

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_19

    move/from16 v9, v24

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_14

    goto :goto_11

    :cond_14
    move/from16 v5, v25

    const/4 v3, 0x0

    goto :goto_16

    :cond_15
    move/from16 v5, v20

    :cond_16
    move/from16 v6, v21

    :cond_17
    move/from16 v7, v22

    :cond_18
    move/from16 v8, v23

    :cond_19
    move/from16 v9, v24

    .line 69
    :goto_11
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 70
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/16 v19, 0x0

    goto :goto_12

    .line 71
    :cond_1a
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    .line 72
    :goto_12
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/16 v20, 0x0

    goto :goto_13

    .line 73
    :cond_1b
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    .line 74
    :goto_13
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 75
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v22, 0x0

    goto :goto_14

    .line 76
    :cond_1c
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v22, v3

    .line 77
    :goto_14
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v23, 0x1

    goto :goto_15

    :cond_1d
    const/16 v23, 0x0

    .line 78
    :goto_15
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v23}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    move/from16 v5, v25

    .line 79
    :goto_16
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_1f

    move/from16 v6, v26

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_20

    move/from16 v7, v27

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_21

    move/from16 v8, v28

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_22

    move/from16 v9, v29

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_23

    move/from16 v10, v30

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-nez v11, :cond_1e

    goto :goto_17

    :cond_1e
    const/4 v5, 0x0

    goto :goto_1c

    :cond_1f
    move/from16 v6, v26

    :cond_20
    move/from16 v7, v27

    :cond_21
    move/from16 v8, v28

    :cond_22
    move/from16 v9, v29

    :cond_23
    move/from16 v10, v30

    .line 80
    :goto_17
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 81
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_24

    const/16 v19, 0x0

    goto :goto_18

    .line 82
    :cond_24
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    .line 83
    :goto_18
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v20, 0x0

    goto :goto_19

    .line 84
    :cond_25
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v5

    .line 85
    :goto_19
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 86
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/16 v22, 0x0

    goto :goto_1a

    .line 87
    :cond_26
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    .line 88
    :goto_1a
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_27

    const/16 v23, 0x1

    goto :goto_1b

    :cond_27
    const/16 v23, 0x0

    .line 89
    :goto_1b
    new-instance v5, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v23}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 90
    :goto_1c
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v32

    .line 91
    invoke-virtual {v0, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_28

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    :cond_28
    new-instance v6, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    invoke-direct {v6, v2, v3, v5, v0}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v6

    goto :goto_1d

    :cond_29
    const/4 v2, 0x0

    .line 94
    :goto_1d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_2a

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    move-object/from16 v3, v16

    invoke-interface {v3, v0}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    :cond_2a
    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1f

    :catch_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_1f

    :catch_1
    move-exception v0

    :goto_1e
    if-eqz v3, :cond_2b

    :try_start_2
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v3, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v3, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_2b
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    .line 95
    :cond_2c
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->call()Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$32;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
