.class public final Lcom/google/android/gms/common/api/internal/i0;
.super Lcom/google/android/gms/common/api/internal/v3;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final f:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/common/api/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/e;)V
    .locals 0
    .annotation build Ly2/d0;
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/api/internal/v3;-><init>(Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/common/e;)V

    .line 2
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i0;->f:Landroidx/collection/ArraySet;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/i0;->g:Lcom/google/android/gms/common/api/internal/i;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/m;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/common/api/internal/m;->h(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static v(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/api/internal/c;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/internal/i;",
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/m;

    move-result-object p0

    const-class v0, Lcom/google/android/gms/common/api/internal/i0;

    const-string v1, "ConnectionlessLifecycleHelper"

    .line 2
    invoke-interface {p0, v1, v0}, Lcom/google/android/gms/common/api/internal/m;->m(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/i0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/i0;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/e;->x()Lcom/google/android/gms/common/e;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/common/api/internal/i0;-><init>(Lcom/google/android/gms/common/api/internal/m;Lcom/google/android/gms/common/api/internal/i;Lcom/google/android/gms/common/e;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    .line 4
    invoke-static {p2, p0}, Lcom/google/android/gms/common/internal/u;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/i0;->f:Landroidx/collection/ArraySet;

    .line 5
    invoke-virtual {p0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/i;->d(Lcom/google/android/gms/common/api/internal/i0;)V

    return-void
.end method

.method private final w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->f:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->g:Lcom/google/android/gms/common/api/internal/i;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/i;->d(Lcom/google/android/gms/common/api/internal/i0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->i()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/i0;->w()V

    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/v3;->k()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/i0;->w()V

    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/api/internal/v3;->l()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->g:Lcom/google/android/gms/common/api/internal/i;

    .line 2
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/i;->e(Lcom/google/android/gms/common/api/internal/i0;)V

    return-void
.end method

.method protected final n(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->g:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/i;->M(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected final o()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->g:Lcom/google/android/gms/common/api/internal/i;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i;->b()V

    return-void
.end method

.method final u()Landroidx/collection/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArraySet<",
            "Lcom/google/android/gms/common/api/internal/c<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i0;->f:Landroidx/collection/ArraySet;

    return-object v0
.end method
