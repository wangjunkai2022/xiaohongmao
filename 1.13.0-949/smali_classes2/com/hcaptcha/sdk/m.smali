.class final Lcom/hcaptcha/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcaptcha/sdk/m$b;,
        Lcom/hcaptcha/sdk/m$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final b:Lcom/hcaptcha/sdk/HCaptchaConfig;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final c:Lcom/hcaptcha/sdk/p;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final d:Lcom/hcaptcha/sdk/HCaptchaStateListener;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final e:Landroid/webkit/WebView;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final f:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/p;Lcom/hcaptcha/sdk/HCaptchaStateListener;Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/os/Handler;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hcaptcha/sdk/HCaptchaConfig;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/hcaptcha/sdk/i;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/hcaptcha/sdk/p;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/hcaptcha/sdk/HCaptchaStateListener;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p7    # Landroid/webkit/WebView;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "handler is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "context is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "internalConfig is marked non-null but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "captchaVerifier is marked non-null but is null"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener is marked non-null but is null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "webView is marked non-null but is null"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/hcaptcha/sdk/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    iput-object p5, p0, Lcom/hcaptcha/sdk/m;->c:Lcom/hcaptcha/sdk/p;

    iput-object p6, p0, Lcom/hcaptcha/sdk/m;->d:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    iput-object p7, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {p4}, Lcom/hcaptcha/sdk/i;->e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/hcaptcha/sdk/m;->f:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    invoke-direct {p0, p1}, Lcom/hcaptcha/sdk/m;->g(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/hcaptcha/sdk/m;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    return-object p0
.end method

.method private g(Landroid/os/Handler;)V
    .locals 8
    .param p1    # Landroid/os/Handler;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    const-string v0, "handler is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "WebViewHelper.setupWebView"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/hcaptcha/sdk/j;

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    iget-object v2, p0, Lcom/hcaptcha/sdk/m;->c:Lcom/hcaptcha/sdk/p;

    invoke-direct {v0, p1, v1, v2}, Lcom/hcaptcha/sdk/j;-><init>(Landroid/os/Handler;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/p;)V

    new-instance p1, Lcom/hcaptcha/sdk/d;

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->a:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/hcaptcha/sdk/d;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    new-instance v4, Lcom/hcaptcha/sdk/m$c;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/hcaptcha/sdk/m$c;-><init>(Lcom/hcaptcha/sdk/m;Lcom/hcaptcha/sdk/m$a;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    sget-boolean v1, Lcom/hcaptcha/sdk/k;->b:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    new-instance v4, Lcom/hcaptcha/sdk/m$b;

    invoke-direct {v4, v5}, Lcom/hcaptcha/sdk/m$b;-><init>(Lcom/hcaptcha/sdk/m$a;)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :cond_0
    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v5}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    const-string v2, "JSInterface"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    const-string v1, "JSDI"

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    iget-object p1, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHost()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/hcaptcha/sdk/m;->f:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    invoke-interface {p1}, Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;->getHtml()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "WebViewHelper.loadData"

    invoke-static {p1}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "WebViewHelper.destroy"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    const-string v1, "JSInterface"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    const-string v1, "JSDI"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "webView.getParent() is null or not a ViewGroup instance"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->c(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public c()Lcom/hcaptcha/sdk/HCaptchaConfig;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    return-object v0
.end method

.method public d()Lcom/hcaptcha/sdk/HCaptchaStateListener;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->d:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    return-object v0
.end method

.method public e()Landroid/webkit/WebView;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->e:Landroid/webkit/WebView;

    const-string v1, "javascript:resetAndExecute();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lcom/hcaptcha/sdk/HCaptchaException;)Z
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getRetryPredicate()Lcom/hcaptcha/sdk/o;

    move-result-object v0

    iget-object v1, p0, Lcom/hcaptcha/sdk/m;->b:Lcom/hcaptcha/sdk/HCaptchaConfig;

    invoke-interface {v0, v1, p1}, Lcom/hcaptcha/sdk/o;->a(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/HCaptchaException;)Z

    move-result p1

    return p1
.end method
