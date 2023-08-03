.class final Lcom/google/android/exoplayer2/source/p0$c;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/x0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/p0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/p0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p0$c;->b:Lcom/google/android/exoplayer2/source/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/source/p0$c;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$c;->b:Lcom/google/android/exoplayer2/source/p0;

    iget v1, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/p0;->X(I)V

    return-void
.end method

.method public f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$c;->b:Lcom/google/android/exoplayer2/source/p0;

    iget v1, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/p0;->Q(I)Z

    move-result v0

    return v0
.end method

.method public q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$c;->b:Lcom/google/android/exoplayer2/source/p0;

    iget v1, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p0;->c0(ILcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p1

    return p1
.end method

.method public t(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p0$c;->b:Lcom/google/android/exoplayer2/source/p0;

    iget v1, p0, Lcom/google/android/exoplayer2/source/p0$c;->a:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/source/p0;->g0(IJ)I

    move-result p1

    return p1
.end method
