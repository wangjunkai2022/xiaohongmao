.class final Lcom/google/android/exoplayer2/source/MergingMediaSource$a;
.super Lcom/google/android/exoplayer2/source/m;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final g:[J

.field private final h:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/s2;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/s2;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/m;-><init>(Lcom/google/android/exoplayer2/s2;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->h:[J

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->h:[J

    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/s2$d;->n:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/s2;->m()I

    move-result v0

    .line 7
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->g:[J

    .line 8
    new-instance v1, Lcom/google/android/exoplayer2/s2$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/s2$b;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    .line 9
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/s2;->k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;

    .line 10
    iget-object v3, v1, Lcom/google/android/exoplayer2/s2$b;->b:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 11
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->g:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    goto :goto_2

    .line 12
    :cond_1
    iget-wide v3, v1, Lcom/google/android/exoplayer2/s2$b;->d:J

    :goto_2
    aput-wide v3, v5, v2

    .line 13
    iget-wide v3, v1, Lcom/google/android/exoplayer2/s2$b;->d:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v3, v6

    if-eqz v8, :cond_2

    .line 14
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->h:[J

    iget v7, v1, Lcom/google/android/exoplayer2/s2$b;->c:I

    aget-wide v8, v6, v7

    aget-wide v10, v5, v2

    sub-long/2addr v3, v10

    sub-long/2addr v8, v3

    aput-wide v8, v6, v7

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/m;->k(ILcom/google/android/exoplayer2/s2$b;Z)Lcom/google/android/exoplayer2/s2$b;

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->g:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/s2$b;->d:J

    return-object p2
.end method

.method public s(ILcom/google/android/exoplayer2/s2$d;J)Lcom/google/android/exoplayer2/s2$d;
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/m;->s(ILcom/google/android/exoplayer2/s2$d;J)Lcom/google/android/exoplayer2/s2$d;

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$a;->h:[J

    aget-wide v0, p3, p1

    iput-wide v0, p2, Lcom/google/android/exoplayer2/s2$d;->n:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, p3

    if-eqz p1, :cond_1

    .line 3
    iget-wide v2, p2, Lcom/google/android/exoplayer2/s2$d;->m:J

    cmp-long p1, v2, p3

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-wide p3, p2, Lcom/google/android/exoplayer2/s2$d;->m:J

    .line 6
    :goto_1
    iput-wide p3, p2, Lcom/google/android/exoplayer2/s2$d;->m:J

    return-object p2
.end method
