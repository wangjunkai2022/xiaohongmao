.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/webview/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/b;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/b;->b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/b;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/b;->b:Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;->o(Landroid/webkit/WebView;Lcom/qennnsad/aknkaksd/data/interceptor/WebViewInterceptedError;)V

    return-void
.end method
