.class public final Lcom/hcaptcha/sdk/HCaptcha;
.super Lcom/hcaptcha/sdk/tasks/e;
.source "SourceFile"

# interfaces
.implements Lcom/hcaptcha/sdk/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hcaptcha/sdk/tasks/e<",
        "Lcom/hcaptcha/sdk/l;",
        ">;",
        "Lcom/hcaptcha/sdk/n;"
    }
.end annotation


# static fields
.field public static final m:Ljava/lang/String; = "com.hcaptcha.sdk.site-key"

.field public static final n:Ljava/lang/String; = "hCaptcha"

.field public static final synthetic o:Z


# instance fields
.field private final i:Landroidx/fragment/app/FragmentActivity;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private j:Lcom/hcaptcha/sdk/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/hcaptcha/sdk/HCaptchaConfig;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final l:Lcom/hcaptcha/sdk/i;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/hcaptcha/sdk/i;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;-><init>()V

    const-string v0, "context is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->i:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/hcaptcha/sdk/HCaptcha;->l:Lcom/hcaptcha/sdk/i;

    return-void
.end method

.method public static A(Landroid/content/Context;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "context is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/hcaptcha/sdk/HCaptcha;

    invoke-static {}, Lcom/hcaptcha/sdk/i;->c()Lcom/hcaptcha/sdk/i$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hcaptcha/sdk/i$a;->a()Lcom/hcaptcha/sdk/i;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Landroid/content/Context;Lcom/hcaptcha/sdk/i;)V

    return-object v0
.end method

.method public static B(Landroid/content/Context;Lcom/hcaptcha/sdk/i;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "context is marked non-null but is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/hcaptcha/sdk/HCaptcha;

    invoke-direct {v0, p0, p1}, Lcom/hcaptcha/sdk/HCaptcha;-><init>(Landroid/content/Context;Lcom/hcaptcha/sdk/i;)V

    return-object v0
.end method

.method private C()Lcom/hcaptcha/sdk/HCaptcha;
    .locals 2

    const-string v0, "HCaptcha.startVerification"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v0, v1}, Lcom/hcaptcha/sdk/p;->G(Landroidx/fragment/app/FragmentActivity;)V

    return-object p0
.end method

.method public static synthetic u(Lcom/hcaptcha/sdk/HCaptcha;)V
    .locals 0

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/tasks/e;->k()V

    return-void
.end method

.method public static synthetic v(Lcom/hcaptcha/sdk/HCaptcha;)Lcom/hcaptcha/sdk/HCaptchaConfig;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/HCaptcha;->k:Lcom/hcaptcha/sdk/HCaptchaConfig;

    return-object p0
.end method

.method public static synthetic w(Lcom/hcaptcha/sdk/HCaptcha;J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/hcaptcha/sdk/tasks/e;->q(J)V

    return-void
.end method

.method public static synthetic x(Lcom/hcaptcha/sdk/HCaptcha;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/tasks/e;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic y(Lcom/hcaptcha/sdk/HCaptcha;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/tasks/e;->s(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic z(Lcom/hcaptcha/sdk/HCaptcha;Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/tasks/e;->r(Lcom/hcaptcha/sdk/HCaptchaException;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/hcaptcha/sdk/HCaptcha;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->i:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/hcaptcha/sdk/b;->a(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.hcaptcha.sdk.site-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/hcaptcha/sdk/HCaptcha;->f(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Add missing com.hcaptcha.sdk.site-key meta-data to AndroidManifest.xml or call getClient(context, siteKey) method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/hcaptcha/sdk/HCaptchaConfig;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 1
    .param p1    # Lcom/hcaptcha/sdk/HCaptchaConfig;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "inputConfig is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->k:Lcom/hcaptcha/sdk/HCaptchaConfig;

    invoke-virtual {p1, v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha;->c(Lcom/hcaptcha/sdk/HCaptchaConfig;)Lcom/hcaptcha/sdk/HCaptcha;

    :cond_1
    invoke-direct {p0}, Lcom/hcaptcha/sdk/HCaptcha;->C()Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/hcaptcha/sdk/HCaptchaConfig;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 4
    .param p1    # Lcom/hcaptcha/sdk/HCaptchaConfig;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "inputConfig is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getDiagnosticLog()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/hcaptcha/sdk/k;->b:Z

    const-string v0, "HCaptcha.setup"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/hcaptcha/sdk/HCaptcha$1;

    invoke-direct {v0, p0}, Lcom/hcaptcha/sdk/HCaptcha$1;-><init>(Lcom/hcaptcha/sdk/HCaptcha;)V

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getHideDialog()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig;->toBuilder()Lcom/hcaptcha/sdk/HCaptchaConfig$a;

    move-result-object p1

    sget-object v1, Lcom/hcaptcha/sdk/HCaptchaSize;->INVISIBLE:Lcom/hcaptcha/sdk/HCaptchaSize;

    invoke-virtual {p1, v1}, Lcom/hcaptcha/sdk/HCaptchaConfig$a;->r(Lcom/hcaptcha/sdk/HCaptchaSize;)Lcom/hcaptcha/sdk/HCaptchaConfig$a;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/hcaptcha/sdk/HCaptchaConfig$a;->j(Ljava/lang/Boolean;)Lcom/hcaptcha/sdk/HCaptchaConfig$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig$a;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->k:Lcom/hcaptcha/sdk/HCaptchaConfig;

    new-instance v1, Lcom/hcaptcha/sdk/g;

    iget-object v2, p0, Lcom/hcaptcha/sdk/HCaptcha;->i:Landroidx/fragment/app/FragmentActivity;

    iget-object v3, p0, Lcom/hcaptcha/sdk/HCaptcha;->l:Lcom/hcaptcha/sdk/i;

    invoke-direct {v1, v2, p1, v3, v0}, Lcom/hcaptcha/sdk/g;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/HCaptchaStateListener;)V

    iput-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hcaptcha/sdk/HCaptcha;->l:Lcom/hcaptcha/sdk/i;

    invoke-static {p1, v1, v0}, Lcom/hcaptcha/sdk/f;->Y(Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/i;Lcom/hcaptcha/sdk/HCaptchaStateListener;)Lcom/hcaptcha/sdk/f;

    move-result-object v0

    iput-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptcha;->k:Lcom/hcaptcha/sdk/HCaptchaConfig;

    :goto_0
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "siteKey is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->k:Lcom/hcaptcha/sdk/HCaptchaConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaConfig;->getSiteKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha;->f(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptcha;

    :cond_1
    invoke-direct {p0}, Lcom/hcaptcha/sdk/HCaptcha;->C()Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/hcaptcha/sdk/HCaptcha;
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptcha;->j:Lcom/hcaptcha/sdk/p;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptcha;->a()Lcom/hcaptcha/sdk/HCaptcha;

    :cond_0
    invoke-direct {p0}, Lcom/hcaptcha/sdk/HCaptcha;->C()Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptcha;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Llombok/NonNull;
        .end annotation
    .end param

    const-string v0, "siteKey is marked non-null but is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/hcaptcha/sdk/HCaptchaConfig;->builder()Lcom/hcaptcha/sdk/HCaptchaConfig$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hcaptcha/sdk/HCaptchaConfig$a;->q(Ljava/lang/String;)Lcom/hcaptcha/sdk/HCaptchaConfig$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/HCaptchaConfig$a;->c()Lcom/hcaptcha/sdk/HCaptchaConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hcaptcha/sdk/HCaptcha;->c(Lcom/hcaptcha/sdk/HCaptchaConfig;)Lcom/hcaptcha/sdk/HCaptcha;

    move-result-object p1

    return-object p1
.end method
