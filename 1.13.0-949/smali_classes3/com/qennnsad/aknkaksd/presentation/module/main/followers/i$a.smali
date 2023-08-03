.class final Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "FollowersPagingSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.qennnsad.aknkaksd.presentation.module.main.followers.FollowersPagingSource"
    f = "FollowersPagingSource.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x1a
    }
    m = "load"
    n = {
        "this",
        "pageNumber"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;

.field e:I


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;

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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;->c:Ljava/lang/Object;

    iget p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;->e:I

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i$a;->d:Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/followers/i;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
