.class final Lcom/google/android/gms/common/api/internal/x0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/i$b;
.implements Lcom/google/android/gms/common/api/i$c;


# instance fields
.field final synthetic c:Lcom/google/android/gms/common/api/internal/a1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/a1;Lcom/google/android/gms/common/api/internal/w0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final s(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a1;->v(Lcom/google/android/gms/common/api/internal/a1;)Lcom/google/android/gms/common/internal/f;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a1;->x(Lcom/google/android/gms/common/api/internal/a1;)Lcom/google/android/gms/signin/f;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/signin/f;

    new-instance v0, Lcom/google/android/gms/common/api/internal/v0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/v0;-><init>(Lcom/google/android/gms/common/api/internal/a1;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/google/android/gms/signin/f;->q(Lcom/google/android/gms/signin/internal/e;)V

    return-void
.end method

.method public final x(I)V
    .locals 0

    return-void
.end method

.method public final z(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/a1;->I(Lcom/google/android/gms/common/api/internal/a1;Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a1;->A(Lcom/google/android/gms/common/api/internal/a1;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a1;->E(Lcom/google/android/gms/common/api/internal/a1;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/a1;->C(Lcom/google/android/gms/common/api/internal/a1;Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/x0;->c:Lcom/google/android/gms/common/api/internal/a1;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->z(Lcom/google/android/gms/common/api/internal/a1;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 9
    throw p1
.end method
