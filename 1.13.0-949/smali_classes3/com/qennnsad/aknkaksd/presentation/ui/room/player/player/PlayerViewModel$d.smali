.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->h0(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;",
        "it",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)V
    .locals 4
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->a:Ljava/lang/String;

    const-string v1, "2"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->H(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;)Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/e;->e(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;

    const v1, 0x7f1303ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$c;-><init>(Ljava/lang/Throwable;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    new-instance v1, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;->getStream()Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;

    move-result-object p1

    const-string v3, "it.stream"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$a$d;-><init>(Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/room/PrivateLimitBean$StreamBean;)V

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/common/l;->l(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel$d;->a(Lcom/qennnsad/aknkaksd/data/bean/room/PrivateCheckBean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
