.class final Lcom/hcaptcha/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hcaptcha/sdk/p;


# instance fields
.field private final a:Lcom/hcaptcha/sdk/HCaptchaConfig;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final b:Lcom/hcaptcha/sdk/HCaptchaStateListener;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final c:Lcom/hcaptcha/sdk/m;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/HCaptchaStateListener;)V
    .locals 9
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/hcaptcha/sdk/HCaptchaConfig;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/hcaptcha/sdk/i;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/hcaptcha/sdk/HCaptchaStateListener;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "config is marked non-null but is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "internalConfig is marked non-null but is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "listener is marked non-null but is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HeadlessWebView.init"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/hcaptcha/sdk/g;->a:Lcom/hcaptcha/sdk/HCaptchaConfig;

    iput-object p4, p0, Lcom/hcaptcha/sdk/g;->b:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    new-instance v8, Lcom/hcaptcha/sdk/HCaptchaWebView;

    invoke-direct {v8, p1}, Lcom/hcaptcha/sdk/HCaptchaWebView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/hcaptcha/sdk/q$h;->X1:I

    invoke-virtual {v8, v0}, Landroid/view/View;->setId(I)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Lcom/hcaptcha/sdk/m;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/hcaptcha/sdk/m;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/p;Lcom/hcaptcha/sdk/HCaptchaStateListener;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/hcaptcha/sdk/g;->c:Lcom/hcaptcha/sdk/m;

    return-void
.end method


# virtual methods
.method public G(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "activity is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean p1, p0, Lcom/hcaptcha/sdk/g;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hcaptcha/sdk/g;->c:Lcom/hcaptcha/sdk/m;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/m;->f()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/g;->e:Z

    :goto_0
    return-void
.end method

.method public J(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 1
    .param p1    # Lcom/hcaptcha/sdk/HCaptchaException;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "exception is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->c:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/m;->h(Lcom/hcaptcha/sdk/HCaptchaException;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/hcaptcha/sdk/g;->c:Lcom/hcaptcha/sdk/m;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/m;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->b:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onFailure(Lcom/hcaptcha/sdk/HCaptchaException;)V

    :goto_0
    return-void
.end method

.method public N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hcaptcha/sdk/g;->d:Z

    iget-boolean v0, p0, Lcom/hcaptcha/sdk/g;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcaptcha/sdk/g;->e:Z

    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->c:Lcom/hcaptcha/sdk/m;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/m;->f()V

    :cond_0
    return-void
.end method

.method public a()Lcom/hcaptcha/sdk/HCaptchaConfig;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    .annotation build Llombok/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->a:Lcom/hcaptcha/sdk/HCaptchaConfig;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->b:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/g;->b:Lcom/hcaptcha/sdk/HCaptchaStateListener;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaStateListener;->onOpen()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/g;->b(Ljava/lang/String;)V

    return-void
.end method
