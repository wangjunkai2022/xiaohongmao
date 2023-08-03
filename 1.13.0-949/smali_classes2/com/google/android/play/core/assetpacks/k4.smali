.class final Lcom/google/android/play/core/assetpacks/k4;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/assetpacks/c;


# static fields
.field private static final m:Lcom/google/android/play/core/internal/h;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/p0;

.field private final b:Lcom/google/android/play/core/internal/n1;

.field private final c:Lcom/google/android/play/core/assetpacks/j0;

.field private final d:Lcom/google/android/play/core/splitinstall/f1;

.field private final e:Lcom/google/android/play/core/assetpacks/o2;

.field private final f:Lcom/google/android/play/core/assetpacks/x1;

.field private final g:Lcom/google/android/play/core/assetpacks/f1;

.field private final h:Lcom/google/android/play/core/internal/n1;

.field private final i:Lcom/google/android/play/core/common/c;

.field private final j:Lcom/google/android/play/core/assetpacks/m3;

.field private final k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/k4;->m:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/p0;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/assetpacks/j0;Lcom/google/android/play/core/splitinstall/f1;Lcom/google/android/play/core/assetpacks/o2;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/assetpacks/f1;Lcom/google/android/play/core/internal/n1;Lcom/google/android/play/core/common/c;Lcom/google/android/play/core/assetpacks/m3;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/k4;->d:Lcom/google/android/play/core/splitinstall/f1;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/k4;->e:Lcom/google/android/play/core/assetpacks/o2;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/k4;->f:Lcom/google/android/play/core/assetpacks/x1;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/k4;->g:Lcom/google/android/play/core/assetpacks/f1;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/k4;->i:Lcom/google/android/play/core/common/c;

    iput-object p10, p0, Lcom/google/android/play/core/assetpacks/k4;->j:Lcom/google/android/play/core/assetpacks/m3;

    return-void
.end method

.method static bridge synthetic m(Lcom/google/android/play/core/assetpacks/k4;)Lcom/google/android/play/core/assetpacks/f1;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/k4;->g:Lcom/google/android/play/core/assetpacks/f1;

    return-object p0
.end method

