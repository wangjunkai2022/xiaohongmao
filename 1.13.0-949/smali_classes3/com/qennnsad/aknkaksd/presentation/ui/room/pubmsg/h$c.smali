.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;
.super Lcom/qennnsad/aknkaksd/util/j1$b;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->f(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;)Ljava/lang/CharSequence;
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
        "com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c",
        "Lcom/qennnsad/aknkaksd/util/j1$b;",
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
.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/qennnsad/aknkaksd/util/j1$b;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Gift To user: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->getToUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SendGiftNewsMsgClick"

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->w()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$c;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftNewsMsg;->asToUserInfo()Lcom/qennnsad/aknkaksd/data/bean/me/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;->XI_BAO:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog$UserType;

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
