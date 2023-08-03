.class public final Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "LoadPrivateLimitUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Ljava/lang/String;",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001d\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
        "params",
        "Lio/reactivex/z;",
        "d",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "a",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "b",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "f",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "responseMapper",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V",
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
.field private final a:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/repository/m;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/repository/m;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sourceFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 3
    new-instance p2, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    invoke-direct {p2, v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->b:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->d(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Lio/reactivex/z;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->a:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->loadPrivateLimit(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->b:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/r;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/r;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().l\u2026map (responseMapper::map)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/anchor/s;->b:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
