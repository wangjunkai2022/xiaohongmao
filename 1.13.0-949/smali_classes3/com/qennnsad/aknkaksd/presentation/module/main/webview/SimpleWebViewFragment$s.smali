.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;
.super Ljava/lang/Object;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->f1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s",
        "Lcom/opensource/svgaplayer/d;",
        "",
        "onPause",
        "onFinished",
        "b",
        "",
        "frame",
        "",
        "percentage",
        "a",
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

.field final synthetic b:Le5/x1;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Le5/x1;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->b:Le5/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ID)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public onFinished()V
    .locals 4

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "webSvga onFinished"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Z)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->b:Le5/x1;

    iget-object v0, v0, Le5/x1;->d:Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/view/PeerageLoginView;->a()V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->G0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->G0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->N0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 1
    sget-object v0, Ltimber/log/Timber;->a:Ltimber/log/Timber$b;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "webSvga onPause"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$b;->k(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$s;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->P0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Z)V

    return-void
.end method
