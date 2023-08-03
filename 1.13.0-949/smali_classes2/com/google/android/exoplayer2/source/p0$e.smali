.class final Lcom/google/android/exoplayer2/source/p0$e;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field public final b:[Z

.field public final c:[Z

.field public final d:[Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$e;->a:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p0$e;->b:[Z

    .line 4
    iget p1, p1, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/p0$e;->c:[Z

    .line 5
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$e;->d:[Z

    return-void
.end method
