.class public interface abstract Lcom/google/android/exoplayer2/e2;
.super Ljava/lang/Object;
.source "Renderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/z1$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/e2$a;,
        Lcom/google/android/exoplayer2/e2$b;,
        Lcom/google/android/exoplayer2/e2$c;
    }
.end annotation


# static fields
.field public static final c0:I = 0x1

.field public static final d0:I = 0x2

.field public static final e0:I = 0x3

.field public static final f0:I = 0x4

.field public static final g0:I = 0x5

.field public static final h0:I = 0x6

.field public static final i0:I = 0x7

.field public static final j0:I = 0x65

.field public static final k0:I = 0x66

.field public static final l0:I = 0x67

.field public static final m0:I = 0x2710

.field public static final n0:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final o0:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final p0:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final q0:I = 0x0

.field public static final r0:I = 0x1

.field public static final s0:I = 0x2


# virtual methods
.method public abstract b()Z
.end method

.method public abstract c()V
.end method

.method public abstract f()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract getTrackType()I
.end method

.method public abstract h(I)V
.end method

.method public abstract i()Z
.end method

.method public abstract j()V
.end method

.method public abstract k()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract l()Z
.end method

.method public abstract m([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract n()Lcom/google/android/exoplayer2/g2;
.end method

.method public abstract p(FF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract q(Lcom/google/android/exoplayer2/h2;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JZZJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract s(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract stop()V
.end method

.method public abstract t()Lcom/google/android/exoplayer2/source/x0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract u()J
.end method

.method public abstract v(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract w()Lcom/google/android/exoplayer2/util/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
