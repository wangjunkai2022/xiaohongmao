.class public abstract Lcom/hcaptcha/sdk/tasks/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private d:Lcom/hcaptcha/sdk/HCaptchaException;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hcaptcha/sdk/tasks/d<",
            "TTResult;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hcaptcha/sdk/tasks/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hcaptcha/sdk/tasks/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->h:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->p()V

    return-void
.end method

.method public static synthetic g(Lcom/hcaptcha/sdk/tasks/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/tasks/e;->f:Ljava/util/List;

    return-object p0
.end method

.method private p()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hcaptcha/sdk/tasks/e;->a:Z

    iput-boolean v0, p0, Lcom/hcaptcha/sdk/tasks/e;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->d:Lcom/hcaptcha/sdk/HCaptchaException;

    return-void
.end method

.method private t()V
    .locals 4

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/tasks/e;->m()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcaptcha/sdk/tasks/d;

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/tasks/e;->m()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hcaptcha/sdk/tasks/d;->onSuccess(Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/tasks/e;->l()Lcom/hcaptcha/sdk/HCaptchaException;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hcaptcha/sdk/tasks/a;

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/tasks/e;->l()Lcom/hcaptcha/sdk/HCaptchaException;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/hcaptcha/sdk/tasks/a;->J(Lcom/hcaptcha/sdk/HCaptchaException;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->p()V

    :cond_2
    return-void
.end method


# virtual methods
.method public h(Lcom/hcaptcha/sdk/tasks/a;)Lcom/hcaptcha/sdk/tasks/e;
    .locals 1
    .param p1    # Lcom/hcaptcha/sdk/tasks/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcaptcha/sdk/tasks/a;",
            ")",
            "Lcom/hcaptcha/sdk/tasks/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->t()V

    return-object p0
.end method

.method public i(Lcom/hcaptcha/sdk/tasks/c;)Lcom/hcaptcha/sdk/tasks/e;
    .locals 1
    .param p1    # Lcom/hcaptcha/sdk/tasks/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcaptcha/sdk/tasks/c;",
            ")",
            "Lcom/hcaptcha/sdk/tasks/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->t()V

    return-object p0
.end method

.method public j(Lcom/hcaptcha/sdk/tasks/d;)Lcom/hcaptcha/sdk/tasks/e;
    .locals 1
    .param p1    # Lcom/hcaptcha/sdk/tasks/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hcaptcha/sdk/tasks/d<",
            "TTResult;>;)",
            "Lcom/hcaptcha/sdk/tasks/e<",
            "TTResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->t()V

    return-object p0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hcaptcha/sdk/tasks/c;

    invoke-interface {v1}, Lcom/hcaptcha/sdk/tasks/c;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l()Lcom/hcaptcha/sdk/HCaptchaException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->d:Lcom/hcaptcha/sdk/HCaptchaException;

    return-object v0
.end method

.method public m()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hcaptcha/sdk/tasks/e;->a:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hcaptcha/sdk/tasks/e;->b:Z

    return v0
.end method

.method public q(J)V
    .locals 3

    iget-object v0, p0, Lcom/hcaptcha/sdk/tasks/e;->h:Landroid/os/Handler;

    new-instance v1, Lcom/hcaptcha/sdk/tasks/e$a;

    invoke-direct {v1, p0}, Lcom/hcaptcha/sdk/tasks/e$a;-><init>(Lcom/hcaptcha/sdk/tasks/e;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public r(Lcom/hcaptcha/sdk/HCaptchaException;)V
    .locals 0
    .param p1    # Lcom/hcaptcha/sdk/HCaptchaException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/hcaptcha/sdk/tasks/e;->d:Lcom/hcaptcha/sdk/HCaptchaException;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/tasks/e;->b:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/tasks/e;->a:Z

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->t()V

    return-void
.end method

.method public s(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hcaptcha/sdk/tasks/e;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/tasks/e;->b:Z

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/tasks/e;->a:Z

    invoke-direct {p0}, Lcom/hcaptcha/sdk/tasks/e;->t()V

    return-void
.end method
