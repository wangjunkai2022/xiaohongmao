.class public abstract Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;
.super Lcom/im/freechat/data/sources/database/entities/BaseDao;
.source "FriendStatusDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/im/freechat/data/sources/database/entities/BaseDao<",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendStatusDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendStatusDao.kt\ncom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1851#2,2:49\n*S KotlinDebug\n*F\n+ 1 FriendStatusDao.kt\ncom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao\n*L\n37#1:49,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0010\u0008\'\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\"\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00030\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u001e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00062\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\'J\u001b\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\tH\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u00062\u0006\u0010\u000f\u001a\u00020\tH\'J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\tH\'J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0002H\'J!\u0010\u0015\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u0097@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0019\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J!\u0010\u0019\u001a\u00020\u000c2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0003H\u00a7@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;",
        "Lcom/im/freechat/data/sources/database/entities/BaseDao;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;",
        "",
        "Lcom/im/freechat/shared/entities/chat/Status;",
        "statuses",
        "Lkotlinx/coroutines/flow/i;",
        "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
        "getAllWithStatus",
        "",
        "listenCountWithStatus",
        "userId",
        "",
        "deleteByUserId",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "targetUserId",
        "getChatRequestByTargetId",
        "getByUserId",
        "request",
        "updateChatRequest",
        "relevantIds",
        "deleteIrrelevantChatRequests",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAllRequestsIds",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteChatRequestsByIds",
        "<init>",
        "()V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/im/freechat/data/sources/database/entities/BaseDao;-><init>()V

    return-void
.end method

.method static synthetic deleteIrrelevantChatRequests$suspendImpl(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation build Landroidx/room/Transaction;
    .end annotation

    instance-of v0, p2, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;

    iget v1, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;

    invoke-direct {v0, p0, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;-><init>(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->label:I

    invoke-virtual {p0, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->getAllRequestsIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 5
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const/16 p2, 0x384

    .line 7
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 9
    iput-object p1, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao$deleteIrrelevantChatRequests$1;->label:I

    invoke-virtual {p1, p2, v0}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteChatRequestsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 10
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public abstract deleteByUserId(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM friend_status WHERE target_user_id = :userId"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract deleteChatRequestsByIds(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM friend_status WHERE target_user_id IN (:relevantIds)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public deleteIrrelevantChatRequests(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;->deleteIrrelevantChatRequests$suspendImpl(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract getAllRequestsIds(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT target_user_id FROM friend_status"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getAllWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE status IN (:statuses)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/shared/entities/chat/Status;",
            ">;)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract getByUserId(I)Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend_status WHERE target_user_id = :targetUserId LIMIT 1"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end method

.method public abstract getChatRequestByTargetId(I)Lkotlinx/coroutines/flow/i;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM friend_status LEFT JOIN user ON friend_status.target_user_id = user.user_id WHERE target_user_id = :targetUserId LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlinx/coroutines/flow/i<",
            "Lcom/im/freechat/data/sources/database/entities/friendstatus/UserRelationStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract listenCountWithStatus(Ljava/util/List;)Lkotlinx/coroutines/flow/i;
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(target_user_id) FROM friend_status WHERE status IN (:statuses)"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/im/freechat/shared/entities/chat/Status;",
            ">;)",
            "Lkotlinx/coroutines/flow/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method

.method public abstract updateChatRequest(Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;)V
    .param p1    # Lcom/im/freechat/data/sources/database/entities/friendstatus/FriendStatusEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation
.end method
