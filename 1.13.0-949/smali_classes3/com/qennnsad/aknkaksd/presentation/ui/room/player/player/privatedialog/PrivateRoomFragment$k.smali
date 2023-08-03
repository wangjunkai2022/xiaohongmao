.class final Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;
.super Lkotlin/jvm/internal/Lambda;
.source "PrivateRoomFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->j0(Le5/o1;Lcom/qennnsad/aknkaksd/data/bean/LiveSummary;)V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;->d0()Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/PlayerViewModel;->b0()Lg5/a;

    move-result-object v0

    invoke-virtual {v0}, Lg5/a;->C()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/qennnsad/aknkaksd/util/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getId()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&ver=1.13.0&lob="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;->getLob_no()I

    move-result v0

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object v2, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity;->l:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment$k;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/privatedialog/PrivateRoomFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "requireContext()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewActivity$a;Landroid/content/Context;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method
