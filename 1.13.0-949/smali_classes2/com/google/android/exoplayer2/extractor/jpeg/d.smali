.class public final Lcom/google/android/exoplayer2/extractor/jpeg/d;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/m;


# instance fields
.field private final a:J

.field private final b:Lcom/google/android/exoplayer2/extractor/m;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a:J

    .line 3
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->b:Lcom/google/android/exoplayer2/extractor/m;

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a:J

    return-wide v0
.end method


# virtual methods
.method public f(II)Lcom/google/android/exoplayer2/extractor/e0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->b:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    return-object p1
.end method

.method public q(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->b:Lcom/google/android/exoplayer2/extractor/m;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/jpeg/d;Lcom/google/android/exoplayer2/extractor/b0;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d;->b:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    return-void
.end method
