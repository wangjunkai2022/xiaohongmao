.class public interface abstract Lcom/google/android/datatransport/runtime/scheduling/persistence/c;
.super Ljava/lang/Object;
.source "EventStore.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Landroidx/annotation/WorkerThread;
.end annotation


# virtual methods
.method public abstract O(Lcom/google/android/datatransport/runtime/o;)J
.end method

.method public abstract P(Lcom/google/android/datatransport/runtime/o;)Z
.end method

.method public abstract R(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/i;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract U(Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/o;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()I
.end method

.method public abstract k0(Lcom/google/android/datatransport/runtime/o;Lcom/google/android/datatransport/runtime/i;)Lcom/google/android/datatransport/runtime/scheduling/persistence/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract n(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/i;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract t(Lcom/google/android/datatransport/runtime/o;J)V
.end method

.method public abstract v()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/o;",
            ">;"
        }
    .end annotation
.end method
