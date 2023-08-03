.class public abstract Lcom/google/android/gms/common/internal/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation build Lu2/a;
.end annotation


# static fields
.field private static a:I = 0x1081

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/google/android/gms/common/internal/e2; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field static d:Landroid/os/HandlerThread; = null
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ly2/d0;
    .end annotation
.end field

.field private static e:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/j;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()I
    .locals 1
    .annotation build Lu2/a;
    .end annotation

    sget v0, Lcom/google/android/gms/common/internal/j;->a:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/gms/common/internal/j;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/j;->c:Lcom/google/android/gms/common/internal/e2;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/gms/common/internal/e2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/google/android/gms/common/internal/j;->e:Z

    if-eqz v3, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/internal/j;->e()Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    :goto_0
    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/internal/e2;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/common/internal/j;->c:Lcom/google/android/gms/common/internal/e2;

    .line 4
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/internal/j;->c:Lcom/google/android/gms/common/internal/e2;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static e()Landroid/os/HandlerThread;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/j;->d:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    .line 2
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/common/internal/j;->d:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    sget-object v1, Lcom/google/android/gms/common/internal/j;->d:Landroid/os/HandlerThread;

    .line 4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static f()V
    .locals 3
    .annotation build Lu2/a;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/internal/j;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/internal/j;->c:Lcom/google/android/gms/common/internal/e2;

    if-eqz v1, :cond_0

    sget-boolean v2, Lcom/google/android/gms/common/internal/j;->e:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/internal/j;->e()Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/e2;->q(Landroid/os/Looper;)V

    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/gms/common/internal/j;->e:Z

    .line 2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/a2;

    invoke-static {}, Lcom/google/android/gms/common/internal/j;->c()I

    move-result v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/a2;-><init>(Landroid/content/ComponentName;I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/google/android/gms/common/internal/j;->k(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/a2;

    invoke-static {}, Lcom/google/android/gms/common/internal/j;->c()I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/common/internal/a2;-><init>(Ljava/lang/String;IZ)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/google/android/gms/common/internal/j;->k(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    return p1
.end method

.method public g(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/a2;

    invoke-static {}, Lcom/google/android/gms/common/internal/j;->c()I

    move-result v1

    .line 2
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/internal/a2;-><init>(Landroid/content/ComponentName;I)V

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/j;->i(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/a2;

    invoke-static {}, Lcom/google/android/gms/common/internal/j;->c()I

    move-result v1

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/common/internal/a2;-><init>(Ljava/lang/String;IZ)V

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/j;->i(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract i(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;)V
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/ServiceConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/internal/a2;

    invoke-direct {v0, p1, p2, p3, p6}, Lcom/google/android/gms/common/internal/a2;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0, p4, p5}, Lcom/google/android/gms/common/internal/j;->i(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract k(Lcom/google/android/gms/common/internal/a2;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
