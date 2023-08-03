.class public final Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;
.super Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;
.source "LoginGuestUseCase.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d<",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B1\u0008\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\"\u0010#J\u001c\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u001a\u0010\r\u001a\u00020\u00088\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0012\u001a\u00020\u000e8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0014\u001a\u00020\u00138\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0019\u001a\u00020\u00188\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u00020\u001d8\u0014X\u0094\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;",
        "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;",
        "params",
        "Lio/reactivex/z;",
        "Lretrofit2/Response;",
        "",
        "q",
        "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "i",
        "Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "k",
        "()Lcom/qennnsad/aknkaksd/util/JwtUtil;",
        "jwtUtil",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "o",
        "()Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
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
.field private final g:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final h:Lg5/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final i:Lcom/qennnsad/aknkaksd/util/JwtUtil;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final j:Lx4/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final k:Lcom/qennnsad/aknkaksd/data/websocket/j;
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
    .annotation runtime Lu7/a;
    .end annotation

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
    invoke-direct/range {p0 .. p5}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d;-><init>(Lg5/a;Lg5/f;Lcom/qennnsad/aknkaksd/util/JwtUtil;Lx4/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->g:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->h:Lg5/f;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->i:Lcom/qennnsad/aknkaksd/util/JwtUtil;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->j:Lx4/a;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->k:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method


# virtual methods
.method protected j()Lx4/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->j:Lx4/a;

    return-object v0
.end method

.method protected k()Lcom/qennnsad/aknkaksd/util/JwtUtil;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->i:Lcom/qennnsad/aknkaksd/util/JwtUtil;

    return-object v0
.end method

.method protected l()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->g:Lg5/a;

    return-object v0
.end method

.method protected m()Lg5/f;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->h:Lg5/f;

    return-object v0
.end method

.method protected o()Lcom/qennnsad/aknkaksd/data/websocket/j;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->k:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-object v0
.end method

.method public bridge synthetic p(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$c;)Lio/reactivex/z;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->q(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;)Lio/reactivex/z;
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/domain/usecase/auth/d$a;",
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

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/domain/usecase/auth/v;->m()Lg5/f;

    move-result-object p1

    invoke-virtual {p1}, Lg5/f;->j()Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method
