.class final Lcom/google/android/gms/common/api/internal/f4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/e2;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/e0;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/e0;Lcom/google/android/gms/common/api/internal/e4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 2
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/e0;->x(Lcom/google/android/gms/common/api/internal/e0;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->B(Lcom/google/android/gms/common/api/internal/e0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method

.method public final b(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->C(Lcom/google/android/gms/common/api/internal/e0;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/e0;->y(Lcom/google/android/gms/common/api/internal/e0;Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/e0;->z(Lcom/google/android/gms/common/api/internal/e0;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 5
    :try_start_1
    invoke-static {v0, p2}, Lcom/google/android/gms/common/api/internal/e0;->y(Lcom/google/android/gms/common/api/internal/e0;Z)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/e0;->t(Lcom/google/android/gms/common/api/internal/e0;)Lcom/google/android/gms/common/api/internal/n1;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/n1;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    .line 9
    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 10
    throw p1
.end method

.method public final c(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/e0;->x(Lcom/google/android/gms/common/api/internal/e0;Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->B(Lcom/google/android/gms/common/api/internal/e0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f4;->a:Lcom/google/android/gms/common/api/internal/e0;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/e0;->v(Lcom/google/android/gms/common/api/internal/e0;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw p1
.end method