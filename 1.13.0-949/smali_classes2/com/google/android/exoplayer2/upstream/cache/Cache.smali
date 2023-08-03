.class public interface abstract Lcom/google/android/exoplayer2/upstream/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;,
        Lcom/google/android/exoplayer2/upstream/cache/Cache$a;
    }
.end annotation


# static fields
.field public static final a:J = -0x1L


# virtual methods
.method public abstract a(Ljava/lang/String;JJ)Ljava/io/File;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/cache/p;
.end method

.method public abstract c(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/q;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;JJ)J
.end method

.method public abstract e(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;JJ)J
.end method

.method public abstract g()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUid()J
.end method

.method public abstract h()J
.end method

.method public abstract i(Lcom/google/android/exoplayer2/upstream/cache/j;)V
.end method

.method public abstract j(Lcom/google/android/exoplayer2/upstream/cache/j;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract k(Ljava/lang/String;JJ)Lcom/google/android/exoplayer2/upstream/cache/j;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract l(Ljava/io/File;J)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/cache/Cache$CacheException;
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract n(Ljava/lang/String;JJ)Z
.end method

.method public abstract o(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$a;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/upstream/cache/Cache$a;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract p(Ljava/lang/String;)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/google/android/exoplayer2/upstream/cache/j;",
            ">;"
        }
    .end annotation
.end method

.method public abstract q(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$a;)V
.end method

.method public abstract release()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
