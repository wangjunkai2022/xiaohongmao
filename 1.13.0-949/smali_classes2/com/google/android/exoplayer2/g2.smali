.class public interface abstract Lcom/google/android/exoplayer2/g2;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/g2$b;,
        Lcom/google/android/exoplayer2/g2$d;,
        Lcom/google/android/exoplayer2/g2$a;,
        Lcom/google/android/exoplayer2/g2$c;
    }
.end annotation


# static fields
.field public static final A0:I = 0x10

.field public static final B0:I = 0x8

.field public static final C0:I = 0x0

.field public static final D0:I = 0x20

.field public static final E0:I = 0x20

.field public static final F0:I = 0x0

.field public static final t0:I = 0x7

.field public static final u0:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final v0:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final w0:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final x0:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final y0:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final z0:I = 0x18


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract r()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation
.end method
