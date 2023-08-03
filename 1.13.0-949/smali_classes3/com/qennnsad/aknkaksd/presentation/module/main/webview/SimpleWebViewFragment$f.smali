.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->W0()Lcom/qennnsad/aknkaksd/presentation/module/main/webview/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/webkit/ValueCallback<",
        "[",
        "Landroid/net/Uri;",
        ">;",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0014\u0010\u0003\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0018\u00010\u00002\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Landroid/webkit/ValueCallback;",
        "",
        "Landroid/net/Uri;",
        "filePathCallback",
        "Landroid/webkit/WebChromeClient$FileChooserParams;",
        "fileChooserParams",
        "",
        "a",
        "(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 3
    .param p1    # Landroid/webkit/ValueCallback;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebChromeClient$FileChooserParams;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->I0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Landroid/webkit/ValueCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->Q0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Landroid/webkit/ValueCallback;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->firstOrNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne v2, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p2

    const-string v0, "fileChooserParams.acceptTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string p2, "*/*"

    .line 7
    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->E0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p2

    const-string v0, "File Chooser"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/webkit/ValueCallback;

    check-cast p2, Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$f;->a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
