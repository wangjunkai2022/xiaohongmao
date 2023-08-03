.class public final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;
.super Ljava/lang/Object;
.source "SimpleWebViewFragment_MembersInjector.java"

# interfaces
.implements Ld6/g;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld6/g<",
        "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lx4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lc5/g;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lc5/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->b:Lu7/c;

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->c:Lu7/c;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->d:Lu7/c;

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)Ld6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;",
            "Lu7/c<",
            "Lx4/a;",
            ">;",
            "Lu7/c<",
            "Lc5/g;",
            ">;",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/util/t0;",
            ">;)",
            "Ld6/g<",
            "Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;-><init>(Lu7/c;Lu7/c;Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lcom/qennnsad/aknkaksd/util/t0;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.networkUtility"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->m:Lcom/qennnsad/aknkaksd/util/t0;

    return-void
.end method

.method public static e(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lc5/g;)V
    .locals 0
    .annotation build Ldagger/internal/j;
        value = "com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewFragment.webViewAuthInterceptor"
    .end annotation

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->l:Lc5/g;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->c(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V

    return-void
.end method

.method public c(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->d(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lg5/a;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->b:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx4/a;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/common/k;->c(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;Lx4/a;)V

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->c:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/g;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->e(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lc5/g;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->d:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/util/t0;

    invoke-static {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/p;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;Lcom/qennnsad/aknkaksd/util/t0;)V

    return-void
.end method
