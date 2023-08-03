.class Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;
.super Ljava/lang/Object;
.source "FriendStatusDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
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
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
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

    const-string v4, "com.im.freechat.data.sources.database.entities.friendstatus.FriendStatusDao"

    invoke-interface {v0, v3, v4}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 3
    :goto_0
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "target_user_id"

    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "invited_time"

    .line 4
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "reason"

    .line 5
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "status"

    .line 6
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "user_id"

    .line 7
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "nickname"

    .line 8
    invoke-static {v4, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "avatar_url"

    .line 9
    invoke-static {v4, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "management_role"

    .line 10
    invoke-static {v4, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "user_name_mask"

    .line 11
    invoke-static {v4, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "is_service"

    .line 12
    invoke-static {v4, v14}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_current"

    .line 13
    invoke-static {v4, v15}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "last_online"

    .line 14
    invoke-static {v4, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v5, "bio"

    .line 15
    invoke-static {v4, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 16
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 18
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_4

    .line 19
    :cond_2
    :goto_2
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 20
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 21
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v22, 0x0

    goto :goto_3

    .line 22
    :cond_3
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v5

    .line 23
    :goto_3
    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->this$0:Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;

    move/from16 v24, v0

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;->access$500(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl;Ljava/lang/String;)Lcom/im/freechat/shared/entities/chat/Status;

    move-result-object v23

    .line 24
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v23}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;-><init>(IJLjava/lang/String;Lcom/im/freechat/shared/entities/chat/Status;)V

    .line 25
    :goto_4
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move/from16 v5, v17

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_4

    goto :goto_5

    :cond_4
    move/from16 v17, v2

    const/4 v1, 0x0

    goto/16 :goto_d

    :cond_5
    move/from16 v5, v17

    .line 26
    :goto_5
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 27
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    const/16 v27, 0x0

    goto :goto_6

    .line 28
    :cond_6
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v27, v17

    .line 29
    :goto_6
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v28, 0x0

    goto :goto_7

    .line 30
    :cond_7
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v28, v17

    .line 31
    :goto_7
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 32
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v30, 0x0

    goto :goto_8

    .line 33
    :cond_8
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v30, v17

    .line 34
    :goto_8
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v18, 0x1

    if-eqz v17, :cond_9

    const/16 v31, 0x1

    goto :goto_9

    :cond_9
    const/16 v31, 0x0

    .line 35
    :goto_9
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_a

    const/16 v32, 0x1

    goto :goto_a

    :cond_a
    const/16 v32, 0x0

    .line 36
    :goto_a
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v33, 0x0

    goto :goto_b

    .line 37
    :cond_b
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v33, v17

    .line 38
    :goto_b
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v34, 0x0

    goto :goto_c

    .line 39
    :cond_c
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v34, v17

    .line 40
    :goto_c
    new-instance v17, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-object/from16 v25, v17

    invoke-direct/range {v25 .. v34}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V

    move-object/from16 v1, v17

    move/from16 v17, v2

    .line 41
    :goto_d
    new-instance v2, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;

    invoke-direct {v2, v1, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;-><init>(Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V

    .line 42
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move/from16 v2, v17

    move/from16 v0, v24

    move/from16 v17, v5

    goto/16 :goto_1

    .line 43
    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v16, :cond_e

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    move-object/from16 v2, v16

    invoke-interface {v2, v0}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    :cond_e
    return-object v3

    :catchall_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_f

    :catch_0
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_f

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_e
    if-eqz v2, :cond_f

    :try_start_2
    sget-object v1, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v2, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v2, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_f
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    :goto_f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_10

    invoke-interface {v2}, Lio/sentry/v0;->h()V

    .line 44
    :cond_10
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao_Impl$10;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
