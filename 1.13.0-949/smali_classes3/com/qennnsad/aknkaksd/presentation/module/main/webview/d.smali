.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/webview/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/webkit/WebView;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/WebView;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/d;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/d;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/d;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/d;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;->m(Landroid/webkit/WebView;Ljava/lang/Exception;)V

    return-void
.end method
