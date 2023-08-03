.class Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;
.super Ljava/lang/Object;
.source "MessageDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->getMessageById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;",
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;
    .locals 37
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
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x0

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

    .line 18
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 19
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 20
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 21
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v23, 0x0

    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    .line 23
    :goto_1
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 24
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 25
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 26
    :cond_2
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    :goto_2
    iget-object v6, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v6}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/im/freechat/data/sources/database/Converters;->messageStatusFromInt(Ljava/lang/Integer;)Lcom/im/freechat/shared/entities/message/Message$MessageStatus;

    move-result-object v27

    .line 28
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v28, 0x0

    goto :goto_3

    .line 29
    :cond_3
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v28, v0

    .line 30
    :goto_3
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v29, 0x0

    goto :goto_4

    .line 31
    :cond_4
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v0

    .line 32
    :goto_4
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v30, 0x0

    goto :goto_5

    .line 33
    :cond_5
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v30, v0

    .line 34
    :goto_5
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v31, 0x0

    goto :goto_6

    .line 35
    :cond_6
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v0

    .line 36
    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v32, 0x0

    goto :goto_7

    .line 37
    :cond_7
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v32, v0

    .line 38
    :goto_7
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/16 v33, 0x1

    goto :goto_8

    :cond_8
    const/16 v33, 0x0

    .line 39
    :goto_8
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    .line 40
    :cond_9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_9
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/im/freechat/data/sources/database/Converters;->stringToStringMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v34

    move/from16 v0, v17

    .line 42
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    .line 43
    :cond_a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_a
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->this$0:Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;

    invoke-static {v5}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/im/freechat/data/sources/database/Converters;->messageStylesFromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v35

    .line 45
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v36, 0x1

    goto :goto_b

    :cond_b
    const/16 v36, 0x0

    .line 46
    :goto_b
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v36}, Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;-><init>(JILjava/lang/String;IJLcom/im/freechat/shared/entities/message/Message$MessageStatus;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZLjava/util/Map;Ljava/util/List;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    .line 47
    :goto_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_d

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    move-object/from16 v3, v16

    invoke-interface {v3, v0}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 48
    :cond_d
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_e

    :catch_0
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    :goto_d
    if-eqz v3, :cond_e

    .line 49
    :try_start_2
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v3, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v3, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_e
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v3, :cond_f

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    .line 50
    :cond_f
    iget-object v2, v1, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 51
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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/message/MessageDao_Impl$29;->call()Lcom/im/freechat/data/sources/database/entities/message/MessageEntity;

    move-result-object v0

    return-object v0
.end method
