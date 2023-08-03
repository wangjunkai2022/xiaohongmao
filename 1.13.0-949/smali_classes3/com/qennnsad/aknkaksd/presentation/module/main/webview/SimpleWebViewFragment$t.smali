.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "points/pointsview"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "game-center"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->C0(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gameCenter"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment$t;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
