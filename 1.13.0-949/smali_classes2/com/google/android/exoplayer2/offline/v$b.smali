.class final Lcom/google/android/exoplayer2/offline/v$b;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/google/android/exoplayer2/offline/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/exoplayer2/offline/r;

.field private final c:Z

.field private final d:Lcom/google/android/exoplayer2/scheduler/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/v;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/exoplayer2/offline/v;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/r;ZLcom/google/android/exoplayer2/scheduler/e;Ljava/lang/Class;)V
    .locals 0
    .param p4    # Lcom/google/android/exoplayer2/scheduler/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplayer2/offline/r;",
            "Z",
            "Lcom/google/android/exoplayer2/scheduler/e;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplayer2/offline/v;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/offline/v$b;->c:Z

    .line 6
    iput-object p4, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/offline/v$b;->e:Ljava/lang/Class;

    .line 8
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/offline/r;->e(Lcom/google/android/exoplayer2/offline/r$d;)V

    .line 9
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->o()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/r;ZLcom/google/android/exoplayer2/scheduler/e;Ljava/lang/Class;Lcom/google/android/exoplayer2/offline/v$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/offline/v$b;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/offline/r;ZLcom/google/android/exoplayer2/scheduler/e;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic h(Lcom/google/android/exoplayer2/offline/v$b;Lcom/google/android/exoplayer2/offline/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/offline/v$b;->l(Lcom/google/android/exoplayer2/offline/v;)V

    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/offline/v$b;)Lcom/google/android/exoplayer2/offline/r;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    return-object p0
.end method

.method private synthetic l(Lcom/google/android/exoplayer2/offline/v;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/r;->g()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/offline/v;->b(Lcom/google/android/exoplayer2/offline/v;Ljava/util/List;)V

    return-void
.end method

.method private m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$b;->e:Ljava/lang/Class;

    const-string v2, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/v;->h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/z0;->o1(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$b;->e:Ljava/lang/Class;

    const-string v2, "com.google.android.exoplayer.downloadService.action.INIT"

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/offline/v;->h(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DownloadService"

    const-string v1, "Failed to restart DownloadService (process is idle)."

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/exoplayer2/offline/v;->g(Lcom/google/android/exoplayer2/offline/v;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/r;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/offline/r;->m()Lcom/google/android/exoplayer2/scheduler/Requirements;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    const-string v3, "com.google.android.exoplayer.downloadService.action.RESTART"

    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/exoplayer2/scheduler/e;->a(Lcom/google/android/exoplayer2/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DownloadService"

    const-string v1, "Scheduling downloads failed."

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/w;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/scheduler/e;->cancel()Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/offline/r;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/r;->i()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->n()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/r;->g()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/offline/e;

    iget v0, v0, Lcom/google/android/exoplayer2/offline/e;->b:I

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->m()V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->o()V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/offline/e;Ljava/lang/Exception;)V
    .locals 0
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/offline/v;->c(Lcom/google/android/exoplayer2/offline/v;Lcom/google/android/exoplayer2/offline/e;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Lcom/google/android/exoplayer2/offline/e;->b:I

    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/v;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DownloadService"

    const-string p2, "DownloadService wasn\'t running. Restarting."

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/v$b;->m()V

    :cond_1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/offline/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/offline/v;->e(Lcom/google/android/exoplayer2/offline/v;Lcom/google/android/exoplayer2/offline/e;)V

    :cond_0
    return-void
.end method

.method public synthetic d(Lcom/google/android/exoplayer2/offline/r;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/offline/t;->c(Lcom/google/android/exoplayer2/offline/r$d;Lcom/google/android/exoplayer2/offline/r;Z)V

    return-void
.end method

.method public synthetic e(Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/offline/t;->f(Lcom/google/android/exoplayer2/offline/r$d;Lcom/google/android/exoplayer2/offline/r;Lcom/google/android/exoplayer2/scheduler/Requirements;I)V

    return-void
.end method

.method public final f(Lcom/google/android/exoplayer2/offline/r;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/offline/v;->f(Lcom/google/android/exoplayer2/offline/v;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/google/android/exoplayer2/offline/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/r;->g()Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/offline/v;->b(Lcom/google/android/exoplayer2/offline/v;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public j(Lcom/google/android/exoplayer2/offline/v;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/offline/r;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/z0;->B()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/offline/w;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/offline/w;-><init>(Lcom/google/android/exoplayer2/offline/v$b;Lcom/google/android/exoplayer2/offline/v;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public k(Lcom/google/android/exoplayer2/offline/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->f:Lcom/google/android/exoplayer2/offline/v;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->b:Lcom/google/android/exoplayer2/offline/r;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/offline/r;->q()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/offline/v$b;->d:Lcom/google/android/exoplayer2/scheduler/e;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/scheduler/e;->cancel()Z

    :cond_1
    return-void
.end method
