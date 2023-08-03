.class Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;
.super Ljava/lang/Object;
.source "ChatDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->getChatByIdWithContacts(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;
    .locals 55
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

    const-string v4, "com.im.freechat.data.sources.database.entities.chat.ChatDao"

    invoke-interface {v0, v3, v4}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v0, "chat_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "title"

    .line 4
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "avatar"

    .line 5
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "type"

    .line 6
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "opponent_last_read_message_id"

    .line 7
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "last_message_id"

    .line 8
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "last_sync_message_id"

    .line 9
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "unread_count"

    .line 10
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "pinned_message_id"

    .line 11
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "pinned_user_id"

    .line 12
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "pinned_time"

    .line 13
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v5, "is_public"

    .line 14
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v2, "history_new_member"

    .line 15
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v16, v3

    :try_start_2
    const-string v3, "invitation_link"

    .line 16
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "draft_message"

    .line 17
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "message_id"

    .line 18
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v2

    const-string v2, "sender_id"

    .line 19
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "content"

    .line 20
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "parent_chat_id"

    .line 21
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "send_time"

    .line 22
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "status"

    .line 23
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "edit_time"

    .line 24
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "forward_sender_id"

    .line 25
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    const-string v2, "forward_message_id"

    .line 26
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    const-string v2, "forward_chat_id"

    .line 27
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v28, v2

    const-string v2, "reply_to_message_id"

    .line 28
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v29, v2

    const-string v2, "mention_all"

    .line 29
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v30, v2

    const-string v2, "mentions"

    .line 30
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v31, v2

    const-string v2, "styles"

    .line 31
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v32, v2

    const-string v2, "is_service"

    .line 32
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v33, v2

    .line 33
    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v34, v5

    .line 34
    new-instance v5, Landroidx/collection/LongSparseArray;

    invoke-direct {v5}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 35
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v35

    if-eqz v35, :cond_3

    move/from16 v35, v14

    move/from16 v36, v15

    .line 36
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 37
    invoke-virtual {v2, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    if-nez v37, :cond_1

    move/from16 v37, v13

    .line 38
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v2, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move/from16 v37, v13

    .line 40
    :goto_2
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 41
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 42
    invoke-virtual {v5, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_2

    .line 43
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v5, v13, v14, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    move/from16 v14, v35

    move/from16 v15, v36

    move/from16 v13, v37

    goto :goto_1

    :cond_3
    move/from16 v37, v13

    move/from16 v35, v14

    move/from16 v36, v15

    const/4 v13, -0x1

    .line 45
    invoke-interface {v4, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 46
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$1900(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 47
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v5}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 48
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_37

    .line 49
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v13, v37

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_6

    move/from16 v15, v35

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_7

    move/from16 v14, v36

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_9

    move-object/from16 v36, v2

    move/from16 v2, v34

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_a

    move-object/from16 v34, v5

    move/from16 v5, v19

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_b

    move/from16 v19, v3

    move/from16 v3, v17

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v3

    move/from16 v3, v18

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_4

    goto :goto_5

    :cond_4
    move/from16 v3, v19

    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_5
    move/from16 v17, v3

    goto :goto_4

    :cond_6
    move/from16 v15, v35

    :cond_7
    move/from16 v14, v36

    goto :goto_3

    :cond_8
    move/from16 v15, v35

    move/from16 v14, v36

    move/from16 v13, v37

    :cond_9
    :goto_3
    move-object/from16 v36, v2

    move/from16 v2, v34

    :cond_a
    move-object/from16 v34, v5

    move/from16 v5, v19

    :cond_b
    move/from16 v19, v3

    :goto_4
    move/from16 v3, v18

    .line 50
    :goto_5
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 51
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v39, 0x0

    goto :goto_6

    .line 52
    :cond_c
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v39, v6

    .line 53
    :goto_6
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v40, 0x0

    goto :goto_7

    .line 54
    :cond_d
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v40, v6

    .line 55
    :goto_7
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 56
    iget-object v7, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v7}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/im/freechat/data/sources/database/Converters;->typeFromInt(I)Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v41

    .line 57
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v42, 0x0

    goto :goto_8

    .line 58
    :cond_e
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v42, v6

    .line 59
    :goto_8
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v43, 0x0

    goto :goto_9

    .line 60
    :cond_f
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v43, v6

    .line 61
    :goto_9
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v44, 0x0

    goto :goto_a

    .line 62
    :cond_10
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v44, v6

    .line 63
    :goto_a
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v45

    .line 64
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v46, 0x0

    goto :goto_b

    .line 65
    :cond_11
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v46, v6

    .line 66
    :goto_b
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v47, 0x0

    goto :goto_c

    .line 67
    :cond_12
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v47, v6

    .line 68
    :goto_c
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v48, 0x0

    goto :goto_d

    .line 69
    :cond_13
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v48, v6

    .line 70
    :goto_d
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_14

    const/16 v49, 0x1

    goto :goto_e

    :cond_14
    const/16 v49, 0x0

    .line 71
    :goto_e
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_15

    move/from16 v2, v17

    const/16 v50, 0x1

    goto :goto_f

    :cond_15
    move/from16 v2, v17

    const/16 v50, 0x0

    .line 72
    :goto_f
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_16

    const/16 v51, 0x0

    goto :goto_10

    .line 73
    :cond_16
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v51, v2

    .line 74
    :goto_10
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v52, 0x0

    goto :goto_11

    .line 75
    :cond_17
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v52, v2

    .line 76
    :goto_11
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-object/from16 v37, v2

    invoke-direct/range {v37 .. v52}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v19

    .line 77
    :goto_12
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v5, :cond_25

    move/from16 v5, v20

    :try_start_3
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_24

    move/from16 v6, v21

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_23

    move/from16 v7, v22

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_22

    move/from16 v8, v23

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_21

    move/from16 v9, v24

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_20

    move/from16 v10, v25

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_1f

    move/from16 v11, v26

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1e

    move/from16 v12, v27

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1d

    move/from16 v13, v28

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_1c

    move/from16 v14, v29

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    move/from16 v15, v30

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_1a

    move-object/from16 v17, v2

    move/from16 v2, v31

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_19

    move/from16 v18, v0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_26

    move/from16 v1, v33

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_18

    goto/16 :goto_20

    :cond_18
    const/4 v2, 0x0

    move-object/from16 v6, p0

    :goto_13
    move/from16 v0, v18

    goto/16 :goto_30

    :cond_19
    move/from16 v18, v0

    goto/16 :goto_1f

    :cond_1a
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto/16 :goto_1e

    :cond_1b
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_1d

    :cond_1c
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_1c

    :cond_1d
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_1b

    :cond_1e
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_1a

    :cond_1f
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_19

    :cond_20
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_18

    :cond_21
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_17

    :cond_22
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_16

    :cond_23
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_15

    :cond_24
    move/from16 v18, v0

    move-object/from16 v17, v2

    goto :goto_14

    :cond_25
    move/from16 v18, v0

    move-object/from16 v17, v2

    move/from16 v5, v20

    :goto_14
    move/from16 v6, v21

    :goto_15
    move/from16 v7, v22

    :goto_16
    move/from16 v8, v23

    :goto_17
    move/from16 v9, v24

    :goto_18
    move/from16 v10, v25

    :goto_19
    move/from16 v11, v26

    :goto_1a
    move/from16 v12, v27

    :goto_1b
    move/from16 v13, v28

    :goto_1c
    move/from16 v14, v29

    :goto_1d
    move/from16 v15, v30

    :goto_1e
    move/from16 v2, v31

    :goto_1f
    move/from16 v0, v32

    :cond_26
    move/from16 v1, v33

    .line 78
    :goto_20
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_28

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_27

    goto :goto_21

    :cond_27
    const/4 v0, 0x0

    move-object/from16 v6, p0

    goto/16 :goto_2e

    .line 79
    :cond_28
    :goto_21
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 80
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 81
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_29

    const/16 v41, 0x0

    goto :goto_22

    .line 82
    :cond_29
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v41, v5

    .line 83
    :goto_22
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 84
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 85
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    :goto_23
    move-object/from16 v6, p0

    goto :goto_24

    .line 86
    :cond_2a
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_23

    .line 87
    :goto_24
    :try_start_4
    iget-object v7, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v7}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v45

    .line 88
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v46, 0x0

    goto :goto_25

    .line 89
    :cond_2b
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v46, v5

    .line 90
    :goto_25
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v47, 0x0

    goto :goto_26

    .line 91
    :cond_2c
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v47, v5

    .line 92
    :goto_26
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v48, 0x0

    goto :goto_27

    .line 93
    :cond_2d
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v48, v5

    .line 94
    :goto_27
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v49, 0x0

    goto :goto_28

    .line 95
    :cond_2e
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v49, v5

    .line 96
    :goto_28
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v50, 0x0

    goto :goto_29

    .line 97
    :cond_2f
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v50, v5

    .line 98
    :goto_29
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_30

    const/16 v51, 0x1

    goto :goto_2a

    :cond_30
    const/16 v51, 0x0

    .line 99
    :goto_2a
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_31

    const/4 v2, 0x0

    goto :goto_2b

    .line 100
    :cond_31
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    :goto_2b
    iget-object v5, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v5}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v52

    .line 102
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 v0, 0x0

    goto :goto_2c

    .line 103
    :cond_32
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_2c
    iget-object v2, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v53

    .line 105
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_33

    const/16 v54, 0x1

    goto :goto_2d

    :cond_33
    const/16 v54, 0x0

    .line 106
    :goto_2d
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v37, v0

    invoke-direct/range {v37 .. v54}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    .line 107
    :goto_2e
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_34

    .line 108
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v3, v34

    .line 109
    invoke-virtual {v3, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_2f

    :cond_34
    const/4 v1, 0x0

    :goto_2f
    if-nez v1, :cond_35

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :cond_35
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3, v1}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V

    goto/16 :goto_13

    .line 112
    :goto_30
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-object/from16 v3, v36

    .line 113
    invoke-virtual {v3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :cond_36
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    move-object/from16 v3, v17

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v5, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V

    move-object v2, v1

    goto :goto_31

    :catchall_0
    move-exception v0

    move-object/from16 v6, p0

    goto :goto_33

    :cond_37
    move-object v6, v1

    const/4 v5, 0x0

    move-object v2, v5

    .line 116
    :goto_31
    iget-object v0, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v16, :cond_38

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v1, v16

    :try_start_5
    invoke-interface {v1, v0}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_32

    :catchall_1
    move-exception v0

    goto :goto_34

    :cond_38
    move-object/from16 v1, v16

    .line 117
    :goto_32
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 118
    iget-object v0, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v0, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v1, :cond_39

    invoke-interface {v1}, Lio/sentry/v0;->h()V

    :cond_39
    return-object v2

    :catchall_2
    move-exception v0

    goto :goto_33

    :catchall_3
    move-exception v0

    move-object v6, v1

    :goto_33
    move-object/from16 v1, v16

    goto :goto_34

    :catchall_4
    move-exception v0

    move-object v6, v1

    move-object v1, v3

    .line 119
    :goto_34
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 120
    iget-object v2, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 121
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catch_0
    move-exception v0

    goto :goto_35

    :catchall_5
    move-exception v0

    move-object v6, v1

    move-object v1, v3

    goto :goto_36

    :catch_1
    move-exception v0

    move-object v6, v1

    move-object v1, v3

    :goto_35
    if-eqz v1, :cond_3a

    :try_start_8
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v1, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v1, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3a
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    :goto_36
    iget-object v2, v6, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Lio/sentry/v0;->h()V

    .line 122
    :cond_3b
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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$47;->call()Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    move-result-object v0

    return-object v0
.end method
