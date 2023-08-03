.class public Lcom/posthog/android/PostHog$j;
.super Ljava/lang/Object;
.source "PostHog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/android/PostHog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:I

.field private f:J

.field private g:Lcom/posthog/android/k;

.field private h:Ljava/lang/String;

.field private i:Lcom/posthog/android/PostHog$LogLevel;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Lcom/posthog/android/d;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/android/j;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lcom/posthog/android/e;

.field private r:Lcom/posthog/android/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "https://app.posthog.com"

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/posthog/android/PostHog$j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->d:Z

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Lcom/posthog/android/PostHog$j;->e:I

    const-wide/16 v0, 0x7530

    .line 5
    iput-wide v0, p0, Lcom/posthog/android/PostHog$j;->f:J

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->n:Z

    .line 7
    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->o:Z

    .line 8
    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->p:Z

    if-eqz p1, :cond_3

    const-string v0, "android.permission.INTERNET"

    .line 9
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->r(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    .line 11
    invoke-static {p2}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 12
    iput-object p2, p0, Lcom/posthog/android/PostHog$j;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/posthog/android/PostHog$j;->c:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "apiKey must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Application context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "INTERNET permission is required."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/posthog/android/PostHog;
    .locals 32

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->b:Ljava/lang/String;

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v2, Lcom/posthog/android/PostHog;->D:Ljava/util/List;

    monitor-enter v2

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->g:Lcom/posthog/android/k;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lcom/posthog/android/k;

    invoke-direct {v0}, Lcom/posthog/android/k;-><init>()V

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->g:Lcom/posthog/android/k;

    .line 9
    :cond_1
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->i:Lcom/posthog/android/PostHog$LogLevel;

    if-nez v0, :cond_2

    .line 10
    sget-object v0, Lcom/posthog/android/PostHog$LogLevel;->NONE:Lcom/posthog/android/PostHog$LogLevel;

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->i:Lcom/posthog/android/PostHog$LogLevel;

    .line 11
    :cond_2
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->j:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Lcom/posthog/android/internal/Utils$a;

    invoke-direct {v0}, Lcom/posthog/android/internal/Utils$a;-><init>()V

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->j:Ljava/util/concurrent/ExecutorService;

    .line 13
    :cond_3
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->l:Lcom/posthog/android/d;

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Lcom/posthog/android/d;

    invoke-direct {v0}, Lcom/posthog/android/d;-><init>()V

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->l:Lcom/posthog/android/d;

    .line 15
    :cond_4
    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->q:Lcom/posthog/android/e;

    if-nez v0, :cond_5

    .line 16
    invoke-static {}, Lcom/posthog/android/e;->c()Lcom/posthog/android/e;

    move-result-object v0

    iput-object v0, v1, Lcom/posthog/android/PostHog$j;->q:Lcom/posthog/android/e;

    .line 17
    :cond_5
    new-instance v5, Lcom/posthog/android/v;

    invoke-direct {v5}, Lcom/posthog/android/v;-><init>()V

    .line 18
    sget-object v13, Lcom/posthog/android/b;->c:Lcom/posthog/android/b;

    .line 19
    new-instance v12, Lcom/posthog/android/c;

    iget-object v0, v1, Lcom/posthog/android/PostHog$j;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->c:Ljava/lang/String;

    iget-object v3, v1, Lcom/posthog/android/PostHog$j;->l:Lcom/posthog/android/d;

    invoke-direct {v12, v0, v2, v3}, Lcom/posthog/android/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/android/d;)V

    .line 20
    new-instance v0, Lcom/posthog/android/a;

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    iget-object v3, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    .line 21
    invoke-static {v2, v3}, Lcom/posthog/android/internal/Utils;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "opt-out"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/posthog/android/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 22
    new-instance v6, Lcom/posthog/android/s$a;

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    iget-object v3, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-direct {v6, v2, v13, v3}, Lcom/posthog/android/s$a;-><init>(Landroid/content/Context;Lcom/posthog/android/b;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v6}, Lcom/posthog/android/x$a;->d()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v6}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v2

    if-nez v2, :cond_7

    .line 24
    :cond_6
    invoke-static {}, Lcom/posthog/android/s;->u()Lcom/posthog/android/s;

    move-result-object v2

    .line 25
    invoke-virtual {v6, v2}, Lcom/posthog/android/x$a;->e(Lcom/posthog/android/x;)V

    .line 26
    :cond_7
    new-instance v7, Lcom/posthog/android/m$a;

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    iget-object v3, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-direct {v7, v2, v13, v3}, Lcom/posthog/android/m$a;-><init>(Landroid/content/Context;Lcom/posthog/android/b;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v7}, Lcom/posthog/android/x$a;->d()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v7}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v2

    if-nez v2, :cond_9

    .line 28
    :cond_8
    invoke-static {}, Lcom/posthog/android/m;->s()Lcom/posthog/android/m;

    move-result-object v2

    .line 29
    invoke-virtual {v7, v2}, Lcom/posthog/android/x$a;->e(Lcom/posthog/android/x;)V

    .line 30
    :cond_9
    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->i:Lcom/posthog/android/PostHog$LogLevel;

    invoke-static {v2}, Lcom/posthog/android/i;->g(Lcom/posthog/android/PostHog$LogLevel;)Lcom/posthog/android/i;

    move-result-object v10

    .line 31
    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    .line 32
    invoke-virtual {v6}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v3

    check-cast v3, Lcom/posthog/android/s;

    iget-boolean v4, v1, Lcom/posthog/android/PostHog$j;->d:Z

    invoke-static {v2, v3, v4}, Lcom/posthog/android/o;->t(Landroid/content/Context;Lcom/posthog/android/s;Z)Lcom/posthog/android/o;

    move-result-object v8

    .line 33
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v15, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 34
    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    invoke-virtual {v8, v2, v15, v10}, Lcom/posthog/android/o;->s(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;Lcom/posthog/android/i;)V

    .line 35
    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->m:Ljava/util/List;

    invoke-static {v2}, Lcom/posthog/android/internal/Utils;->s(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    .line 36
    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->k:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_a

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    :cond_a
    move-object/from16 v19, v2

    .line 38
    new-instance v29, Lcom/posthog/android/PostHog;

    move-object/from16 v2, v29

    iget-object v3, v1, Lcom/posthog/android/PostHog$j;->a:Landroid/app/Application;

    iget-object v4, v1, Lcom/posthog/android/PostHog$j;->j:Ljava/util/concurrent/ExecutorService;

    iget-object v9, v1, Lcom/posthog/android/PostHog$j;->g:Lcom/posthog/android/k;

    iget-object v11, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    iget-object v14, v1, Lcom/posthog/android/PostHog$j;->b:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v1, Lcom/posthog/android/PostHog$j;->c:Ljava/lang/String;

    move-object/from16 v21, v16

    move-object/from16 v30, v2

    iget v2, v1, Lcom/posthog/android/PostHog$j;->e:I

    move/from16 v16, v2

    move-object/from16 v31, v3

    iget-wide v2, v1, Lcom/posthog/android/PostHog$j;->f:J

    move-wide/from16 v17, v2

    iget-boolean v2, v1, Lcom/posthog/android/PostHog$j;->n:Z

    move/from16 v20, v2

    iget-boolean v2, v1, Lcom/posthog/android/PostHog$j;->o:Z

    move/from16 v22, v2

    iget-boolean v2, v1, Lcom/posthog/android/PostHog$j;->p:Z

    move/from16 v23, v2

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->q:Lcom/posthog/android/e;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/posthog/android/PostHog$j;->r:Lcom/posthog/android/g;

    move-object/from16 v27, v2

    const/16 v28, 0x0

    move-object/from16 v24, v0

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct/range {v2 .. v28}, Lcom/posthog/android/PostHog;-><init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/v;Lcom/posthog/android/s$a;Lcom/posthog/android/m$a;Lcom/posthog/android/o;Lcom/posthog/android/k;Lcom/posthog/android/i;Ljava/lang/String;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/lang/String;Ljava/lang/String;IJLjava/util/concurrent/ExecutorService;ZLjava/util/concurrent/CountDownLatch;ZZLcom/posthog/android/a;Lcom/posthog/android/e;Ljava/util/List;Lcom/posthog/android/g;Lcom/posthog/android/q;)V

    return-object v29

    .line 39
    :cond_b
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate posthog client created with tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". If you want to use multiple PostHog clients, use a different apiKey or set a tag via the builder during construction."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()Lcom/posthog/android/PostHog$j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->n:Z

    return-object p0
