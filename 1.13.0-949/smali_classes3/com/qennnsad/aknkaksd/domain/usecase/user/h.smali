.class public final Lcom/qennnsad/aknkaksd/domain/usecase/user/h;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "JoinFanClubInfoUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Ljava/lang/String;",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/h;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
        "params",
        "Lio/reactivex/z;",
        "e",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "c",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
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
            "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
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
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    .line 4
    new-instance p2, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    invoke-direct {p2, v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->f(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->g(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V

    return-void
.end method

.method private static final f(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lretrofit2/Response;)Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/qennnsad/aknkaksd/domain/base/d;->b(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;

    return-object p0
.end method

.method private static final g(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->a:Lg5/a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;->getInfo()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg5/a;->O(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubInfoBean;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->e(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;)Lio/reactivex/z;
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
            "Lcom/qennnsad/aknkaksd/data/bean/fanclub/JoinFanClubBean;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/h;->b:Lcom/qennnsad/aknkaksd/data/repository/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/data/repository/m;->g(Lcom/qennnsad/aknkaksd/data/repository/m;ZILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/repository/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/data/repository/b;->joinFanClub(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/user/g;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/user/g;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/usecase/user/f;

    invoke-direct {v0, p0}, Lcom/qennnsad/aknkaksd/domain/usecase/user/f;-><init>(Lcom/qennnsad/aknkaksd/domain/usecase/user/h;)V

    invoke-virtual {p1, v0}, Lio/reactivex/z;->doOnNext(Ln7/g;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "sourceFactory.create().j\u2026aveFanClubInfo(it.info) }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
