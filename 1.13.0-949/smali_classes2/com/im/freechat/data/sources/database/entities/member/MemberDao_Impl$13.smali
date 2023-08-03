.class Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;
.super Ljava/lang/Object;
.source "MemberDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->getAllMembers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
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

    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    iput-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

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
    invoke-virtual {p0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "db"

    const-string v3, "com.im.freechat.data.sources.database.entities.member.MemberDao"

    invoke-interface {v0, v2, v3}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v1}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "user_id"

    invoke-static {v1, v2}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "chat_id"

    .line 4
    invoke-static {v1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "role"

    .line 5
    invoke-static {v1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "status"

    .line 6
    invoke-static {v1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 9
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 11
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 12
    iget-object v10, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v10}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/im/freechat/data/sources/database/Converters;->roleFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Role;

    move-result-object v9

    .line 13
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 14
    iget-object v11, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->this$0:Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;

    invoke-static {v11}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/im/freechat/data/sources/database/Converters;->statusFromInt(I)Lcom/im/freechat/shared/entities/chat/ChatMember$Status;

    move-result-object v10

    .line 15
    new-instance v11, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-direct {v11, v7, v8, v9, v10}, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;-><init>(IILcom/im/freechat/shared/entities/chat/ChatMember$Role;Lcom/im/freechat/shared/entities/chat/ChatMember$Status;)V

    .line 16
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_2

    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, v1}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 19
    :try_start_1
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, v3}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, v2}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_3
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 21
    throw v2
.end method
