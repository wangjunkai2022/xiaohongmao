.class public final Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "SyncGiftsUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lkotlin/Unit;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001B#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u001d\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0017\u0010\u000c\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR \u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "params",
        "Lio/reactivex/z;",
        "g",
        "(Lkotlin/Unit;)Lio/reactivex/z;",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "j",
        "()Landroid/content/Context;",
        "context",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "c",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
        "d",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Landroid/content/Context;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Ljava/util/List<",
            "Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation runtime Lm6/b;
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->b:Lg5/a;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->c:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class p3, Ljava/util/List;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    const-class v2, Lcom/qennnsad/aknkaksd/data/bean/gift/Gift;

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Lcom/squareup/moshi/z;->m(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p3

    const-string v0, "newParameterizedType(Lis\u2026s.java, Gift::class.java)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p3, p2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->d:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->h(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)Lg5/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->b:Lg5/a;

    return-object p0
.end method

.method public static final synthetic f(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->c:Lcom/qennnsad/aknkaksd/data/repository/m;

    return-object p0
.end method

.method private static final h(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;)Lkotlin/Unit;
    .locals 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/coroutines/i1;->c()Lkotlinx/coroutines/n0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/t0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s0;

    move-result-object v1

    new-instance v4, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d$a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->g(Lkotlin/Unit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected g(Lkotlin/Unit;)Lio/reactivex/z;
    .locals 3
    .param p1    # Lkotlin/Unit;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Unit;",
            ")",
            "Lio/reactivex/z<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->b:Lg5/a;

    invoke-virtual {p1}, Lg5/a;->m()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    const-string v0, "empty()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->c:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->Y()Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->d:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/gift/a;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/a;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/b;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/gift/b;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().a\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gift/d;->a:Landroid/content/Context;

    return-object v0
.end method
