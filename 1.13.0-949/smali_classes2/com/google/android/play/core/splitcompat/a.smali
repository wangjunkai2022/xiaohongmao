.class public Lcom/google/android/play/core/splitcompat/a;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final synthetic f:I


# instance fields
.field private final a:Lcom/google/android/play/core/splitcompat/f;

.field private final b:Lcom/google/android/play/core/splitinstall/n0;

.field private final c:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "emulatedSplits"
    .end annotation
.end field

.field private final d:Lcom/google/android/play/core/splitcompat/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/play/core/splitcompat/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    :try_start_0
    new-instance v0, Lcom/google/android/play/core/splitcompat/f;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitcompat/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance v1, Lcom/google/android/play/core/splitcompat/b;

    invoke-direct {v1, v0}, Lcom/google/android/play/core/splitcompat/b;-><init>(Lcom/google/android/play/core/splitcompat/f;)V

    iput-object v1, p0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    new-instance v0, Lcom/google/android/play/core/splitinstall/n0;

    invoke-direct {v0, p1}, Lcom/google/android/play/core/splitinstall/n0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitinstall/n0;

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/android/play/core/internal/zzbt;

    const-string v1, "Failed to initialize FileStorage"

    .line 5
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/internal/zzbt;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/play/core/splitcompat/a;->k(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/google/android/play/core/splitcompat/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitcompat/a;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;)Z

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    iget-object v1, v0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    .line 5
    invoke-direct {v0}, Lcom/google/android/play/core/splitcompat/a;->h()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-virtual {v1, p0, v0}, Lcom/google/android/play/core/splitcompat/b;->b(Landroid/content/Context;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/play/core/splitcompat/a;)Lcom/google/android/play/core/splitcompat/f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/play/core/splitcompat/a;)Ljava/util/Set;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/splitcompat/a;->h()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/play/core/splitcompat/a;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/splitcompat/a;->i(Ljava/util/Set;)V

    return-void
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/play/core/splitcompat/a;->k(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method public static g()Z
    .locals 1

    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final h()Ljava/util/Set;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final i(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/play/core/splitcompat/f;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/splitcompat/f;->l(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitinstall/n0;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/n0;->b()V

    return-void
.end method

.method private final declared-synchronized j(Landroid/content/Context;Z)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/f;->k()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/play/core/splitcompat/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/splitcompat/q;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/splitcompat/q;-><init>(Lcom/google/android/play/core/splitcompat/a;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 7
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/f;->j()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/a;->b:Lcom/google/android/play/core/splitinstall/n0;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/n0;->a()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    .line 13
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/splitcompat/t;

    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 17
    invoke-static {v5}, Lcom/google/android/play/core/splitinstall/f1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 18
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    .line 20
    invoke-direct {p0, v3}, Lcom/google/android/play/core/splitcompat/a;->i(Ljava/util/Set;)V

    goto :goto_3

    .line 21
    :cond_5
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 22
    invoke-static {}, Lcom/google/android/play/core/splitcompat/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v4, Lcom/google/android/play/core/splitcompat/r;

    invoke-direct {v4, p0, v3}, Lcom/google/android/play/core/splitcompat/r;-><init>(Lcom/google/android/play/core/splitcompat/a;Ljava/util/Set;)V

    .line 23
    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    :cond_6
    :goto_3
    new-instance v1, Ljava/util/HashSet;

    .line 25
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/splitcompat/t;

    .line 27
    invoke-virtual {v4}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/f1;->f(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 29
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 30
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 31
    invoke-static {v3}, Lcom/google/android/play/core/splitinstall/f1;->f(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 32
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v2, Ljava/util/HashSet;

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/splitcompat/t;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/f1;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 36
    invoke-virtual {v3}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/play/core/splitinstall/f1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 37
    :cond_c
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/play/core/splitcompat/n;

    iget-object v1, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    invoke-direct {v0, v1}, Lcom/google/android/play/core/splitcompat/n;-><init>(Lcom/google/android/play/core/splitcompat/f;)V

    .line 38
    invoke-static {}, Lcom/google/android/play/core/internal/b0;->a()Lcom/google/android/play/core/internal/z;

    move-result-object v1

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz p2, :cond_e

    .line 40
    invoke-virtual {v0}, Lcom/google/android/play/core/splitcompat/n;->c()Ljava/util/Set;

    move-result-object v0

    .line 41
    invoke-interface {v1, v3, v0}, Lcom/google/android/play/core/internal/z;->b(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_8

    .line 42
    :cond_e
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 43
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/splitcompat/t;

    invoke-virtual {v0, v5}, Lcom/google/android/play/core/splitcompat/n;->b(Lcom/google/android/play/core/splitcompat/t;)Ljava/util/Set;

    move-result-object v5

    if-nez v5, :cond_f

    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 46
    :cond_f
    invoke-interface {v1, v3, v5}, Lcom/google/android/play/core/internal/z;->b(Ljava/lang/ClassLoader;Ljava/util/Set;)V

    goto :goto_7

    .line 47
    :cond_10
    :goto_8
    new-instance v0, Ljava/util/HashSet;

    .line 48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/splitcompat/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :try_start_3
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->a()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v7, "classes.dex"

    .line 51
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 52
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_12

    :try_start_5
    iget-object v6, p0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    .line 53
    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/play/core/splitcompat/f;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 54
    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->a()Ljava/io/File;

    move-result-object v7

    .line 55
    invoke-interface {v1, v3, v6, v7, p2}, Lcom/google/android/play/core/internal/z;->a(Ljava/lang/ClassLoader;Ljava/io/File;Ljava/io/File;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_a

    :cond_11
    const-string v6, "SplitCompat"

    const-string v7, "split was not installed "

    .line 56
    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 57
    :cond_12
    :goto_a
    invoke-virtual {v5}, Lcom/google/android/play/core/splitcompat/t;->a()Ljava/io/File;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_9

    :catch_0
    move-exception p1

    goto :goto_b

    :catch_1
    move-exception p1

    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_13

    .line 58
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 59
    :catch_2
    :cond_13
    :try_start_7
    throw p1

    .line 60
    :cond_14
    iget-object p2, p0, Lcom/google/android/play/core/splitcompat/a;->d:Lcom/google/android/play/core/splitcompat/b;

    .line 61
    invoke-virtual {p2, p1, v0}, Lcom/google/android/play/core/splitcompat/b;->a(Landroid/content/Context;Ljava/util/Set;)V

    new-instance p1, Ljava/util/HashSet;

    .line 62
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 63
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitcompat/t;

    .line 64
    invoke-virtual {v1}, Lcom/google/android/play/core/splitcompat/t;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 65
    invoke-virtual {v1}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Split \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' installation emulated"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SplitCompat"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 67
    :cond_15
    invoke-virtual {v1}, Lcom/google/android/play/core/splitcompat/t;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Split \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' installation not emulated."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SplitCompat"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_16
    iget-object p2, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    monitor-enter p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/play/core/splitcompat/a;->c:Ljava/util/Set;

    .line 69
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 70
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_9
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1

    :catch_3
    move-exception p1

    .line 71
    new-instance p2, Ljava/io/IOException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Cannot load data for application \'%s\'"

    .line 72
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static k(Landroid/content/Context;Z)Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/google/android/play/core/splitcompat/a;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/splitcompat/a;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/play/core/splitcompat/a;

    invoke-direct {v2, p0}, Lcom/google/android/play/core/splitcompat/a;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/splitcompat/a;

    if-eqz v2, :cond_1

    .line 3
    sget-object v2, Lcom/google/android/play/core/splitinstall/zzo;->zza:Lcom/google/android/play/core/splitinstall/zzo;

    new-instance v10, Lcom/google/android/play/core/internal/w;

    .line 4
    invoke-static {}, Lcom/google/android/play/core/splitcompat/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/google/android/play/core/internal/y;

    iget-object v3, v0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    new-instance v4, Lcom/google/android/play/core/internal/u;

    invoke-direct {v4}, Lcom/google/android/play/core/internal/u;-><init>()V

    invoke-direct {v6, p0, v3, v4}, Lcom/google/android/play/core/internal/y;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/f;Lcom/google/android/play/core/internal/u;)V

    iget-object v7, v0, Lcom/google/android/play/core/splitcompat/a;->a:Lcom/google/android/play/core/splitcompat/f;

    new-instance v8, Lcom/google/android/play/core/splitcompat/s;

    invoke-direct {v8}, Lcom/google/android/play/core/splitcompat/s;-><init>()V

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/internal/w;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/internal/y;Lcom/google/android/play/core/splitcompat/f;Lcom/google/android/play/core/splitcompat/s;[B)V

    .line 5
    invoke-virtual {v2, v10}, Lcom/google/android/play/core/splitinstall/zzo;->zzb(Lcom/google/android/play/core/splitinstall/v0;)V

    new-instance v2, Lcom/google/android/play/core/splitcompat/p;

    invoke-direct {v2, v0}, Lcom/google/android/play/core/splitcompat/p;-><init>(Lcom/google/android/play/core/splitcompat/a;)V

    .line 6
    invoke-static {v2}, Lcom/google/android/play/core/splitinstall/e1;->b(Lcom/google/android/play/core/splitinstall/d1;)V

    .line 7
    invoke-static {}, Lcom/google/android/play/core/splitcompat/e;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitcompat/o;

    invoke-direct {v3, p0}, Lcom/google/android/play/core/splitcompat/o;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    :cond_1
    :try_start_0
    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/splitcompat/a;->j(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SplitCompat"

    const-string v0, "Error installing additional splits"

    .line 10
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private static l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
