.class public Lcom/posthog/android/PostHog;
.super Ljava/lang/Object;
.source "PostHog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/android/PostHog$j;,
        Lcom/posthog/android/PostHog$LogLevel;
    }
.end annotation


# static fields
.field static final A:Ljava/lang/String; = "posthog_api_key"

.field static final B:Ljava/lang/String; = "posthog_host"

.field static final C:Ljava/lang/String; = "https://app.posthog.com"

.field static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static volatile E:Lcom/posthog/android/PostHog; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field static final F:Lcom/posthog/android/s;

.field private static final G:Ljava/lang/String; = "version"

.field private static final H:Ljava/lang/String; = "build"

.field private static final I:Ljava/lang/String; = "properties"

.field private static final J:Ljava/lang/String; = "send_feature_flags"

.field static final y:Landroid/os/Handler;

.field static final z:Ljava/lang/String; = "opt-out"


# instance fields
.field private final a:Landroid/app/Application;

.field final b:Ljava/util/concurrent/ExecutorService;

.field final c:Lcom/posthog/android/v;

.field private final d:Ljava/util/List;
    .annotation build La/f0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/android/j;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/posthog/android/k;

.field final f:Lcom/posthog/android/s$a;

.field final g:Lcom/posthog/android/m$a;

.field final h:Lcom/posthog/android/o;

.field private final i:Lcom/posthog/android/i;

.field final j:Ljava/lang/String;

.field final k:Lcom/posthog/android/c;

.field final l:Lcom/posthog/android/b;

.field final m:Lcom/posthog/android/e;

.field final n:Landroid/app/Application$ActivityLifecycleCallbacks;

.field final o:Ljava/lang/String;

.field final p:Ljava/lang/String;

.field final q:I

.field final r:J

.field private final s:Ljava/util/concurrent/CountDownLatch;

.field private final t:Ljava/util/concurrent/ExecutorService;

.field private final u:Lcom/posthog/android/a;

.field private final v:Lcom/posthog/android/g;

.field private final w:Lcom/posthog/android/q;

