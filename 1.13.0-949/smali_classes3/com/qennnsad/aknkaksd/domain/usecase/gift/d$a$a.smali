.class final Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SyncGiftsUseCase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/s0;",
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
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"
    }
    d2 = {
        "Lkotlinx/coroutines/s0;",
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
    c = "com.qennnsad.aknkaksd.domain.usecase.gift.SyncGiftsUseCase$buildRxStream$2$1$1$1"
    f = "SyncGiftsUseCase.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;[Ljava/lang/String;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            "[",
            "Ljava/lang/String;",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->c:[Ljava/lang/String;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic h(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->n(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;Lokhttp3/ResponseBody;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final n(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;Lokhttp3/ResponseBody;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->j()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getCache_name()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    sget-object p3, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error loading svga from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p3, p2, v1}, Ltimber/log/Timber$b;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6
    :goto_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    new-instance p1, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;-><init>(Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;[Ljava/lang/String;Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/s0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/s0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlinx/coroutines/s0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->a:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getGiftswf()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->c:[Ljava/lang/String;

    const-string v2, "currentFiles"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getCache_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->f(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object p1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;->getGiftswf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    invoke-static {v2}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->f(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->downloadFile(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->d:Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a$a;->b:Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    new-instance v3, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;

    invoke-direct {v3, v1, v2, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/c;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_3
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
