.class public final Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;
.super Lcom/im/freechat/data/sources/database/entities/member/MemberDao;
.source "MemberDao_Impl.java"


# instance fields
.field private final __converters:Lcom/im/freechat/data/sources/database/Converters;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __insertionAdapterOfMemberEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteMemberFromChat:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateRole:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityDeletionOrUpdateAdapter<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
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
    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao;-><init>()V

    .line 2
    new-instance v0, Lcom/im/freechat/data/sources/database/Converters;

    invoke-direct {v0}, Lcom/im/freechat/data/sources/database/Converters;-><init>()V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    .line 3
    iput-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 4
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$1;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__insertionAdapterOfMemberEntity:Landroidx/room/EntityInsertionAdapter;

    .line 5
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$2;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__deletionAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 6
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$3;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__updateAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 7
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$4;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    .line 8
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$5;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfUpdateRole:Landroidx/room/SharedSQLiteStatement;

    .line 9
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$6;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfDeleteMemberFromChat:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static synthetic a(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->lambda$insertOrUpdate$0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Lcom/im/freechat/data/sources/database/Converters;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__converters:Lcom/im/freechat/data/sources/database/Converters;

    return-object p0
.end method

.method static synthetic access$100(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/EntityInsertionAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__insertionAdapterOfMemberEntity:Landroidx/room/EntityInsertionAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/EntityDeletionOrUpdateAdapter;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__updateAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfUpdateStatus:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$500(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;)Landroidx/room/SharedSQLiteStatement;
    .locals 0

    iget-object p0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfUpdateRole:Landroidx/room/SharedSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$601(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/BaseDao;->insertOrUpdate(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->access$601(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V
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

    const-string v2, "com.im.freechat.data.sources.database.entities.member.MemberDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__deletionAdapterOfMemberEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v1, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_1

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-virtual {p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->delete(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V

    return-void
.end method

.method public deleteMemberFromChat(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "chatId",
            "memberId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/c3;->D()Lio/sentry/v0;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "db"

    const-string v2, "com.im.freechat.data.sources.database.entities.member.MemberDao"

    invoke-interface {v0, v1, v2}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfDeleteMemberFromChat:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v1, v2, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    :goto_1
    const/4 p1, 0x2

    int-to-long v2, p2

    .line 6
    invoke-interface {v1, p1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 8
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    if-eqz v0, :cond_2

    sget-object p1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-interface {v0, p1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfDeleteMemberFromChat:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 10
    :try_start_1
    sget-object p2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v0, p2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    invoke-interface {v0, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    :cond_4
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lio/sentry/v0;->h()V

    .line 11
    :cond_5
    iget-object p2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__preparedStmtOfDeleteMemberFromChat:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v1}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 12
    throw p1
.end method

.method public getAllContactsForChat(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = ?"

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
    iget-object v2, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$16;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$16;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v2, v1, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllMembers(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
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
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM member WHERE chat_id = ?"

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
    iget-object v1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v2, 0x0

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$13;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {v1, v2, p1, v3, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$7;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$7;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->insert(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
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
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$8;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$8;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;)V

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
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/a;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/a;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroidx/room/RoomDatabaseKt;->withTransaction(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public listenAllContactsForChat(I)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "chatId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    int-to-long v2, p1

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 3
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const-string v2, "member"

    const-string v3, "user"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$15;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v1, v2, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public listenAllMembers(Ljava/lang/String;)Lkotlinx/coroutines/flow/i;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "chatId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;>;"
        }
    .end annotation

    const-string v0, "SELECT * FROM member WHERE chat_id = ?"

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
    iget-object p1, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const-string v2, "member"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$14;

    invoke-direct {v3, p0, v0}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$14;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Landroidx/room/RoomSQLiteQuery;)V

    invoke-static {p1, v1, v2, v3}, Landroidx/room/CoroutinesRoom;->createFlow(Landroidx/room/RoomDatabase;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lkotlinx/coroutines/flow/i;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$9;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$9;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;)V

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
    check-cast p1, Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->update(Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$10;

    invoke-direct {v1, p0, p1}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$10;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateRole(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "chatId",
            "userId",
            "role",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$12;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$12;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;ILjava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateStatus(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "chatId",
            "userId",
            "status",
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;->__db:Landroidx/room/RoomDatabase;

    new-instance v1, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$11;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl$11;-><init>(Lcom/im/freechat/data/sources/database/entities/member/MemberDao_Impl;ILjava/lang/String;I)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p4}, Landroidx/room/CoroutinesRoom;->execute(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
