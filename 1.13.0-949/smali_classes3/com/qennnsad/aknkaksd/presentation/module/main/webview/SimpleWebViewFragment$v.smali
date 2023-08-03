.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->M0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->Z0()Lcom/qennnsad/aknkaksd/util/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;->b0()Lg5/a;

    move-result-object v2

    invoke-virtual {v2}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    const-string v3, "token"

    invoke-virtual {v0, v1, v3, v2}, Lcom/qennnsad/aknkaksd/util/t0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->Z0()Lcom/qennnsad/aknkaksd/util/t0;

    move-result-object v0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ver"

    const-string v3, "1.13.0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qennnsad/aknkaksd/util/t0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
