.class final Lcom/google/android/gms/common/api/internal/d1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/api/i$b;


# instance fields
.field final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic d:Lcom/google/android/gms/common/api/internal/z;

.field final synthetic e:Lcom/google/android/gms/common/api/internal/j1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/j1;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/d1;->e:Lcom/google/android/gms/common/api/internal/j1;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/d1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/d1;->d:Lcom/google/android/gms/common/api/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final s(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/d1;->e:Lcom/google/android/gms/common/api/internal/j1;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/d1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/i;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/d1;->d:Lcom/google/android/gms/common/api/internal/z;

    const/4 v2, 0x1

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/internal/j1;->O(Lcom/google/android/gms/common/api/internal/j1;Lcom/google/android/gms/common/api/i;Lcom/google/android/gms/common/api/internal/z;Z)V

    return-void
.end method

.method public final x(I)V
    .locals 0

    return-void
.end method
