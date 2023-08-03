.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;
.super Lcom/qennnsad/aknkaksd/domain/base/h;
.source "ChangePasswordUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/base/h<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0013B\u0019\u0008\u0007\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u0006\u0010\u0004\u001a\u00020\u0002H\u0014R\u001d\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;",
        "Lcom/qennnsad/aknkaksd/domain/base/h;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;",
        "",
        "params",
        "Lio/reactivex/z;",
        "d",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "c",
        "Lcom/qennnsad/aknkaksd/domain/base/d;",
        "f",
        "()Lcom/qennnsad/aknkaksd/domain/base/d;",
        "mapper",
        "Lg5/f;",
        "loginManager",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/f;Lg5/a;)V",
        "a",
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
.field private final a:Lg5/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/domain/base/d;
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
.method public constructor <init>(Lg5/f;Lg5/a;)V
    .locals 1
    .param p1    # Lg5/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "loginManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/domain/base/h;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->a:Lg5/f;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->b:Lg5/a;

    .line 4
    new-instance p1, Lcom/qennnsad/aknkaksd/domain/base/d;

    const-class v0, Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/qennnsad/aknkaksd/domain/base/d;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-void
.end method

.method public static synthetic c(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic e(Lcom/qennnsad/aknkaksd/domain/base/d;Lretrofit2/Response;)Ljava/lang/String;
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

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->d(Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method protected d(Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;)Lio/reactivex/z;
    .locals 7
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;",
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
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->b:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->A()Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->a:Lg5/f;

    .line 4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;->h()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;->i()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;->g()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j$a;->j()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual/range {v1 .. v6}, Lg5/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/login/CaptchaType;)Lio/reactivex/z;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    new-instance v1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i;

    invoke-direct {v1, v0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/i;-><init>(Lcom/qennnsad/aknkaksd/domain/base/d;)V

    invoke-virtual {p1, v1}, Lio/reactivex/z;->map(Ln7/o;)Lio/reactivex/z;

    move-result-object p1

    const-string v0, "loginManager.findmypassw\u2026       ).map(mapper::map)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f()Lcom/qennnsad/aknkaksd/domain/base/d;
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

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/j;->c:Lcom/qennnsad/aknkaksd/domain/base/d;

    return-object v0
.end method
