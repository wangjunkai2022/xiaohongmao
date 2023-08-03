.class public abstract Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "AbstractRegisterUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008!\u0010\"J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u00052\u0006\u0010\u0004\u001a\u00020\u0002H&R\u001a\u0010\u000f\u001a\u00020\n8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR!\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0018\u001a\u00020\u00178\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001d\u001a\u00020\u001c8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006#"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;",
        "",
        "params",
        "Lio/reactivex/z;",
        "f",
        "Lretrofit2/Response;",
        "",
        "n",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "c",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "m",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
        "d",
        "Lkotlin/Lazy;",
        "l",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "responseMapper",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "k",
        "()Lg5/a;",
        "Lx4/a;",
        "analytics",
        "Lx4/a;",
        "j",
        "()Lx4/a;",
        "<init>",
        "(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V",
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

.field private final b:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsObjectPool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->b:Lx4/a;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->c:Lcom/qennnsad/aknkaksd/data/websocket/j;

    .line 5
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h$a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->d:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->k()Lg5/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getJwtToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.jwtToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/a;->h0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->k()Lg5/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    const-string v2, "it.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/a;->T(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->k()Lg5/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getImRole()I

    move-result v1

    invoke-virtual {v0, v1}, Lg5/a;->g0(I)V

    .line 4
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/error/b;->a:Lcom/qennnsad/aknkaksd/analytics/error/b$a;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/analytics/error/b$a;->a()Lcom/qennnsad/aknkaksd/analytics/error/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qennnsad/aknkaksd/analytics/error/b;->a(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->j()Lx4/a;

    move-result-object v0

    invoke-virtual {v0}, Lx4/a;->i()V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->j()Lx4/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lx4/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->j()Lx4/a;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SIGN_UP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->m()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getJwtToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 11
    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/data/websocket/j;->d(Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;ILjava/lang/Object;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->j()Lx4/a;

    move-result-object p0

    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_SIGN_UP:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lx4/a;->c(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;Z[Ljava/lang/String;)V

    return-void
.end method

.method private static final synthetic i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;

    return-object p0
.end method

.method private final l()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->f(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected f(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;",
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
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->n(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->l()Lcom/qennnsad/aknkaksd/domain/base/d;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/f;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/f;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/g;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/g;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/e;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/e;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnError(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "requestEndpoint(params)\n\u2026_UP, false)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected j()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->b:Lx4/a;

    return-object v0
.end method

.method protected k()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->a:Lg5/a;

    return-object v0
.end method

.method protected m()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;->c:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-object v0
.end method

.method public abstract n(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;",
            ")",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
