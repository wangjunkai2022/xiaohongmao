.class public interface abstract Lcom/google/android/exoplayer2/ui/u0;
.super Ljava/lang/Object;
.source "TimeBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/u0$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/ui/u0$a;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/ui/u0$a;)V
.end method

.method public abstract c([J[ZI)V
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getPreferredUpdateDelay()J
.end method

.method public abstract setBufferedPosition(J)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setKeyCountIncrement(I)V
.end method

.method public abstract setKeyTimeIncrement(J)V
.end method

.method public abstract setPosition(J)V
.end method
