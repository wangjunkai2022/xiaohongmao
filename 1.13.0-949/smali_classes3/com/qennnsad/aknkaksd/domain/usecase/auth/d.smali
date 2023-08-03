.class public abstract Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "AbstractLoginUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;,
        Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$b;,
        Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;",
        ">",
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "TParams;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003:\u0003/0\rB/\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010\u0011\u001a\u00020\u000c\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010\u0017\u001a\u00020\u0012\u00a2\u0006\u0004\u0008-\u0010.J\u001d\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00062\u0006\u0010\u0005\u001a\u00028\u0000H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00062\u0006\u0010\u0005\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u0011\u001a\u00020\u000c8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0017\u001a\u00020\u00128\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R!\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001f\u001a\u00020\u001e8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001a\u0010$\u001a\u00020#8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u001a\u0010)\u001a\u00020(8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\u00a8\u00061"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;",
        "Params",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "params",
        "Lio/reactivex/z;",
        "f",
        "(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "",
        "p",
        "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "c",
        "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "k",
        "()Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "jwtUtil",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "o",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
        "Lkotlin/Lazy;",
        "n",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/a;",
        "localDataManager",
        "Lg5/a;",
        "l",
        "()Lg5/a;",
        "Lg5/f;",
        "loginManager",
        "Lg5/f;",
        "m",
        "()Lg5/f;",
        "Lx4/a;",
        "analytics",
        "Lx4/a;",
        "j",
        "()Lx4/a;",
        "<init>",
        "(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V",
        "a",
        "b",
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

.field private final c:Lcom/qennnsad/aknkaksd/util/JwtUtil;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final d:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final e:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/qennnsad/aknkaksd/util/JwtUtil;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lx4/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jwtUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsObjectPool"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->b:Lg5/f;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->c:Lcom/qennnsad/aknkaksd/util/JwtUtil;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->d:Lx4/a;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->e:Lcom/qennnsad/aknkaksd/data/websocket/j;

    .line 7
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$d;

    invoke-direct {p1, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$d;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->f:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->i(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final g(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;)Lkotlin/Unit;
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->l()Lg5/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getJwtToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.jwtToken"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/a;->h0(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->l()Lg5/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v1

    const-string v2, "it.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lg5/a;->T(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    .line 3
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->l()Lg5/a;

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
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->j()Lx4/a;

    move-result-object v0

    invoke-virtual {v0}, Lx4/a;->i()V

    .line 6
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->j()Lx4/a;

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
    instance-of v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_GUEST_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->j()Lx4/a;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lx4/a;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;[Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->o()Lcom/qennnsad/aknkaksd/data/websocket/j;

    move-result-object v4

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->getJwtToken()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 12
    invoke-static/range {v4 .. v9}, Lcom/qennnsad/aknkaksd/data/websocket/j;->d(Lcom/qennnsad/aknkaksd/data/websocket/j;Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;ILjava/lang/Object;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final h(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->j()Lx4/a;

    move-result-object p0

    sget-object p1, Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;->APP_LOGIN:Lcom/qennnsad/aknkaksd/analytics/data/events/EventSignature;

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

.method private final n()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->f(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected f(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)",
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
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->p(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->n()Lcom/qennnsad/aknkaksd/domain/base/d;

    move-result-object v0

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/b;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/b;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/c;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/c;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/a;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/a;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnError(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "requestEndpoint(params)\n\u2026GIN, false)\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected j()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->d:Lx4/a;

    return-object v0
.end method

.method protected k()Lcom/qennnsad/aknkaksd/util/JwtUtil;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->c:Lcom/qennnsad/aknkaksd/util/JwtUtil;

    return-object v0
.end method

.method protected l()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->a:Lg5/a;

    return-object v0
.end method

.method protected m()Lg5/f;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->b:Lg5/f;

    return-object v0
.end method

.method protected o()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;->e:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-object v0
.end method

.method public abstract p(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end method
