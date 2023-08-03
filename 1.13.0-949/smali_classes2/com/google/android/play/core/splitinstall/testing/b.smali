.class public final Lcom/google/android/play/core/splitinstall/testing/b;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static a:Lcom/google/android/play/core/splitinstall/testing/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/testing/a;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/h1;->a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/c1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/c1;->zzb()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0, v0}, Lcom/google/android/play/core/splitinstall/testing/b;->b(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/a;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "Local testing directory not found: %s"

    .line 5
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lcom/google/android/play/core/common/LocalTestingException;

    const-string v0, "Failed to retrieve local testing directory path"

    .line 7
    invoke-direct {p0, v0}, Lcom/google/android/play/core/common/LocalTestingException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/a;
    .locals 4

    const-class v0, Lcom/google/android/play/core/splitinstall/testing/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/testing/b;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    if-nez v1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/play/core/splitinstall/testing/b;->c(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/a;

    move-result-object p0

    sput-object p0, Lcom/google/android/play/core/splitinstall/testing/b;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/play/core/splitinstall/testing/a;->r()Ljava/io/File;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    :goto_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/b;->a:Lcom/google/android/play/core/splitinstall/testing/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/play/core/splitinstall/testing/b;->a:Lcom/google/android/play/core/splitinstall/testing/a;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/play/core/splitinstall/testing/a;->r()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Different module directories used to initialize FakeSplitInstallManager: \'%s\' and \'%s\'"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static c(Landroid/content/Context;Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/a;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/a;->a(Landroid/content/Context;)Z

    .line 2
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/a;

    new-instance v1, Lcom/google/android/play/core/splitinstall/f1;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/play/core/splitinstall/f1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/testing/s;

    invoke-direct {v2, p1}, Lcom/google/android/play/core/splitinstall/testing/s;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/play/core/splitinstall/testing/a;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/google/android/play/core/splitinstall/f1;Lcom/google/android/play/core/internal/n1;)V

    return-object v0
.end method