.field volatile x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/posthog/android/PostHog$a;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/posthog/android/PostHog$a;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/posthog/android/PostHog;->y:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/posthog/android/PostHog;->D:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    .line 5
    new-instance v0, Lcom/posthog/android/s;

    invoke-direct {v0}, Lcom/posthog/android/s;-><init>()V

    sput-object v0, Lcom/posthog/android/PostHog;->F:Lcom/posthog/android/s;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Ljava/util/concurrent/ExecutorService;Lcom/posthog/android/v;Lcom/posthog/android/s$a;Lcom/posthog/android/m$a;Lcom/posthog/android/o;Lcom/posthog/android/k;Lcom/posthog/android/i;Ljava/lang/String;Lcom/posthog/android/c;Lcom/posthog/android/b;Ljava/lang/String;Ljava/lang/String;IJLjava/util/concurrent/ExecutorService;ZLjava/util/concurrent/CountDownLatch;ZZLcom/posthog/android/a;Lcom/posthog/android/e;Ljava/util/List;Lcom/posthog/android/g;Lcom/posthog/android/q;)V
    .locals 8
    .param p8    # Lcom/posthog/android/i;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p24    # Ljava/util/List;
        .annotation build La/f0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/posthog/android/v;",
            "Lcom/posthog/android/s$a;",
            "Lcom/posthog/android/m$a;",
            "Lcom/posthog/android/o;",
            "Lcom/posthog/android/k;",
            "Lcom/posthog/android/i;",
            "Ljava/lang/String;",
            "Lcom/posthog/android/c;",
            "Lcom/posthog/android/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/util/concurrent/ExecutorService;",
            "Z",
            "Ljava/util/concurrent/CountDownLatch;",
            "ZZ",
            "Lcom/posthog/android/a;",
            "Lcom/posthog/android/e;",
            "Ljava/util/List<",
            "Lcom/posthog/android/j;",
            ">;",
            "Lcom/posthog/android/g;",
            "Lcom/posthog/android/q;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p17

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    move-object v6, p2

    .line 3
    iput-object v6, v0, Lcom/posthog/android/PostHog;->b:Ljava/util/concurrent/ExecutorService;

    move-object v6, p3

    .line 4
    iput-object v6, v0, Lcom/posthog/android/PostHog;->c:Lcom/posthog/android/v;

    move-object v6, p4

    .line 5
    iput-object v6, v0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    move-object v6, p5

    .line 6
    iput-object v6, v0, Lcom/posthog/android/PostHog;->g:Lcom/posthog/android/m$a;

    move-object v6, p6

    .line 7
    iput-object v6, v0, Lcom/posthog/android/PostHog;->h:Lcom/posthog/android/o;

    move-object v6, p7

    .line 8
    iput-object v6, v0, Lcom/posthog/android/PostHog;->e:Lcom/posthog/android/k;

    .line 9
    iput-object v2, v0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    .line 10
    iput-object v3, v0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    .line 11
    iput-object v4, v0, Lcom/posthog/android/PostHog;->k:Lcom/posthog/android/c;

    move-object/from16 v6, p11

    .line 12
    iput-object v6, v0, Lcom/posthog/android/PostHog;->l:Lcom/posthog/android/b;

    move-object/from16 v6, p12

    .line 13
    iput-object v6, v0, Lcom/posthog/android/PostHog;->o:Ljava/lang/String;

    move-object/from16 v6, p13

    .line 14
    iput-object v6, v0, Lcom/posthog/android/PostHog;->p:Ljava/lang/String;

    move/from16 v6, p14

    .line 15
    iput v6, v0, Lcom/posthog/android/PostHog;->q:I

    move-wide/from16 v6, p15

    .line 16
    iput-wide v6, v0, Lcom/posthog/android/PostHog;->r:J

    move-object/from16 v6, p19

    .line 17
    iput-object v6, v0, Lcom/posthog/android/PostHog;->s:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v6, p22

    .line 18
    iput-object v6, v0, Lcom/posthog/android/PostHog;->u:Lcom/posthog/android/a;

    .line 19
    iput-object v5, v0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v6, p23

    .line 20
    iput-object v6, v0, Lcom/posthog/android/PostHog;->m:Lcom/posthog/android/e;

    move-object/from16 v6, p24

    .line 21
    iput-object v6, v0, Lcom/posthog/android/PostHog;->d:Ljava/util/List;

    if-eqz p25, :cond_0

    move-object/from16 v6, p25

    goto :goto_0

    .line 22
    :cond_0
    sget-object v6, Lcom/posthog/android/r;->n:Lcom/posthog/android/g$a;

    invoke-interface {v6, p0}, Lcom/posthog/android/g$a;->b(Lcom/posthog/android/PostHog;)Lcom/posthog/android/g;

    move-result-object v6

    :goto_0
    iput-object v6, v0, Lcom/posthog/android/PostHog;->v:Lcom/posthog/android/g;

    if-nez p26, :cond_1

    .line 23
    new-instance v6, Lcom/posthog/android/q$b;

    invoke-direct {v6}, Lcom/posthog/android/q$b;-><init>()V

    .line 24
    invoke-virtual {v6, p0}, Lcom/posthog/android/q$b;->d(Lcom/posthog/android/PostHog;)Lcom/posthog/android/q$b;

    move-result-object v6

    .line 25
    invoke-virtual {v6, v2}, Lcom/posthog/android/q$b;->c(Lcom/posthog/android/i;)Lcom/posthog/android/q$b;

    move-result-object v6

    .line 26
    invoke-virtual {v6, v4}, Lcom/posthog/android/q$b;->b(Lcom/posthog/android/c;)Lcom/posthog/android/q$b;

    move-result-object v4

    .line 27
    invoke-virtual {v4}, Lcom/posthog/android/q$b;->a()Lcom/posthog/android/q;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object/from16 v4, p26

    .line 28
    :goto_1
    iput-object v4, v0, Lcom/posthog/android/PostHog;->w:Lcom/posthog/android/q;

    .line 29
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->G()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const-string v3, "Created posthog client for project with tag:%s."

    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/posthog/android/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    new-instance v2, Lcom/posthog/android/n$b;

    invoke-direct {v2}, Lcom/posthog/android/n$b;-><init>()V

    .line 32
    invoke-virtual {v2, p0}, Lcom/posthog/android/n$b;->d(Lcom/posthog/android/PostHog;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v5}, Lcom/posthog/android/n$b;->e(Ljava/util/concurrent/ExecutorService;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 34
    invoke-static/range {p18 .. p18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/posthog/android/n$b;->f(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 35
    invoke-static/range {p21 .. p21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/posthog/android/n$b;->b(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 36
    invoke-static/range {p20 .. p20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/posthog/android/n$b;->g(Ljava/lang/Boolean;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 37
    invoke-static {p1}, Lcom/posthog/android/PostHog;->t(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/posthog/android/n$b;->c(Landroid/content/pm/PackageInfo;)Lcom/posthog/android/n$b;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/posthog/android/n$b;->a()Lcom/posthog/android/n;

    move-result-object v2

    iput-object v2, v0, Lcom/posthog/android/PostHog;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 39
    invoke-virtual {p1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private G()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/posthog/android/internal/Utils;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/posthog/android/a;

    const-string v2, "namespaceSharedPreferences"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/posthog/android/a;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {v1}, Lcom/posthog/android/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    const-string v3, "posthog-android"

    const/4 v4, 0x0

    .line 5
    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6
    invoke-static {v2, v0}, Lcom/posthog/android/internal/Utils;->g(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 7
    invoke-virtual {v1, v4}, Lcom/posthog/android/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public static R(Lcom/posthog/android/PostHog;)V
    .locals 2

    .line 1
    const-class v0, Lcom/posthog/android/PostHog;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    if-nez v1, :cond_0

    .line 3
    sput-object p0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Singleton instance already exists."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private T()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/posthog/android/PostHog;->s:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xf

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    iget-object v2, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Thread interrupted while waiting for advertising ID."

    invoke-virtual {v2, v1, v4, v3}, Lcom/posthog/android/i;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/posthog/android/PostHog;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    iget-object v1, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Advertising ID may not be collected because the API did not respond within 15 seconds."

    invoke-virtual {v1, v2, v0}, Lcom/posthog/android/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static U(Landroid/content/Context;)Lcom/posthog/android/PostHog;
    .locals 4

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    if-nez v0, :cond_4

    if-eqz p0, :cond_3

    .line 2
    const-class v0, Lcom/posthog/android/PostHog;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    if-nez v1, :cond_2

    const-string v1, "posthog_api_key"

    .line 4
    invoke-static {p0, v1}, Lcom/posthog/android/internal/Utils;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "posthog_host"

    .line 5
    invoke-static {p0, v2}, Lcom/posthog/android/internal/Utils;->n(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/posthog/android/PostHog$j;

    invoke-direct {v3, p0, v1, v2}, Lcom/posthog/android/PostHog$j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    sget-object p0, Lcom/posthog/android/PostHog$LogLevel;->INFO:Lcom/posthog/android/PostHog$LogLevel;

    invoke-virtual {v3, p0}, Lcom/posthog/android/PostHog$j;->l(Lcom/posthog/android/PostHog$LogLevel;)Lcom/posthog/android/PostHog$j;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/posthog/android/PostHog$j;->a()Lcom/posthog/android/PostHog;

    move-result-object p0

    sput-object p0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    .line 11
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_4
    :goto_0
    sget-object p0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    return-object p0
.end method

.method static synthetic a(Lcom/posthog/android/PostHog;)Lcom/posthog/android/q;
    .locals 0

    iget-object p0, p0, Lcom/posthog/android/PostHog;->w:Lcom/posthog/android/q;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/posthog/android/PostHog;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enqueue messages after client is shutdown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static t(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/posthog/android/s;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/posthog/android/PostHog;->B(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public B(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Lcom/posthog/android/k;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/posthog/android/internal/Utils;->y(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either distinctId or some properties must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/PostHog$c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/posthog/android/PostHog$c;-><init>(Lcom/posthog/android/PostHog;Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 5
    iget-object p2, p0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {p2}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object p2

    check-cast p2, Lcom/posthog/android/s;

    .line 6
    invoke-virtual {p2}, Lcom/posthog/android/s;->w()Ljava/lang/String;

    move-result-object p2

    if-eq p2, p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/posthog/android/PostHog;->K()V

    :cond_2
    return-void
.end method

.method public C(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/posthog/android/PostHog;->E(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/posthog/android/PostHog;->E(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/PostHog;->w:Lcom/posthog/android/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/posthog/android/q;->e(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public F(Ljava/lang/String;)Lcom/posthog/android/i;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    invoke-virtual {v0, p1}, Lcom/posthog/android/i;->e(Ljava/lang/String;)Lcom/posthog/android/i;

    move-result-object p1

    return-object p1
.end method

.method public H(Z)V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->u:Lcom/posthog/android/a;

    invoke-virtual {v0, p1}, Lcom/posthog/android/a;->b(Z)V

    return-void
.end method

.method I(Lcom/posthog/android/h;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/posthog/android/PostHog;->v:Lcom/posthog/android/g;

    invoke-virtual {p1, v2}, Lcom/posthog/android/h;->l(Lcom/posthog/android/g;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 4
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 5
    iget-object v4, p0, Lcom/posthog/android/PostHog;->c:Lcom/posthog/android/v;

    invoke-virtual {v4, v0, v1}, Lcom/posthog/android/v;->c(J)V

    .line 6
    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "Ran %s in %d ns."

    invoke-virtual {v0, p1, v1}, Lcom/posthog/android/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method J(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/posthog/android/PostHog;->O(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity Not Found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public K()V
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->w:Lcom/posthog/android/q;

    invoke-virtual {v0}, Lcom/posthog/android/q;->h()V

    return-void
.end method

.method public L()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/posthog/android/internal/Utils;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "properties-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5
    iget-object v0, p0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-static {}, Lcom/posthog/android/s;->u()Lcom/posthog/android/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/posthog/android/x$a;->e(Lcom/posthog/android/x;)V

    .line 7
    sget-object v0, Lcom/posthog/android/h;->b:Lcom/posthog/android/h;

    invoke-virtual {p0, v0}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void
.end method

.method M(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Running payload %s."

    invoke-virtual {v0, v3, v2}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/posthog/android/PostHog$i;->a:[I

    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->A()Lcom/posthog/android/payloads/BasePayload$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    check-cast p1, Lcom/posthog/android/payloads/c;

    invoke-static {p1}, Lcom/posthog/android/h;->c(Lcom/posthog/android/payloads/c;)Lcom/posthog/android/h;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload;->A()Lcom/posthog/android/payloads/BasePayload$Type;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 5
    :cond_1
    check-cast p1, Lcom/posthog/android/payloads/e;

    invoke-static {p1}, Lcom/posthog/android/h;->m(Lcom/posthog/android/payloads/e;)Lcom/posthog/android/h;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    check-cast p1, Lcom/posthog/android/payloads/b;

    invoke-static {p1}, Lcom/posthog/android/h;->b(Lcom/posthog/android/payloads/b;)Lcom/posthog/android/h;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_3
    check-cast p1, Lcom/posthog/android/payloads/a;

    invoke-static {p1}, Lcom/posthog/android/h;->a(Lcom/posthog/android/payloads/a;)Lcom/posthog/android/h;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_4
    check-cast p1, Lcom/posthog/android/payloads/d;

    invoke-static {p1}, Lcom/posthog/android/h;->d(Lcom/posthog/android/payloads/d;)Lcom/posthog/android/h;

    move-result-object p1

    .line 9
    :goto_0
    sget-object v0, Lcom/posthog/android/PostHog;->y:Landroid/os/Handler;

    new-instance v1, Lcom/posthog/android/PostHog$h;

    invoke-direct {v1, p0, p1}, Lcom/posthog/android/PostHog$h;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method N(Lcom/posthog/android/h;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/posthog/android/PostHog;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/PostHog$b;

    invoke-direct {v1, p0, p1}, Lcom/posthog/android/PostHog$b;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/posthog/android/PostHog;->Q(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public P(Ljava/lang/String;Lcom/posthog/android/s;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/posthog/android/PostHog;->Q(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public Q(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Lcom/posthog/android/k;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/PostHog$e;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/posthog/android/PostHog$e;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Lcom/posthog/android/s;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name must be provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public S()V
    .locals 2

    .line 1
    sget-object v0, Lcom/posthog/android/PostHog;->E:Lcom/posthog/android/PostHog;

    if-eq p0, v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/posthog/android/PostHog;->x:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/posthog/android/PostHog;->n:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 5
    iget-object v0, p0, Lcom/posthog/android/PostHog;->b:Ljava/util/concurrent/ExecutorService;

    instance-of v1, v0, Lcom/posthog/android/internal/Utils$a;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->c:Lcom/posthog/android/v;

    invoke-virtual {v0}, Lcom/posthog/android/v;->f()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/posthog/android/PostHog;->x:Z

    .line 9
    sget-object v0, Lcom/posthog/android/PostHog;->D:Ljava/util/List;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 12
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Default singleton instance cannot be shutdown."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/posthog/android/PostHog;->c(Ljava/lang/String;Lcom/posthog/android/k;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/posthog/android/k;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/k;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/PostHog$f;

    invoke-direct {v1, p0, p2, p1}, Lcom/posthog/android/PostHog$f;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newId must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/posthog/android/PostHog;->g(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public f(Ljava/lang/String;Lcom/posthog/android/s;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/posthog/android/PostHog;->g(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Lcom/posthog/android/k;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/posthog/android/PostHog$d;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/posthog/android/PostHog$d;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Lcom/posthog/android/s;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method h()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/posthog/android/PostHog;->t(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    iget-object v2, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    iget-object v3, p0, Lcom/posthog/android/PostHog;->j:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/posthog/android/internal/Utils;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "version"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "build"

    const/4 v6, -0x1

    .line 6
    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 7
    new-instance v4, Lcom/posthog/android/s;

    invoke-direct {v4}, Lcom/posthog/android/s;-><init>()V

    .line 8
    invoke-virtual {v4, v3, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v4

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v4

    const-string v6, "Application Installed"

    .line 10
    invoke-virtual {p0, v6, v4}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    goto :goto_0

    :cond_0
    if-eq v0, v7, :cond_1

    .line 11
    new-instance v6, Lcom/posthog/android/s;

    invoke-direct {v6}, Lcom/posthog/android/s;-><init>()V

    .line 12
    invoke-virtual {v6, v3, v1}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v6

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v6

    const-string v8, "previous_version"

    .line 14
    invoke-virtual {v6, v8, v4}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v4

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "previous_build"

    invoke-virtual {v4, v7, v6}, Lcom/posthog/android/s;->F(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/s;

    move-result-object v4

    const-string v6, "Application Updated"

    .line 16
    invoke-virtual {p0, v6, v4}, Lcom/posthog/android/PostHog;->f(Ljava/lang/String;Lcom/posthog/android/s;)V

    .line 17
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 18
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 20
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method i(Lcom/posthog/android/payloads/BasePayload;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->u:Lcom/posthog/android/a;

    invoke-virtual {v0}, Lcom/posthog/android/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Created payload %s."

    invoke-virtual {v0, v3, v1}, Lcom/posthog/android/i;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/posthog/android/u;

    iget-object v1, p0, Lcom/posthog/android/PostHog;->d:Ljava/util/List;

    invoke-direct {v0, v2, p1, v1, p0}, Lcom/posthog/android/u;-><init>(ILcom/posthog/android/payloads/BasePayload;Ljava/util/List;Lcom/posthog/android/PostHog;)V

    .line 4
    invoke-interface {v0, p1}, Lcom/posthog/android/j$a;->b(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method j(Lcom/posthog/android/payloads/BasePayload$a;Lcom/posthog/android/k;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/android/payloads/BasePayload$a<",
            "**>;",
            "Lcom/posthog/android/k;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->T()V

    .line 2
    new-instance v0, Lcom/posthog/android/o;

    iget-object v1, p0, Lcom/posthog/android/PostHog;->h:Lcom/posthog/android/o;

    invoke-direct {v0, v1}, Lcom/posthog/android/o;-><init>(Ljava/util/Map;)V

    .line 3
    invoke-virtual {p2}, Lcom/posthog/android/k;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/posthog/android/x;->n(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/posthog/android/o;->F()Lcom/posthog/android/o;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/s;

    .line 7
    invoke-virtual {p1, p2}, Lcom/posthog/android/payloads/BasePayload$a;->c(Ljava/util/Map;)Lcom/posthog/android/payloads/BasePayload$a;

    .line 8
    invoke-virtual {v0}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/posthog/android/payloads/BasePayload$a;->a(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$a;

    .line 9
    invoke-virtual {v0}, Lcom/posthog/android/s;->w()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p2}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p1, p2}, Lcom/posthog/android/payloads/BasePayload$a;->d(Ljava/lang/String;)Lcom/posthog/android/payloads/BasePayload$a;

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/posthog/android/payloads/BasePayload$a;->b()Lcom/posthog/android/payloads/BasePayload;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/posthog/android/PostHog;->i(Lcom/posthog/android/payloads/BasePayload;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/posthog/android/PostHog;->x:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/posthog/android/h;->a:Lcom/posthog/android/h;

    invoke-virtual {p0, v0}, Lcom/posthog/android/PostHog;->N(Lcom/posthog/android/h;)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot enqueue messages after client is shutdown."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->f:Lcom/posthog/android/s$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/s;

    .line 2
    invoke-virtual {v0}, Lcom/posthog/android/s;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->a:Landroid/app/Application;

    return-object v0
.end method

.method public n(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/posthog/android/PostHog;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build La/g0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/posthog/android/PostHog;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build La/g0;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/posthog/android/PostHog;->w:Lcom/posthog/android/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/posthog/android/q;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q()Lcom/posthog/android/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/posthog/android/PostHog;->g:Lcom/posthog/android/m$a;

    invoke-virtual {v0}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v0

    check-cast v0, Lcom/posthog/android/m;

    invoke-virtual {v0}, Lcom/posthog/android/m;->u()Lcom/posthog/android/x;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/posthog/android/x;

    invoke-direct {v0}, Lcom/posthog/android/x;-><init>()V

    return-object v0
.end method

.method public r()Lcom/posthog/android/PostHog$LogLevel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    iget-object v0, v0, Lcom/posthog/android/i;->a:Lcom/posthog/android/PostHog$LogLevel;

    return-object v0
.end method

.method public s()Lcom/posthog/android/i;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->i:Lcom/posthog/android/i;

    return-object v0
.end method

.method public u()Lcom/posthog/android/o;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->h:Lcom/posthog/android/o;

    return-object v0
.end method

.method public v()Lcom/posthog/android/w;
    .locals 1

    iget-object v0, p0, Lcom/posthog/android/PostHog;->c:Lcom/posthog/android/v;

    invoke-virtual {v0}, Lcom/posthog/android/v;->a()Lcom/posthog/android/w;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/posthog/android/PostHog;->x(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param
    .param p3    # Lcom/posthog/android/s;
        .annotation build La/g0;
        .end annotation
    .end param
    .param p4    # Lcom/posthog/android/k;
        .annotation build La/g0;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/posthog/android/PostHog;->d()V

    .line 2
    invoke-static {p1}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/posthog/android/internal/Utils;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/posthog/android/PostHog;->q()Lcom/posthog/android/x;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/posthog/android/x;->o(Ljava/lang/String;Ljava/lang/Object;)Lcom/posthog/android/x;

    .line 5
    iget-object v1, p0, Lcom/posthog/android/PostHog;->g:Lcom/posthog/android/m$a;

    invoke-virtual {v1}, Lcom/posthog/android/x$a;->c()Lcom/posthog/android/x;

    move-result-object v1

    check-cast v1, Lcom/posthog/android/m;

    .line 6
    invoke-virtual {v1, v0}, Lcom/posthog/android/m;->w(Ljava/util/Map;)Lcom/posthog/android/m;

    .line 7
    iget-object v1, p0, Lcom/posthog/android/PostHog;->t:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/posthog/android/PostHog$g;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/posthog/android/PostHog$g;-><init>(Lcom/posthog/android/PostHog;Lcom/posthog/android/k;Lcom/posthog/android/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 8
    invoke-virtual {v0, p1}, Lcom/posthog/android/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/posthog/android/PostHog;->K()V

    :cond_0
    return-void

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "groupType and groupKey must not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Lcom/posthog/android/s;)V
    .locals 1
    .param p1    # Lcom/posthog/android/s;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/posthog/android/PostHog;->B(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build La/f0;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/posthog/android/PostHog;->B(Ljava/lang/String;Lcom/posthog/android/s;Lcom/posthog/android/k;)V

    return-void
.end method
