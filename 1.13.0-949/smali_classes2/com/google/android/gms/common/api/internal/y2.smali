.class public interface abstract Lcom/google/android/gms/common/api/internal/y2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# virtual methods
.method public abstract b(Lcom/google/android/gms/common/internal/m;Ljava/util/Set;)V
    .param p1    # Lcom/google/android/gms/common/internal/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/m;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/gms/common/ConnectionResult;)V
.end method
