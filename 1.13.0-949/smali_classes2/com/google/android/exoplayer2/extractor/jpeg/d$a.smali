.class Lcom/google/android/exoplayer2/extractor/jpeg/d$a;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/extractor/jpeg/d;->q(Lcom/google/android/exoplayer2/extractor/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/google/android/exoplayer2/extractor/b0;

.field final synthetic e:Lcom/google/android/exoplayer2/extractor/jpeg/d;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/extractor/jpeg/d;Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->e:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->d:Lcom/google/android/exoplayer2/extractor/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->d:Lcom/google/android/exoplayer2/extractor/b0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/b0;->e(J)Lcom/google/android/exoplayer2/extractor/b0$a;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$a;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/c0;

    iget-object v1, p1, Lcom/google/android/exoplayer2/extractor/b0$a;->a:Lcom/google/android/exoplayer2/extractor/c0;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/extractor/c0;->a:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/extractor/c0;->b:J

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->e:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    new-instance v1, Lcom/google/android/exoplayer2/extractor/c0;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/b0$a;->b:Lcom/google/android/exoplayer2/extractor/c0;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/extractor/c0;->a:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/extractor/c0;->b:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->e:Lcom/google/android/exoplayer2/extractor/jpeg/d;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/jpeg/d;->a(Lcom/google/android/exoplayer2/extractor/jpeg/d;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;Lcom/google/android/exoplayer2/extractor/c0;)V

    return-object p2
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->d:Lcom/google/android/exoplayer2/extractor/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->g()Z

    move-result v0

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/d$a;->d:Lcom/google/android/exoplayer2/extractor/b0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->i()J

    move-result-wide v0

    return-wide v0
.end method
