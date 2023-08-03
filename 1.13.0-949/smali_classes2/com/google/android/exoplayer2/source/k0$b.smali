.class final Lcom/google/android/exoplayer2/source/k0$b;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/x0;

.field private final b:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/x0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/k0$b;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->a()V

    return-void
.end method

.method public b()Lcom/google/android/exoplayer2/source/x0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->f()Z

    move-result v0

    return v0
.end method

.method public q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/x0;->q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    iget-wide v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/k0$b;->b:J

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    :cond_0
    return p1
.end method

.method public t(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k0$b;->a:Lcom/google/android/exoplayer2/source/x0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/k0$b;->b:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/x0;->t(J)I

    move-result p1

    return p1
.end method
