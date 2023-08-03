.class public final Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "RequestGameCenterUrlUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lkotlin/Unit;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u001d\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001d\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "",
        "params",
        "Lio/reactivex/z;",
        "e",
        "(Lkotlin/Unit;)Lio/reactivex/z;",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;",
        "c",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "h",
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
.field private final a:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/qennnsad/aknkaksd/data/repository/m;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/domain/base/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;",
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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    invoke-direct {p2, v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->f(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->a:Lg5/a;

    invoke-virtual {p0, p1}, Lg5/a;->d0(Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;)V

    .line 2
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;->getUrl()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic g(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->e(Lkotlin/Unit;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lkotlin/Unit;)Lio/reactivex/z;
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->getGameCenterUrl()Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/h;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/h;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/i;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/i;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().g\u2026isNullOrEmpty()\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h()Lcom/qennnsad/aknkaksd/domain/base/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/domain/base/d<",
            "Lcom/qennnsad/aknkaksd/data/bean/GameCenter$GetUrlBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/gamecenter/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
