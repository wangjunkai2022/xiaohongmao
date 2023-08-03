.class public final Lcom/qennnsad/aknkaksd/domain/usecase/user/p;
.super Ljava/lang/Object;
.source "SetUserAndStartSocketUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0011\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/usecase/user/p;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;",
        "user",
        "",
        "a",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "b",
        "Lcom/qennnsad/aknkaksd/data/websocket/j;",
        "wsObjectPool",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V",
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

.field private final b:Lcom/qennnsad/aknkaksd/data/websocket/j;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg5/a;Lcom/qennnsad/aknkaksd/data/websocket/j;)V
    .locals 1
    .param p1    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/data/websocket/j;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "localDataManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wsObjectPool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->a:Lg5/a;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->b:Lcom/qennnsad/aknkaksd/data/websocket/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V
    .locals 3
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->a:Lg5/a;

    invoke-virtual {v0, p1}, Lg5/a;->T(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->b:Lcom/qennnsad/aknkaksd/data/websocket/j;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->a:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/domain/usecase/user/p;->a:Lg5/a;

    invoke-virtual {v2}, Lg5/a;->q()Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qennnsad/aknkaksd/data/websocket/j;->c(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/LocalRoomMsg;)V

    return-void
.end method
