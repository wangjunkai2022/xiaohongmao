.class public Lcom/google/android/exoplayer2/extractor/b0$b;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final d:J

.field private final e:Lcom/google/android/exoplayer2/extractor/b0$a;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/b0$b;->d:J

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$a;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lcom/google/android/exoplayer2/extractor/c0;->c:Lcom/google/android/exoplayer2/extractor/c0;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/c0;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/c0;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/b0$a;-><init>(Lcom/google/android/exoplayer2/extractor/c0;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/b0$b;->e:Lcom/google/android/exoplayer2/extractor/b0$a;

    return-void
.end method


# virtual methods
.method public e(J)Lcom/google/android/exoplayer2/extractor/b0$a;
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/b0$b;->e:Lcom/google/android/exoplayer2/extractor/b0$a;

    return-object p1
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/b0$b;->d:J

    return-wide v0
.end method
