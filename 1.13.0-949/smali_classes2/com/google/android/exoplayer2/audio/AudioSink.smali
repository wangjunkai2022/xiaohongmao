.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$b;,
        Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x2

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field public static final d:J = -0x8000000000000000L


# virtual methods
.method public abstract F()Z
.end method

.method public abstract J(Z)V
.end method

.method public abstract a(Lcom/google/android/exoplayer2/Format;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()Lcom/google/android/exoplayer2/t1;
.end method

.method public abstract f(F)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Lcom/google/android/exoplayer2/t1;)V
.end method

.method public abstract h()V
.end method

.method public abstract i(Lcom/google/android/exoplayer2/audio/e;)V
.end method

.method public abstract j(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
.end method

.method public abstract l(I)V
.end method

.method public abstract m(Lcom/google/android/exoplayer2/Format;)I
.end method

.method public abstract n()V
.end method

.method public abstract o()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract p(Z)J
.end method

.method public abstract pause()V
.end method

.method public abstract q()V
.end method

.method public abstract r()V
.end method

.method public abstract reset()V
.end method

.method public abstract s(Lcom/google/android/exoplayer2/Format;I[I)V
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract u(Lcom/google/android/exoplayer2/audio/y;)V
.end method
