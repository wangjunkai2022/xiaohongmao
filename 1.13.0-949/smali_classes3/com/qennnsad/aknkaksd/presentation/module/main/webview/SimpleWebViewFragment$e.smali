.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "it",
        "",
        "a",
        "(I)V"
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->D0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Le5/x1;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Le5/x1;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$e;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    .line 2
    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->K0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->O0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->R0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-static {v1, v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->S0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$e;->a(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
