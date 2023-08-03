.class public interface abstract Lcom/google/android/exoplayer2/offline/y;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/offline/y$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/offline/y$a;)V
    .param p1    # Lcom/google/android/exoplayer2/offline/y$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract remove()V
.end method
