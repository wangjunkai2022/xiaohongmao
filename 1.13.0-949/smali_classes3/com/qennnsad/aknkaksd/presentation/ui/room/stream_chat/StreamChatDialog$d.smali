.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;
.super Lkotlin/jvm/internal/Lambda;
.source "StreamChatDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->x0()V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 2
    sget-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string v2, "requireActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->q0()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog$d;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/presentation/ui/room/stream_chat/StreamChatDialog;->o0()Lg5/a;

    move-result-object v3

    invoke-virtual {v3}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getStreamDeposit()Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/qennnsad/aknkaksd/data/bean/StreamDeposit;->getHelpUri()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/qennnsad/aknkaksd/data/repository/m;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 6
    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method
