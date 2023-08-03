.class final Lcom/im/freechat/data/l$o1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncRepositoryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/data/l;->v0(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/s0;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
        "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.im.freechat.data.SyncRepositoryImpl$uploadAttachments$2"
    f = "SyncRepositoryImpl.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x172
    }
    m = "invokeSuspend"
    n = {
        "it",
        "prepared"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/im/freechat/data/l;

.field final synthetic e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/im/freechat/data/l;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/im/freechat/data/l;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/im/freechat/data/l$o1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    iput-object p2, p0, Lcom/im/freechat/data/l$o1;->e:Ljava/util/List;

    iput-object p3, p0, Lcom/im/freechat/data/l$o1;->f:Ljava/util/List;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final h(Lkotlinx/coroutines/s0;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    new-instance p1, Lcom/im/freechat/data/l$o1;

    iget-object v0, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    iget-object v1, p0, Lcom/im/freechat/data/l$o1;->e:Ljava/util/List;

    iget-object v2, p0, Lcom/im/freechat/data/l$o1;->f:Ljava/util/List;

    invoke-direct {p1, v0, v1, v2, p3}, Lcom/im/freechat/data/l$o1;-><init>(Lcom/im/freechat/data/l;Ljava/util/List;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p1, Lcom/im/freechat/data/l$o1;->c:Ljava/lang/Object;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/im/freechat/data/l$o1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/l$o1;->h(Lkotlinx/coroutines/s0;Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/im/freechat/data/l$o1;->b:I

    const/4 v2, 0x0

    const-string v3, "Compressing: Preparing "

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/im/freechat/data/l$o1;->a:Ljava/lang/Object;

    check-cast v0, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    iget-object v1, p0, Lcom/im/freechat/data/l$o1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/im/freechat/data/l$o1;->c:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    .line 4
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " for upload"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    invoke-static {p1}, Lcom/im/freechat/data/l;->b0(Lcom/im/freechat/data/l;)Lcom/im/freechat/domain/h;

    move-result-object p1

    iget-object v5, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    invoke-static {v5}, Lcom/im/freechat/data/l;->e0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->mapAttachment(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;)Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v5}, Lcom/im/freechat/domain/h;->h(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p1

    .line 6
    iget-object v5, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    invoke-static {v5}, Lcom/im/freechat/data/l;->e0(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/im/freechat/data/sources/database/entities/message/MessageMapper;->map(Lcom/im/freechat/shared/entities/message/Attachment;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;

    move-result-object p1

    .line 7
    iget-object v5, p0, Lcom/im/freechat/data/l$o1;->d:Lcom/im/freechat/data/l;

    invoke-static {v5}, Lcom/im/freechat/data/l;->Y(Lcom/im/freechat/data/l;)Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;

    move-result-object v5

    iput-object v1, p0, Lcom/im/freechat/data/l$o1;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/im/freechat/data/l$o1;->a:Ljava/lang/Object;

    iput v4, p0, Lcom/im/freechat/data/l$o1;->b:I

    invoke-virtual {v5, p1, p0}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentDao;->insertOrUpdate(Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/im/freechat/data/l$o1;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/im/freechat/data/l$o1;->f:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/database/entities/attachment/AttachmentEntity;->getMediaId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " finished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
