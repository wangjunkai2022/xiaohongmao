.class final Lcom/google/android/gms/common/api/internal/v0;
.super Lcom/google/android/gms/signin/internal/c;
.source "com.google.android.gms:play-services-base@@18.0.1"


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/common/api/internal/a1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/a1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/v0;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final O(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 3
    .annotation build Landroidx/annotation/BinderThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/a1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/a1;->u(Lcom/google/android/gms/common/api/internal/a1;)Lcom/google/android/gms/common/api/internal/n1;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/u0;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/common/api/internal/u0;-><init>(Lcom/google/android/gms/common/api/internal/v0;Lcom/google/android/gms/common/api/internal/k1;Lcom/google/android/gms/common/api/internal/a1;Lcom/google/android/gms/signin/internal/zak;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/n1;->r(Lcom/google/android/gms/common/api/internal/l1;)V

    return-void
.end method
