.class public interface abstract Lcom/google/android/exoplayer2/source/z;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/z$a;,
        Lcom/google/android/exoplayer2/source/z$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;
.end method

.method public abstract b(Lcom/google/android/exoplayer2/source/z$b;)V
.end method

.method public abstract c(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/h0;)V
.end method

.method public abstract d(Lcom/google/android/exoplayer2/source/h0;)V
.end method

.method public abstract e()Lcom/google/android/exoplayer2/b1;
.end method

.method public abstract f()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract g(Lcom/google/android/exoplayer2/source/w;)V
.end method

.method public abstract h(Lcom/google/android/exoplayer2/source/z$b;Lcom/google/android/exoplayer2/upstream/p0;)V
    .param p2    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract i(Lcom/google/android/exoplayer2/source/z$b;)V
.end method

.method public abstract j(Lcom/google/android/exoplayer2/source/z$b;)V
.end method

.method public abstract l(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/s;)V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/drm/s;)V
.end method

.method public abstract n()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract o()Z
.end method

.method public abstract p()Lcom/google/android/exoplayer2/s2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
