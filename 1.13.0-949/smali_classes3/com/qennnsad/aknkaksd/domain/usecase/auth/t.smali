.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;
.super Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;
.source "LinkGuestUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\u00088\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000f\u001a\u00020\u000e8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u00138\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;",
        "Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;",
        "params",
        "Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "",
        "n",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "g",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "m",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
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
        "Lg5/f;",
        "loginManager",
        "<init>",
        "(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)V",
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
.field private final e:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final f:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final g:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lg5/f;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;Lg5/f;)V
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
    .param p4    # Lg5/f;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsObjectPool"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loginManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/h;-><init>(Lg5/a;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->e:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->f:Lx4/a;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->g:Lcom/qennnsad/aknkaksd/data/websocket/j;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->h:Lg5/f;

    return-void
.end method


# virtual methods
.method protected j()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->f:Lx4/a;

    return-object v0
.end method

.method protected k()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->e:Lg5/a;

    return-object v0
.end method

.method protected m()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->g:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-object v0
.end method

.method public n(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;
    .locals 1
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

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/t;->h:Lg5/f;

    invoke-virtual {v0, p1}, Lg5/f;->g(Lcom/qennnsad/aknkaksd/data/bean/register/RegisterBean;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
