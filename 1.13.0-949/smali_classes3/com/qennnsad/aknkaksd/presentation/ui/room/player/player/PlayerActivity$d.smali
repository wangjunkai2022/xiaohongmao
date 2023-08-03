.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;->e5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;",
        "msg",
        "",
        "a",
        "(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseStreamActivity;->M0(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerActivity$d;->a(Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
