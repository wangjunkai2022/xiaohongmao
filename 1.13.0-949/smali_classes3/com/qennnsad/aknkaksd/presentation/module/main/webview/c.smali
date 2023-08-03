.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

.field public final synthetic c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/c;->c:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;->n(Landroid/webkit/WebView;Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;)V

    return-void
.end method
