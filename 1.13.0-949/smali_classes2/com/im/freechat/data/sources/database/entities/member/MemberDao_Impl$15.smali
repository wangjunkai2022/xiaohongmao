.class Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;
.super Ljava/lang/Object;
.source "MemberDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->listenAllContactsForChat(I)Lkotlinx/coroutines/flow/i;
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
        "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "user_id"

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v4, "db"

    const-string v5, "com.im.freechat.data.sources.database.entities.member.MemberDao"

    invoke-interface {v2, v4, v5}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 3
    :goto_0
    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v4}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v4, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v4}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v4

    iget-object v5, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v7, "chat_id"

    .line 4
    invoke-static {v4, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "role"

    .line 5
    invoke-static {v4, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "status"

    .line 6
    invoke-static {v4, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 7
    invoke-static {v4, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

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

    const-string v3, "last_online"

    .line 14
    invoke-static {v4, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v6, "bio"

    .line 15
    invoke-static {v4, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v2

    .line 16
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v17, v6

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 18
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v18, v7

    .line 19
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v19, v8

    .line 20
    iget-object v8, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v8}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/im/freechat/data/sources/database/Converters;->roleFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v7

    .line 21
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v20, v9

    .line 22
    iget-object v9, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v9}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/im/freechat/data/sources/database/Converters;->statusFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v8

    .line 23
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move/from16 v9, v17

    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v21, v0

    move/from16 v17, v3

    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_2
    move/from16 v9, v17

    .line 24
    :goto_2
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 25
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 26
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_3

    const/16 v23, 0x0

    goto :goto_3

    .line 27
    :cond_3
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v23, v17

    .line 28
    :goto_3
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v24, 0x0

    goto :goto_4

    .line 29
    :cond_4
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v24, v17

    .line 30
    :goto_4
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 31
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v26, 0x0

    goto :goto_5

    .line 32
    :cond_5
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v26, v17

    .line 33
    :goto_5
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v21, 0x1

    if-eqz v17, :cond_6

    const/16 v27, 0x1

    goto :goto_6

    :cond_6
    const/16 v27, 0x0

    .line 34
    :goto_6
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_7

    const/16 v28, 0x1

    goto :goto_7

    :cond_7
    const/16 v28, 0x0

    .line 35
    :goto_7
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v29, 0x0

    goto :goto_8

    .line 36
    :cond_8
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v29, v17

    .line 37
    :goto_8
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v30, 0x0

    goto :goto_9

    .line 38
    :cond_9
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v30, v17

    .line 39
    :goto_9
    new-instance v17, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;

    move-object/from16 v21, v17

    invoke-direct/range {v21 .. v30}, Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;)V

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v17, v3

    .line 40
    :goto_a
    new-instance v3, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;

    invoke-direct {v3, v6, v7, v8, v0}, Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;-><init>(ILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;Lcom/im/freechat/data/sources/database/entities/contact/UserEntity;)V

    .line 41
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v0, v21

    move/from16 v17, v9

    move/from16 v9, v20

    goto/16 :goto_1

    .line 42
    :cond_a
    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v16, :cond_b

    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v3, v16

    :try_start_3
    invoke-interface {v3, v0}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_b
    move-object/from16 v3, v16

    .line 43
    :goto_b
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v0, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v3, :cond_c

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    :cond_c
    return-object v2

    :catchall_1
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v2

    :goto_c
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 44
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catch_0
    move-exception v0

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_e

    :catch_1
    move-exception v0

    move-object v3, v2

    :goto_d
    if-eqz v3, :cond_d

    :try_start_6
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v3, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v3, v0}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    :goto_e
    iget-object v2, v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v3, :cond_e

    invoke-interface {v3}, Lio/sentry/v0;->h()V

    .line 45
    :cond_e
    throw v0
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
