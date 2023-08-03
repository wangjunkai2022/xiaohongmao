.class Lcom/google/android/exoplayer2/source/q0$a;
.super Lcom/google/android/exoplayer2/source/m;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/source/q0;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/q0;Lcom/google/android/exoplayer2/s2;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/s2;)V

    return-void
.end method


# virtual methods
.method public k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/m;->k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/s2$b;->f:Z

    return-object p2
.end method

.method public s(ILcom/google/android/exoplayer2/s2$d;J)Lcom/google/android/exoplayer2/s2$d;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;->s(ILcom/google/android/exoplayer2/s2$d;J)Lcom/google/android/exoplayer2/s2$d;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p2, Lcom/google/android/exoplayer2/s2$d;->l:Z

    return-object p2
.end method
