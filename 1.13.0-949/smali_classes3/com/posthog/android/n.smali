.class Lcom/posthog/android/n;
.super Ljava/lang/Object;
.source "PostHogActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/n$b;
    }
.end annotation


# instance fields
.field private a:Lcom/posthog/android/PostHog;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/content/pm/PackageInfo;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>(Lcom/posthog/android/PostHog;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/pm/PackageInfo;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/posthog/android/n;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/posthog/android/n;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/posthog/android/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/posthog/android/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-object p1, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    .line 8
    iput-object p2, p0, Lcom/posthog/android/n;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    iput-object p3, p0, Lcom/posthog/android/n;->c:Ljava/lang/Boolean;

    .line 10
    iput-object p4, p0, Lcom/posthog/android/n;->d:Ljava/lang/Boolean;

    .line 11
    iput-object p5, p0, Lcom/posthog/android/n;->e:Ljava/lang/Boolean;

    .line 12
    iput-object p6, p0, Lcom/posthog/android/n;->f:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/posthog/android/PostHog;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/pm/PackageInfo;Lcom/posthog/android/n$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/posthog/android/n;-><init>(Lcom/posthog/android/PostHog;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Landroid/content/pm/PackageInfo;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1, p2}, Lcom/posthog/android/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/posthog/android/h;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    .line 2
    iget-object p2, p0, Lcom/posthog/android/n;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/posthog/android/n;->c:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 4
    iget-object p2, p0, Lcom/posthog/android/n;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    iget-object p2, p0, Lcom/posthog/android/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object p2, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-virtual {p2}, Lcom/posthog/android/PostHog;->h()V

    .line 7
    iget-object p2, p0, Lcom/posthog/android/n;->d:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p2, Lcom/posthog/android/s;

    invoke-direct {p2}, Lcom/posthog/android/s;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-virtual {p2, v1, v2}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p2, v0, p1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    const-string v0, "Deep Link Opened"

    invoke-virtual {p1, v0, p2}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    nop

    :cond_4
    :goto_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1}, Lcom/posthog/android/h;->f(Landroid/app/Activity;)Lcom/posthog/android/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1}, Lcom/posthog/android/h;->g(Landroid/app/Activity;)Lcom/posthog/android/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1}, Lcom/posthog/android/h;->h(Landroid/app/Activity;)Lcom/posthog/android/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    .line 2
    iget-object p1, p0, Lcom/posthog/android/n;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/posthog/android/n;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/posthog/android/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/posthog/android/s;

    invoke-direct {p1}, Lcom/posthog/android/s;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/posthog/android/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/posthog/android/n;->f:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "version"

    .line 8
    invoke-virtual {p1, v2, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v1

    iget-object v2, p0, Lcom/posthog/android/n;->f:Landroid/content/pm/PackageInfo;

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "build"

    invoke-virtual {v1, v3, v2}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/posthog/android/n;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "from_background"

    invoke-virtual {p1, v1, v0}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    .line 11
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    const-string v1, "Application Opened"

    invoke-virtual {v0, v1, p1}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    :cond_1
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1, p2}, Lcom/posthog/android/h;->i(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/posthog/android/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/n;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->J(Landroid/app/Activity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1}, Lcom/posthog/android/h;->j(Landroid/app/Activity;)Lcom/posthog/android/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    invoke-static {p1}, Lcom/posthog/android/h;->k(Landroid/app/Activity;)Lcom/posthog/android/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    .line 2
    iget-object v0, p0, Lcom/posthog/android/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object p1, p0, Lcom/posthog/android/n;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/posthog/android/n;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/posthog/android/n;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/posthog/android/n;->a:Lcom/posthog/android/PostHog;

    const-string v0, "Application Backgrounded"

    invoke-virtual {p1, v0}, Lcom/posthog/android/PostHog;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
