.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;
.super Lcom/qennnsad/aknkaksd/util/j1$c;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->t(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j",
        "Lcom/qennnsad/aknkaksd/util/j1$c;",
        "Landroid/view/View;",
        "widget",
        "",
        "onClick",
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
.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

.field final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>(ILcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;->d:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/util/j1$c;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->x()Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$j;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/f$b;->a(I)V

    :cond_0
    return-void
.end method
