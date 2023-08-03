.class Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;
.super Ljava/lang/Object;
.source "ChatDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->subscribeChats()Lkotlinx/coroutines/flow/i;
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 84
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

    const-string v0, "is_service"

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "db"

    const-string v5, "com.im.freechat.data.sources.database.entities.chat.ChatDao"

    invoke-interface {v2, v4, v5}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 3
    :goto_0
    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v4}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    const-string v5, "chat_id"

    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v7, "title"

    .line 4
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "avatar"

    .line 5
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "type"

    .line 6
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "opponent_last_read_message_id"

    .line 7
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "last_message_id"

    .line 8
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "last_sync_message_id"

    .line 9
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "unread_count"

    .line 10
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "pinned_message_id"

    .line 11
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "pinned_user_id"

    .line 12
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v6, "pinned_time"

    .line 13
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v3, "is_public"

    .line 14
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v16, v2

    :try_start_2
    const-string v2, "history_new_member"

    .line 15
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "invitation_link"

    .line 16
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "draft_message"

    .line 17
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "message_id"

    .line 18
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v3

    const-string v3, "sender_id"

    .line 19
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "content"

    .line 20
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "parent_chat_id"

    .line 21
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "send_time"

    .line 22
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "status"

    .line 23
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "edit_time"

    .line 24
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "forward_sender_id"

    .line 25
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "forward_message_id"

    .line 26
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "forward_chat_id"

    .line 27
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "reply_to_message_id"

    .line 28
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "mention_all"

    .line 29
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "mentions"

    .line 30
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "styles"

    .line 31
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    .line 32
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v3

    const-string v3, "user_id"

    .line 33
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v35, v3

    const-string v3, "nickname"

    .line 34
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v36, v3

    const-string v3, "avatar_url"

    .line 35
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v37, v3

    const-string v3, "management_role"

    .line 36
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v38, v3

    const-string v3, "user_name_mask"

    .line 37
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 38
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    move/from16 v39, v3

    const-string v3, "is_current"

    .line 39
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v40, v3

    const-string v3, "last_time"

    .line 40
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v41, v0

    .line 41
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    move/from16 v42, v6

    .line 42
    new-instance v6, Landroidx/collection/LongSparseArray;

    invoke-direct {v6}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 43
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v43

    if-eqz v43, :cond_3

    move/from16 v43, v14

    move/from16 v44, v15

    .line 44
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 45
    invoke-virtual {v0, v14, v15}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Ljava/util/ArrayList;

    if-nez v45, :cond_1

    move/from16 v45, v13

    .line 46
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v0, v14, v15, v13}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move/from16 v45, v13

    .line 48
    :goto_2
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 49
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 50
    invoke-virtual {v6, v13, v14}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_2

    .line 51
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v6, v13, v14, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    move/from16 v14, v43

    move/from16 v15, v44

    move/from16 v13, v45

    goto :goto_1

    :cond_3
    move/from16 v45, v13

    move/from16 v43, v14

    move/from16 v44, v15

    const/4 v13, -0x1

    .line 53
    invoke-interface {v4, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 54
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v0}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$1900(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 55
    iget-object v13, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v13, v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$2000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;Landroidx/collection/LongSparseArray;)V

    .line 56
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 58
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    goto :goto_4

    .line 59
    :cond_4
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 60
    :goto_4
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    const/16 v46, 0x0

    if-eqz v15, :cond_7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v15, v45

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_8

    move/from16 v45, v3

    move/from16 v3, v43

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_9

    move-object/from16 v43, v13

    move/from16 v13, v44

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v44

    if-eqz v44, :cond_a

    move-object/from16 v44, v14

    move/from16 v14, v42

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_b

    move-object/from16 v42, v0

    move/from16 v0, v20

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v17, v2

    move/from16 v2, v18

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_6

    move/from16 v18, v2

    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-nez v19, :cond_5

    goto :goto_7

    :cond_5
    move/from16 v19, v7

    move/from16 v63, v8

    move/from16 v7, v18

    const/4 v8, 0x0

    :goto_5
    move/from16 v82, v17

    move/from16 v17, v0

    move/from16 v0, v82

    goto/16 :goto_14

    :cond_6
    move/from16 v18, v2

    goto :goto_6

    :cond_7
    move/from16 v15, v45

    :cond_8
    move/from16 v45, v3

    move/from16 v3, v43

    :cond_9
    move-object/from16 v43, v13

    move/from16 v13, v44

    :cond_a
    move-object/from16 v44, v14

    move/from16 v14, v42

    :cond_b
    move-object/from16 v42, v0

    move/from16 v0, v20

    :cond_c
    move-object/from16 v20, v6

    move/from16 v6, v17

    :cond_d
    move/from16 v17, v2

    :goto_6
    move/from16 v2, v19

    .line 61
    :goto_7
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 62
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v49, 0x0

    goto :goto_8

    .line 63
    :cond_e
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v49, v19

    .line 64
    :goto_8
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move/from16 v19, v7

    const/16 v50, 0x0

    goto :goto_9

    .line 65
    :cond_f
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v50, v19

    move/from16 v19, v7

    .line 66
    :goto_9
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v63, v8

    .line 67
    iget-object v8, v1, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v8}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/im/freechat/data/sources/database/Converters;->typeFromInt(I)Lcom/im/freechat/shared/entities/chat/Chat$Type;

    move-result-object v51

    .line 68
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v52, 0x0

    goto :goto_a

    .line 69
    :cond_10
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v52, v7

    .line 70
    :goto_a
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_11

    const/16 v53, 0x0

    goto :goto_b

    .line 71
    :cond_11
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v53, v7

    .line 72
    :goto_b
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_12

    const/16 v54, 0x0

    goto :goto_c

    .line 73
    :cond_12
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v54, v7

    .line 74
    :goto_c
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 75
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v56, 0x0

    goto :goto_d

    .line 76
    :cond_13
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v56, v7

    .line 77
    :goto_d
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v57, 0x0

    goto :goto_e

    .line 78
    :cond_14
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v57, v7

    .line 79
    :goto_e
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v58, 0x0

    goto :goto_f

    .line 80
    :cond_15
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v58, v7

    .line 81
    :goto_f
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_16

    const/16 v59, 0x1

    goto :goto_10

    :cond_16
    const/16 v59, 0x0

    .line 82
    :goto_10
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_17

    move/from16 v7, v18

    const/16 v60, 0x1

    goto :goto_11

    :cond_17
    move/from16 v7, v18

    const/16 v60, 0x0

    .line 83
    :goto_11
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_18

    const/16 v61, 0x0

    goto :goto_12

    .line 84
    :cond_18
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v61, v8

    .line 85
    :goto_12
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_19

    const/16 v62, 0x0

    goto :goto_13

    .line 86
    :cond_19
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v62, v8

    .line 87
    :goto_13
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;

    move-object/from16 v47, v8

    invoke-direct/range {v47 .. v62}, Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/shared/entities/chat/Chat$Type;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 88
    :goto_14
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v18, :cond_2f

    move/from16 v18, v2

    move/from16 v2, v21

    :try_start_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_2e

    move/from16 v21, v3

    move/from16 v3, v22

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_2d

    move/from16 v22, v6

    move/from16 v6, v23

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_2c

    move/from16 v23, v7

    move/from16 v7, v24

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_2b

    move/from16 v24, v9

    move/from16 v9, v25

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_2a

    move/from16 v25, v10

    move/from16 v10, v26

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_29

    move/from16 v26, v11

    move/from16 v11, v27

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_28

    move/from16 v27, v12

    move/from16 v12, v28

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_27

    move/from16 v28, v13

    move/from16 v13, v29

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_26

    move/from16 v29, v14

    move/from16 v14, v30

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_25

    move/from16 v30, v15

    move/from16 v15, v31

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_24

    move-object/from16 v31, v8

    move/from16 v8, v32

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_22

    move/from16 v32, v5

    move/from16 v5, v33

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_23

    move/from16 v1, v34

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_21

    move/from16 v34, v1

    move/from16 v1, v41

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_20

    move/from16 v41, v1

    move/from16 v1, v35

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1f

    move/from16 v35, v1

    move/from16 v1, v36

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1e

    move/from16 v36, v1

    move/from16 v1, v37

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1d

    move/from16 v37, v1

    move/from16 v1, v38

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1c

    move/from16 v38, v1

    move/from16 v1, v39

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_1b

    move/from16 v39, v1

    move/from16 v1, v40

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-nez v33, :cond_1a

    goto/16 :goto_21

    :cond_1a
    move/from16 v49, v0

    move/from16 v33, v3

    move/from16 v47, v6

    move/from16 v46, v35

    move/from16 v40, v38

    move/from16 v48, v39

    const/4 v0, 0x0

    move-object/from16 v3, p0

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v35, v34

    move/from16 v34, v41

    const/4 v8, 0x0

    move v9, v1

    move/from16 v41, v2

    move/from16 v1, v32

    move/from16 v2, v36

    move/from16 v36, v5

    move/from16 v5, v37

    move/from16 v37, v7

    goto/16 :goto_39

    :cond_1b
    move/from16 v39, v1

    goto :goto_15

    :cond_1c
    move/from16 v38, v1

    goto :goto_15

    :cond_1d
    move/from16 v37, v1

    goto :goto_15

    :cond_1e
    move/from16 v36, v1

    goto :goto_15

    :cond_1f
    move/from16 v35, v1

    goto :goto_15

    :cond_20
    move/from16 v41, v1

    goto :goto_15

    :cond_21
    move/from16 v34, v1

    goto :goto_15

    :cond_22
    move/from16 v32, v5

    move/from16 v5, v33

    :cond_23
    :goto_15
    move/from16 v1, v40

    goto/16 :goto_21

    :cond_24
    move-object/from16 v31, v8

    move/from16 v8, v32

    move/from16 v1, v40

    goto/16 :goto_20

    :cond_25
    move/from16 v30, v15

    move/from16 v15, v31

    move/from16 v1, v40

    goto/16 :goto_1f

    :cond_26
    move/from16 v29, v14

    move/from16 v14, v30

    move/from16 v1, v40

    goto/16 :goto_1e

    :cond_27
    move/from16 v28, v13

    move/from16 v13, v29

    move/from16 v1, v40

    goto/16 :goto_1d

    :cond_28
    move/from16 v27, v12

    move/from16 v12, v28

    move/from16 v1, v40

    goto :goto_1c

    :cond_29
    move/from16 v26, v11

    move/from16 v11, v27

    move/from16 v1, v40

    goto :goto_1b

    :cond_2a
    move/from16 v25, v10

    move/from16 v10, v26

    move/from16 v1, v40

    goto :goto_1a

    :cond_2b
    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v1, v40

    goto :goto_19

    :cond_2c
    move/from16 v23, v7

    move/from16 v7, v24

    move/from16 v1, v40

    goto :goto_18

    :cond_2d
    move/from16 v22, v6

    move/from16 v6, v23

    move/from16 v1, v40

    goto :goto_17

    :cond_2e
    move/from16 v21, v3

    move/from16 v3, v22

    move/from16 v1, v40

    goto :goto_16

    :cond_2f
    move/from16 v18, v2

    move/from16 v2, v21

    move/from16 v1, v40

    move/from16 v21, v3

    move/from16 v3, v22

    :goto_16
    move/from16 v22, v6

    move/from16 v6, v23

    :goto_17
    move/from16 v23, v7

    move/from16 v7, v24

    :goto_18
    move/from16 v24, v9

    move/from16 v9, v25

    :goto_19
    move/from16 v25, v10

    move/from16 v10, v26

    :goto_1a
    move/from16 v26, v11

    move/from16 v11, v27

    :goto_1b
    move/from16 v27, v12

    move/from16 v12, v28

    :goto_1c
    move/from16 v28, v13

    move/from16 v13, v29

    :goto_1d
    move/from16 v29, v14

    move/from16 v14, v30

    :goto_1e
    move/from16 v30, v15

    move/from16 v15, v31

    :goto_1f
    move-object/from16 v31, v8

    move/from16 v8, v32

    :goto_20
    move/from16 v32, v5

    move/from16 v5, v33

    .line 89
    :goto_21
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_32

    move/from16 v40, v1

    move/from16 v1, v34

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_31

    move/from16 v34, v1

    move/from16 v1, v41

    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-nez v33, :cond_30

    goto :goto_24

    :cond_30
    move/from16 v41, v2

    move/from16 v33, v3

    move/from16 v47, v6

    move/from16 v2, v34

    const/4 v6, 0x0

    move-object/from16 v3, p0

    :goto_22
    move/from16 v34, v1

    move/from16 v1, v35

    goto/16 :goto_31

    :cond_31
    move/from16 v34, v1

    goto :goto_23

    :cond_32
    move/from16 v40, v1

    :goto_23
    move/from16 v1, v41

    .line 90
    :goto_24
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    .line 91
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    .line 92
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_33

    const/16 v68, 0x0

    goto :goto_25

    .line 93
    :cond_33
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v68, v33

    .line 94
    :goto_25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v69

    .line 95
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v70

    .line 96
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_34

    move/from16 v41, v2

    move/from16 v33, v3

    move/from16 v47, v6

    const/4 v2, 0x0

    :goto_26
    move-object/from16 v3, p0

    goto :goto_27

    .line 97
    :cond_34
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v41, v2

    move/from16 v47, v6

    move-object/from16 v2, v33

    move/from16 v33, v3

    goto :goto_26

    .line 98
    :goto_27
    :try_start_4
    iget-object v6, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v72

    .line 99
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v73, 0x0

    goto :goto_28

    .line 100
    :cond_35
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v73, v2

    .line 101
    :goto_28
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v74, 0x0

    goto :goto_29

    .line 102
    :cond_36
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v74, v2

    .line 103
    :goto_29
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_37

    const/16 v75, 0x0

    goto :goto_2a

    .line 104
    :cond_37
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v75, v2

    .line 105
    :goto_2a
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_38

    const/16 v76, 0x0

    goto :goto_2b

    .line 106
    :cond_38
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v76, v2

    .line 107
    :goto_2b
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_39

    const/16 v77, 0x0

    goto :goto_2c

    .line 108
    :cond_39
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v77, v2

    .line 109
    :goto_2c
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3a

    const/16 v78, 0x1

    goto :goto_2d

    :cond_3a
    const/16 v78, 0x0

    .line 110
    :goto_2d
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    goto :goto_2e

    .line 111
    :cond_3b
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    :goto_2e
    iget-object v6, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v79

    .line 113
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    goto :goto_2f

    .line 114
    :cond_3c
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    :goto_2f
    iget-object v6, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v80

    move/from16 v2, v34

    .line 116
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3d

    const/16 v81, 0x1

    goto :goto_30

    :cond_3d
    const/16 v81, 0x0

    .line 117
    :goto_30
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 118
    new-instance v6, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v64, v6

    invoke-direct/range {v64 .. v81}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V

    goto/16 :goto_22

    .line 119
    :goto_31
    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_3f

    move/from16 v35, v2

    move/from16 v2, v36

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_40

    move/from16 v36, v5

    move/from16 v5, v37

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_41

    move/from16 v37, v7

    move/from16 v7, v38

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_42

    move/from16 v38, v8

    move/from16 v8, v39

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_43

    move/from16 v39, v9

    move/from16 v9, v40

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-nez v40, :cond_3e

    goto :goto_32

    :cond_3e
    move/from16 v46, v1

    const/4 v1, 0x0

    goto :goto_37

    :cond_3f
    move/from16 v35, v2

    move/from16 v2, v36

    :cond_40
    move/from16 v36, v5

    move/from16 v5, v37

    :cond_41
    move/from16 v37, v7

    move/from16 v7, v38

    :cond_42
    move/from16 v38, v8

    move/from16 v8, v39

    :cond_43
    move/from16 v39, v9

    move/from16 v9, v40

    .line 120
    :goto_32
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 121
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_44

    const/16 v50, 0x0

    goto :goto_33

    .line 122
    :cond_44
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v50, v40

    .line 123
    :goto_33
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_45

    const/16 v51, 0x0

    goto :goto_34

    .line 124
    :cond_45
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v51, v40

    .line 125
    :goto_34
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 126
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_46

    const/16 v53, 0x0

    goto :goto_35

    .line 127
    :cond_46
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v53, v40

    .line 128
    :goto_35
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_47

    const/16 v54, 0x1

    goto :goto_36

    :cond_47
    const/16 v54, 0x0

    .line 129
    :goto_36
    new-instance v40, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;

    move-object/from16 v48, v40

    invoke-direct/range {v48 .. v54}, Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    move/from16 v46, v1

    move-object/from16 v1, v40

    .line 130
    :goto_37
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-nez v40, :cond_48

    move/from16 v40, v7

    move/from16 v48, v8

    .line 131
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move/from16 v49, v0

    move-object/from16 v0, v20

    .line 132
    invoke-virtual {v0, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    goto :goto_38

    :cond_48
    move/from16 v49, v0

    move/from16 v40, v7

    move/from16 v48, v8

    move-object/from16 v0, v20

    const/4 v7, 0x0

    :goto_38
    if-nez v7, :cond_49

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    :cond_49
    new-instance v8, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;

    move-object/from16 v20, v0

    const/4 v0, 0x0

    invoke-direct {v8, v6, v1, v0, v7}, Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;-><init>(Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Lcom/im/freechat/data/sources/database/entities/contact/SenderEntity;Ljava/util/List;)V

    move/from16 v1, v32

    .line 135
    :goto_39
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v42

    .line 136
    invoke-virtual {v0, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_4a

    .line 137
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 138
    :cond_4a
    new-instance v7, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;

    move-object/from16 v42, v0

    move/from16 v32, v1

    move-object/from16 v0, v31

    move-object/from16 v1, v44

    invoke-direct {v7, v0, v8, v1, v6}, Lcom/im/freechat/data/sources/database/entities/chat/ChatWithContacts;-><init>(Lcom/im/freechat/data/sources/database/entities/chat/ChatEntity;Lcom/im/freechat/data/sources/database/entities/message/FullMessageEntity;Ljava/lang/Long;Ljava/util/List;)V

    move-object/from16 v0, v43

    .line 139
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v3

    move/from16 v31, v15

    move/from16 v7, v19

    move-object/from16 v6, v20

    move/from16 v43, v21

    move/from16 v44, v28

    move/from16 v21, v41

    move/from16 v3, v45

    move/from16 v8, v63

    move/from16 v28, v12

    move/from16 v20, v17

    move/from16 v19, v18

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v12, v27

    move/from16 v45, v30

    move/from16 v22, v33

    move/from16 v41, v34

    move/from16 v34, v35

    move/from16 v33, v36

    move/from16 v35, v46

    move/from16 v23, v47

    move/from16 v36, v2

    move/from16 v27, v11

    move/from16 v30, v14

    move/from16 v11, v26

    move/from16 v2, v49

    move/from16 v26, v10

    move/from16 v10, v25

    move/from16 v25, v39

    move/from16 v39, v48

    move/from16 v82, v13

    move-object v13, v0

    move-object/from16 v0, v42

    move/from16 v42, v29

    move/from16 v29, v82

    move/from16 v83, v37

    move/from16 v37, v5

    move/from16 v5, v32

    move/from16 v32, v38

    move/from16 v38, v40

    move/from16 v40, v9

    move/from16 v9, v24

    move/from16 v24, v83

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_3b

    :cond_4b
    move-object v3, v1

    move-object v0, v13

    .line 140
    iget-object v1, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v16, :cond_4c

    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v2, v16

    :try_start_5
    invoke-interface {v2, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3a

    :catchall_1
    move-exception v0

    goto :goto_3c

    :cond_4c
    move-object/from16 v2, v16

    .line 141
    :goto_3a
    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    iget-object v1, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v2, :cond_4d

    invoke-interface {v2}, Lio/sentry/v0;->h()V

    :cond_4d
    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_3b

    :catchall_3
    move-exception v0

    move-object v3, v1

    :goto_3b
    move-object/from16 v2, v16

    goto :goto_3c

    :catchall_4
    move-exception v0

    move-object v3, v1

    :goto_3c
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 142
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catch_0
    move-exception v0

    goto :goto_3d

    :catchall_5
    move-exception v0

    move-object v3, v1

    goto :goto_3e

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_3d
    if-eqz v2, :cond_4e

    :try_start_8
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v2, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v2, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4e
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    :goto_3e
    iget-object v1, v3, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->this$0:Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;

    invoke-static {v1}, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Lio/sentry/v0;->h()V

    .line 143
    :cond_4f
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/chat/ChatDao_Impl$40;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
