.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;
.super Lkotlin/jvm/internal/Lambda;
.source "PublicChatHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->q(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

.field final synthetic b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;Lkotlin/jvm/functions/Function1;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/CharSequence;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->setAlreadyTranslated(Z)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;->setContent(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->b:Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->c:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$h;->a:Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;Lcom/qennnsad/aknkaksd/data/bean/websocket/UserPublicMsg;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
