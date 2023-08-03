.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "ImLoginUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lkotlin/Unit;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B!\u0008\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u001d\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "",
        "params",
        "Lio/reactivex/z;",
        "f",
        "(Lkotlin/Unit;)Lio/reactivex/z;",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "d",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "j",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/a;",
        "localDataManager",
        "Lg5/f;",
        "loginManager",
        "Lx4/a;",
        "analytics",
        "<init>",
        "(Lg5/a;Lg5/f;Lx4/a;)V",
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
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lg5/f;Lx4/a;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->b:Lg5/f;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->c:Lx4/a;

    .line 5
    new-instance p2, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class p3, Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->d:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/String;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->c:Lx4/a;

    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_IM_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lx4/a;->c(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;Z[Ljava/lang/String;)V

    return-void
.end method

.method private static final h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->c:Lx4/a;

    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_IM_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lx4/a;->c(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;Z[Ljava/lang/String;)V

    .line 2
    sget-object p0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    invoke-virtual {p0, p1}, Ltimber/log/Timber$b;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final synthetic i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->f(Lkotlin/Unit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected f(Lkotlin/Unit;)Lio/reactivex/z;
    .locals 2
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->a:Lg5/a;

    invoke-virtual {p1}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lio/reactivex/z;->empty()Lio/reactivex/z;

    move-result-object p1

    const-string v0, "empty()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->b:Lg5/f;

    invoke-virtual {p1}, Lg5/f;->d()Lio/reactivex/z;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->d:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/q;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/q;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/o;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/o;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/p;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/p;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnError(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "loginManager.getImToken(\u2026imber.e(it)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final j()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/r;->d:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
