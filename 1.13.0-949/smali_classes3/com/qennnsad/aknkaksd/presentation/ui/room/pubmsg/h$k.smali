.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;
.super Lcom/qennnsad/aknkaksd/util/j1$c;
.source "PublicChatHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->A(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotification;)V
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
        "com/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k",
        "Lcom/qennnsad/aknkaksd/util/j1$c;",
        "Landroid/view/View;",
        "p0",
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
.field final synthetic c:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

.field final synthetic d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)V
    .locals 1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    const/4 p1, 0x0

    const/4 p2, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/qennnsad/aknkaksd/util/j1$c;-><init>(IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getTarget()Ljava/lang/String;

    move-result-object p1

    const-string v0, "browser"

    .line 2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {v1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "app"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;

    invoke-static {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;->e(Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "tvContent.context"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/h$k;->c:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