.end method

.method public c()Lcom/posthog/android/PostHog$j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->p:Z

    return-object p0
.end method

.method public d(Z)Lcom/posthog/android/PostHog$j;
    .locals 0

    iput-boolean p1, p0, Lcom/posthog/android/PostHog$j;->d:Z

    return-object p0
.end method

.method public e(Lcom/posthog/android/d;)Lcom/posthog/android/PostHog$j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->l:Lcom/posthog/android/d;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ConnectionFactory must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Lcom/posthog/android/e;)Lcom/posthog/android/PostHog$j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->q:Lcom/posthog/android/e;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Crypto must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/posthog/android/k;)Lcom/posthog/android/PostHog$j;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Lcom/posthog/android/k;

    invoke-direct {v0}, Lcom/posthog/android/k;-><init>()V

    iput-object v0, p0, Lcom/posthog/android/PostHog$j;->g:Lcom/posthog/android/k;

    .line 2
    invoke-virtual {p1}, Lcom/posthog/android/k;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    iget-object v1, p0, Lcom/posthog/android/PostHog$j;->g:Lcom/posthog/android/k;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/posthog/android/k;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/k;

    goto :goto_0

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "defaultOptions must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method h(Ljava/util/concurrent/ExecutorService;)Lcom/posthog/android/PostHog$j;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->k:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public i(JLjava/util/concurrent/TimeUnit;)Lcom/posthog/android/PostHog$j;
    .locals 3

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/posthog/android/PostHog$j;->f:J

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "flushInterval must be greater than zero."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeUnit must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(I)Lcom/posthog/android/PostHog$j;
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/posthog/android/PostHog$j;->e:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "flushQueueSize must be less than or equal to 250."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "flushQueueSize must be greater than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lcom/posthog/android/g;)Lcom/posthog/android/PostHog$j;
    .locals 1

    const-string v0, "integration"

    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/posthog/android/g;

    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->r:Lcom/posthog/android/g;

    return-object p0
.end method

.method public l(Lcom/posthog/android/PostHog$LogLevel;)Lcom/posthog/android/PostHog$j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->i:Lcom/posthog/android/PostHog$LogLevel;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LogLevel must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lcom/posthog/android/j;)Lcom/posthog/android/PostHog$j;
    .locals 1

    const-string v0, "middleware"

    .line 1
    invoke-static {p1, v0}, Lcom/posthog/android/internal/Utils;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/posthog/android/PostHog$j;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/posthog/android/PostHog$j;->m:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/PostHog$j;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/posthog/android/PostHog$j;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Middleware is already registered."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public n(Ljava/util/concurrent/ExecutorService;)Lcom/posthog/android/PostHog$j;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->j:Ljava/util/concurrent/ExecutorService;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Executor service must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o()Lcom/posthog/android/PostHog$j;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/posthog/android/PostHog$j;->o:Z

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/posthog/android/PostHog$j;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/posthog/android/PostHog$j;->h:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tag must not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
