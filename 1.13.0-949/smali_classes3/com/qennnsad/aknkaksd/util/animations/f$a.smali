.class final Lcom/qennnsad/aknkaksd/util/animations/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "PeerageAnimationUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/util/animations/f;->b(Lcom/qennnsad/aknkaksd/data/bean/websocket/PeerageLogin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;

.field final synthetic b:Lcom/qennnsad/aknkaksd/util/animations/f;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;Lcom/qennnsad/aknkaksd/util/animations/f;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/animations/f$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/animations/f$a;->b:Lcom/qennnsad/aknkaksd/util/animations/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/util/animations/f$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/animations/f$a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;->a()V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/animations/f$a;->b:Lcom/qennnsad/aknkaksd/util/animations/f;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/animations/f;->a(Lcom/qennnsad/aknkaksd/util/animations/f;)V

    return-void
.end method
