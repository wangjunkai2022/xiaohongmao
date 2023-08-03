.class Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;
.super Ljava/lang/Object;
.source "ChatDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->listenCommonGroupsForUserId(I)Lkotlinx/coroutines/flow/i;
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
        "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
        ">;>;"
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;",
            ">;"
        }
    .end annotation

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
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
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
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
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
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$1900(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 47
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v5}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 48
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_37

    .line 50
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move/from16 v14, v37

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_6

    move/from16 v15, v35

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_8

    move-object/from16 v35, v13

    move/from16 v13, v36

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

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

    goto :goto_7

    :cond_4
    move/from16 v18, v6

    move/from16 v54, v7

    move/from16 v6, v17

    const/4 v7, 0x0

    :goto_4
    move/from16 v17, v2

    move/from16 v2, v19

    goto/16 :goto_14

    :cond_5
    move/from16 v17, v3

    goto :goto_6

    :cond_6
    move/from16 v15, v35

    goto :goto_5

    :cond_7
    move/from16 v15, v35

    move/from16 v14, v37

    :cond_8
    :goto_5
    move-object/from16 v35, v13

    move/from16 v13, v36

    :cond_9
    move-object/from16 v36, v2

    move/from16 v2, v34

    :cond_a
    move-object/from16 v34, v5

    move/from16 v5, v19

    :cond_b
    move/from16 v19, v3

    :goto_6
    move/from16 v3, v18

    .line 51
    :goto_7
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    .line 52
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v40, 0x0

    goto :goto_8

    .line 53
    :cond_c
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v40, v18

    .line 54
    :goto_8
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_d

    move/from16 v18, v6

    const/16 v41, 0x0

    goto :goto_9

    .line 55
    :cond_d
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v41, v18

    move/from16 v18, v6

    .line 56
    :goto_9
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v54, v7

    .line 57
    iget-object v7, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v7}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/im/freechat/data/sources/database/Converters;->typeFromInt(I)Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v42

    .line 58
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v43, 0x0

    goto :goto_a

    .line 59
    :cond_e
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v43, v6

    .line 60
    :goto_a
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_f

    const/16 v44, 0x0

    goto :goto_b

    .line 61
    :cond_f
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v44, v6

    .line 62
    :goto_b
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v45, 0x0

    goto :goto_c

    .line 63
    :cond_10
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v45, v6

    .line 64
    :goto_c
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 65
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v47, 0x0

    goto :goto_d

    .line 66
    :cond_11
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v47, v6

    .line 67
    :goto_d
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/16 v48, 0x0

    goto :goto_e

    .line 68
    :cond_12
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v48, v6

    .line 69
    :goto_e
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v49, 0x0

    goto :goto_f

    .line 70
    :cond_13
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v49, v6

    .line 71
    :goto_f
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v50, 0x1

    goto :goto_10

    :cond_14
    const/16 v50, 0x0

    .line 72
    :goto_10
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_15

    move/from16 v6, v17

    const/16 v51, 0x1

    goto :goto_11

    :cond_15
    move/from16 v6, v17

    const/16 v51, 0x0

    .line 73
    :goto_11
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_16

    const/16 v52, 0x0

    goto :goto_12

    .line 74
    :cond_16
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v52, v7

    .line 75
    :goto_12
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_17

    const/16 v53, 0x0

    goto :goto_13

    .line 76
    :cond_17
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v53, v7

    .line 77
    :goto_13
    new-instance v7, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-object/from16 v38, v7

    invoke-direct/range {v38 .. v53}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 78
    :goto_14
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_26

    move/from16 v19, v3

    move/from16 v3, v20

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_25

    move/from16 v20, v5

    move/from16 v5, v21

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_24

    move/from16 v21, v6

    move/from16 v6, v22

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_23

    move/from16 v22, v8

    move/from16 v8, v23

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_22

    move/from16 v23, v9

    move/from16 v9, v24

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_21

    move/from16 v24, v10

    move/from16 v10, v25

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_20

    move/from16 v25, v11

    move/from16 v11, v26

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1f

    move/from16 v26, v12

    move/from16 v12, v27

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1e

    move/from16 v27, v13

    move/from16 v13, v28

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1d

    move/from16 v28, v14

    move/from16 v14, v29

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1c

    move/from16 v29, v15

    move/from16 v15, v30

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_1b

    move-object/from16 v30, v7

    move/from16 v7, v31

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_19

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1a

    move/from16 v1, v33

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-nez v32, :cond_18

    goto/16 :goto_21

    :cond_18
    move/from16 v37, v1

    move/from16 v39, v2

    move/from16 v33, v3

    move/from16 v32, v5

    move/from16 v38, v6

    const/4 v1, 0x0

    move-object/from16 v5, p0

    move v6, v0

    :goto_15
    move/from16 v0, v31

    goto/16 :goto_31

    :cond_19
    move/from16 v31, v0

    move/from16 v0, v32

    :cond_1a
    move/from16 v1, v33

    goto/16 :goto_21

    :cond_1b
    move-object/from16 v30, v7

    move/from16 v7, v31

    move/from16 v1, v33

    goto/16 :goto_20

    :cond_1c
    move/from16 v29, v15

    move/from16 v15, v30

    move/from16 v1, v33

    goto/16 :goto_1f

    :cond_1d
    move/from16 v28, v14

    move/from16 v14, v29

    move/from16 v1, v33

    goto/16 :goto_1e

    :cond_1e
    move/from16 v27, v13

    move/from16 v13, v28

    move/from16 v1, v33

    goto/16 :goto_1d

    :cond_1f
    move/from16 v26, v12

    move/from16 v12, v27

    move/from16 v1, v33

    goto :goto_1c

    :cond_20
    move/from16 v25, v11

    move/from16 v11, v26

    move/from16 v1, v33

    goto :goto_1b

    :cond_21
    move/from16 v24, v10

    move/from16 v10, v25

    move/from16 v1, v33

    goto :goto_1a

    :cond_22
    move/from16 v23, v9

    move/from16 v9, v24

    move/from16 v1, v33

    goto :goto_19

    :cond_23
    move/from16 v22, v8

    move/from16 v8, v23

    move/from16 v1, v33

    goto :goto_18

    :cond_24
    move/from16 v21, v6

    move/from16 v6, v22

    move/from16 v1, v33

    goto :goto_17

    :cond_25
    move/from16 v20, v5

    move/from16 v5, v21

    move/from16 v1, v33

    goto :goto_16

    :cond_26
    move/from16 v19, v3

    move/from16 v3, v20

    move/from16 v1, v33

    move/from16 v20, v5

    move/from16 v5, v21

    :goto_16
    move/from16 v21, v6

    move/from16 v6, v22

    :goto_17
    move/from16 v22, v8

    move/from16 v8, v23

    :goto_18
    move/from16 v23, v9

    move/from16 v9, v24

    :goto_19
    move/from16 v24, v10

    move/from16 v10, v25

    :goto_1a
    move/from16 v25, v11

    move/from16 v11, v26

    :goto_1b
    move/from16 v26, v12

    move/from16 v12, v27

    :goto_1c
    move/from16 v27, v13

    move/from16 v13, v28

    :goto_1d
    move/from16 v28, v14

    move/from16 v14, v29

    :goto_1e
    move/from16 v29, v15

    move/from16 v15, v30

    :goto_1f
    move-object/from16 v30, v7

    move/from16 v7, v31

    :goto_20
    move/from16 v31, v0

    move/from16 v0, v32

    .line 79
    :goto_21
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_28

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-nez v32, :cond_27

    goto :goto_22

    :cond_27
    move/from16 v33, v3

    move/from16 v32, v5

    move/from16 v38, v6

    const/4 v3, 0x0

    move-object/from16 v5, p0

    goto/16 :goto_2f

    .line 80
    :cond_28
    :goto_22
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    .line 81
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 82
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_29

    const/16 v59, 0x0

    goto :goto_23

    .line 83
    :cond_29
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v59, v32

    .line 84
    :goto_23
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 85
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v61

    .line 86
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_2a

    move/from16 v33, v3

    move/from16 v32, v5

    move/from16 v38, v6

    const/4 v3, 0x0

    :goto_24
    move-object/from16 v5, p0

    goto :goto_25

    .line 87
    :cond_2a
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move/from16 v33, v3

    move/from16 v38, v6

    move-object/from16 v3, v32

    move/from16 v32, v5

    goto :goto_24

    .line 88
    :goto_25
    iget-object v6, v5, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v63

    .line 89
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2b

    const/16 v64, 0x0

    goto :goto_26

    .line 90
    :cond_2b
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v64, v3

    .line 91
    :goto_26
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v65, 0x0

    goto :goto_27

    .line 92
    :cond_2c
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v65, v3

    .line 93
    :goto_27
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/16 v66, 0x0

    goto :goto_28

    .line 94
    :cond_2d
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v66, v3

    .line 95
    :goto_28
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/16 v67, 0x0

    goto :goto_29

    .line 96
    :cond_2e
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v67, v3

    .line 97
    :goto_29
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    const/16 v68, 0x0

    goto :goto_2a

    .line 98
    :cond_2f
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v68, v3

    .line 99
    :goto_2a
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_30

    const/16 v69, 0x1

    goto :goto_2b

    :cond_30
    const/16 v69, 0x0

    .line 100
    :goto_2b
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 v3, 0x0

    goto :goto_2c

    .line 101
    :cond_31
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    :goto_2c
    iget-object v6, v5, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v70

    .line 103
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x0

    goto :goto_2d

    .line 104
    :cond_32
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    :goto_2d
    iget-object v6, v5, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v71

    .line 106
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_33

    const/16 v72, 0x1

    goto :goto_2e

    :cond_33
    const/16 v72, 0x0

    .line 107
    :goto_2e
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v55, v3

    invoke-direct/range {v55 .. v72}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    .line 108
    :goto_2f
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_34

    move v6, v0

    move/from16 v37, v1

    .line 109
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move/from16 v39, v2

    move-object/from16 v2, v34

    .line 110
    invoke-virtual {v2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_30

    :cond_34
    move v6, v0

    move/from16 v37, v1

    move/from16 v39, v2

    move-object/from16 v2, v34

    const/4 v0, 0x0

    :goto_30
    if-nez v0, :cond_35

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :cond_35
    new-instance v1, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v2, v0}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V

    goto/16 :goto_15

    .line 113
    :goto_31
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v31, v0

    move-object/from16 v0, v36

    .line 114
    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_36

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 116
    :cond_36
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    move-object/from16 v36, v0

    move-object/from16 v0, v30

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5, v2}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V

    move-object/from16 v0, v35

    .line 117
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move/from16 v30, v15

    move/from16 v35, v29

    move-object/from16 v5, v34

    move-object/from16 v2, v36

    move/from16 v3, v39

    move/from16 v29, v14

    move/from16 v34, v17

    move/from16 v17, v21

    move/from16 v36, v27

    move/from16 v21, v32

    move/from16 v32, v6

    move/from16 v27, v12

    move/from16 v6, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v12, v26

    move/from16 v20, v33

    move/from16 v33, v37

    move/from16 v26, v11

    move/from16 v11, v25

    move/from16 v37, v28

    move/from16 v25, v10

    move/from16 v28, v13

    move/from16 v10, v24

    move-object v13, v0

    move/from16 v24, v9

    move/from16 v9, v23

    move/from16 v0, v31

    move/from16 v31, v7

    move/from16 v23, v8

    move/from16 v8, v22

    move/from16 v22, v38

    move/from16 v7, v54

    goto/16 :goto_3

    :cond_37
    move-object v0, v13

    .line 118
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_38

    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    move-object/from16 v2, v16

    invoke-interface {v2, v1}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    :cond_38
    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_33

    :catch_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_32

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_33

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_32
    if-eqz v2, :cond_39

    :try_start_2
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v2, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v2, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_39
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    :goto_33
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_3a

    invoke-interface {v2}, Lio/sentry/v0;->h()V

    .line 119
    :cond_3a
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$45;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
