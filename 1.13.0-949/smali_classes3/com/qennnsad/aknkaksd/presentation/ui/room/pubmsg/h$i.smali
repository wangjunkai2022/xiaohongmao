.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;
.super Lkotlin/jvm/internal/Lambda;
.source "PublicChatHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->t(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/CharSequence;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(Ljava/lang/CharSequence;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

.field final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->setCharSequence(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/RoomPublicMsg;

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->getCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$i;->a(Ljava/lang/CharSequence;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
