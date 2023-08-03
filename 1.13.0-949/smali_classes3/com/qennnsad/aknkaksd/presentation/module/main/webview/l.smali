.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;ZLcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->a:Landroid/webkit/WebView;

    iput-boolean p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->b:Z

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->a:Landroid/webkit/WebView;

    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->b:Z

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/l;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;->z0(Landroid/webkit/WebView;ZLcom/qennnsad/aknkaksd/presentation/module/main/webview/SimpleWebViewFragment;)V

    return-void
.end method