.method static synthetic p(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/assetpacks/k4;->m:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/h;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method private final s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/i4;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/i4;-><init>(Lcom/google/android/play/core/assetpacks/k4;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/play/core/assetpacks/e;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/d;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/listener/d;->d(Lcom/google/android/play/core/listener/a;)V

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/k4;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/k4;->l:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/assetpacks/h4;

    invoke-direct {v2, p0}, Lcom/google/android/play/core/assetpacks/h4;-><init>(Lcom/google/android/play/core/assetpacks/k4;)V

    .line 2
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/google/android/play/core/assetpacks/k4;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->w(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->d:Lcom/google/android/play/core/splitinstall/f1;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/f1;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/b;->d()Lcom/google/android/play/core/assetpacks/b;

    move-result-object v0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_3

    return-object v2

    .line 7
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b;->b()I

    move-result v3

    if-ne v3, v1, :cond_4

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->J(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/play/core/assetpacks/p0;->u(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/google/android/play/core/assetpacks/a;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/b;->b()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 9
    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/play/core/assetpacks/p0;->v(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/play/core/assetpacks/b;)Lcom/google/android/play/core/assetpacks/a;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object v0, Lcom/google/android/play/core/assetpacks/k4;->m:Lcom/google/android/play/core/internal/h;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    aput-object p1, v3, v1

    const-string p1, "The asset %s is not present in Asset Pack %s"

    .line 10
    invoke-virtual {v0, p1, v3}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2
.end method

.method public final c(Landroid/app/Activity;)Lcom/google/android/play/core/tasks/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/4 v0, -0x3

    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->d(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->g:Lcom/google/android/play/core/assetpacks/f1;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/f1;->a()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/play/core/assetpacks/AssetPackException;

    const/16 v0, -0xc

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->d(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->g:Lcom/google/android/play/core/assetpacks/f1;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/f1;->a()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "confirmation_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/play/core/tasks/o;

    .line 6
    invoke-direct {v1}, Lcom/google/android/play/core/tasks/o;-><init>()V

    .line 7
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzk;

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/k4;->k:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/play/core/assetpacks/zzk;-><init>(Lcom/google/android/play/core/assetpacks/k4;Landroid/os/Handler;Lcom/google/android/play/core/tasks/o;)V

    const-string v3, "result_receiver"

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/google/android/play/core/tasks/o;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/assetpacks/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/p0;->L()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/k4;->i:Lcom/google/android/play/core/common/c;

    const-string v4, "assetOnlyUpdates"

    .line 4
    invoke-virtual {v3, v4}, Lcom/google/android/play/core/common/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 6
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    invoke-interface {v2, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .line 9
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "bytes_downloaded"

    const-string v6, "total_bytes_to_download"

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "status"

    .line 13
    invoke-static {v9, v4}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    .line 14
    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-static {v1, v4}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 17
    invoke-static {v6, v4}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 19
    invoke-static {v5, v4}, Lb3/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "pack_names"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 22
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k4;->f:Lcom/google/android/play/core/assetpacks/x1;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->j:Lcom/google/android/play/core/assetpacks/m3;

    .line 24
    invoke-static {v0, p1, v1}, Lcom/google/android/play/core/assetpacks/f;->c(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/x1;Lcom/google/android/play/core/assetpacks/m3;)Lcom/google/android/play/core/assetpacks/f;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/google/android/play/core/tasks/f;->e(Ljava/lang/Object;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    .line 26
    invoke-interface {p1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/assetpacks/x4;

    .line 27
    invoke-interface {p1, v2, v1, v0}, Lcom/google/android/play/core/assetpacks/x4;->d(Ljava/util/List;Ljava/util/List;Ljava/util/Map;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/d;->c()V

    return-void
.end method

.method public final f(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/play/core/assetpacks/k4;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/h4;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/h4;-><init>(Lcom/google/android/play/core/assetpacks/k4;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/assetpacks/k4;->l:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->w(Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->d:Lcom/google/android/play/core/splitinstall/f1;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/f1;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/b;->d()Lcom/google/android/play/core/assetpacks/b;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final g(Lcom/google/android/play/core/assetpacks/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/listener/d;->f(Lcom/google/android/play/core/listener/a;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)Lcom/google/android/play/core/tasks/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/play/core/tasks/d<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/play/core/tasks/o;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/o;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/play/core/assetpacks/j4;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/play/core/assetpacks/j4;-><init>(Lcom/google/android/play/core/assetpacks/k4;Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V

    .line 3
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/o;->a()Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/util/List;)Lcom/google/android/play/core/assetpacks/f;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/assetpacks/f;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/k4;->e:Lcom/google/android/play/core/assetpacks/o2;

    invoke-virtual {v2, v1}, Lcom/google/android/play/core/assetpacks/o2;->f(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    .line 2
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v7, v6

    :goto_1
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-string v16, ""

    const-string v17, ""

    move-object v6, v5

    .line 6
    invoke-static/range {v6 .. v17}, Lcom/google/android/play/core/assetpacks/AssetPackState;->h(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v6

    .line 7
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    .line 9
    invoke-interface {v2}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/x4;

    invoke-interface {v2, v1}, Lcom/google/android/play/core/assetpacks/x4;->f(Ljava/util/List;)V

    new-instance v1, Lcom/google/android/play/core/assetpacks/w0;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/play/core/assetpacks/w0;-><init>(JLjava/util/Map;)V

    return-object v1
.end method

.method public final j(Ljava/util/List;)Lcom/google/android/play/core/tasks/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/play/core/tasks/d<",
            "Lcom/google/android/play/core/assetpacks/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/x4;

    new-instance v1, Lcom/google/android/play/core/assetpacks/k3;

    invoke-direct {v1, p0}, Lcom/google/android/play/core/assetpacks/k3;-><init>(Lcom/google/android/play/core/assetpacks/k4;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/p0;->L()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/play/core/assetpacks/x4;->a(Ljava/util/List;Lcom/google/android/play/core/assetpacks/m0;Ljava/util/Map;)Lcom/google/android/play/core/tasks/d;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/play/core/assetpacks/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/p0;->M()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/k4;->d:Lcom/google/android/play/core/splitinstall/f1;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/play/core/splitinstall/f1;->c()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/b;->d()Lcom/google/android/play/core/assetpacks/b;

    move-result-object v4

    .line 4
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method final l(ILjava/lang/String;)I
    .locals 2
    .param p1    # I
        .annotation build Lb3/b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lb3/b;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v0, p2}, Lcom/google/android/play/core/assetpacks/p0;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    return p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/play/core/assetpacks/p0;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eq p1, v1, :cond_2

    return v1

    :cond_2
    return p1
.end method

.method final synthetic n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/p0;->P()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/p0;->N()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/p0;->O()V

    return-void
.end method

.method final synthetic o(Ljava/lang/String;Lcom/google/android/play/core/tasks/o;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/p0;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/tasks/o;->c(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    .line 3
    invoke-interface {p2}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/assetpacks/x4;

    invoke-interface {p2, p1}, Lcom/google/android/play/core/assetpacks/x4;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Failed to remove pack %s."

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/play/core/tasks/o;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic q()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->b:Lcom/google/android/play/core/internal/n1;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/x4;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/p0;->L()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/x4;->h(Ljava/util/Map;)Lcom/google/android/play/core/tasks/d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    .line 3
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/k4;->a:Lcom/google/android/play/core/assetpacks/p0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/play/core/assetpacks/g4;

    invoke-direct {v3, v2}, Lcom/google/android/play/core/assetpacks/g4;-><init>(Lcom/google/android/play/core/assetpacks/p0;)V

    .line 4
    invoke-virtual {v0, v1, v3}, Lcom/google/android/play/core/tasks/d;->f(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/c;)Lcom/google/android/play/core/tasks/d;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->h:Lcom/google/android/play/core/internal/n1;

    .line 5
    invoke-interface {v1}, Lcom/google/android/play/core/internal/n1;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/f4;->a:Lcom/google/android/play/core/assetpacks/f4;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/d;->d(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/d;

    return-void
.end method

.method final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    invoke-virtual {v0}, Lcom/google/android/play/core/listener/d;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/k4;->c:Lcom/google/android/play/core/assetpacks/j0;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/play/core/listener/d;->e(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/k4;->s()V

    :cond_0
    return-void
.end method
