.class final Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "RankPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/rank/g;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.qennnsad.aknkaksd.presentation.module.rank.RankPagingSource"
    f = "RankPagingSource.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x3
    }
    l = {
        0x19,
        0x1b,
        0x1c,
        0x2a,
        0x2d
    }
    m = "load"
    n = {
        "this",
        "params",
        "this",
        "params",
        "pageNumber",
        "params",
        "result",
        "pageNumber",
        "it"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "I$0",
        "L$0",
        "L$1",
        "I$0",
        "L$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/qennnsad/aknkaksd/presentation/module/rank/g;

.field f:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/rank/g;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/g;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;->e:Lcom/qennnsad/aknkaksd/presentation/module/rank/g;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;->f:I

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/rank/g$a;->e:Lcom/qennnsad/aknkaksd/presentation/module/rank/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/rank/g;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
