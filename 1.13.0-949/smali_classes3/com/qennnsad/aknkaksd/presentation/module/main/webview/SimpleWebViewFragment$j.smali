.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;
.super Lkotlin/jvm/internal/Lambda;
.source "SimpleWebViewFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->f1()V
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
.field final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;->b(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Ljava/lang/String;)V

    return-void
.end method

.method private static final b(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Lcom/alipay/sdk/app/PayTask;->pay(Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/util/l;->r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$j;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    new-instance v2, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/m;

    invoke-direct {v2, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/m;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Ljava/lang/String;)V

    .line 5
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
