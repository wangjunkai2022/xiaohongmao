.class public final Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;
.super Ljava/lang/Object;
.source "CacheDataSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x500000

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->b:J

    const/16 v0, 0x5000

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/upstream/k;
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->b:J

    iget v4, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->c:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;JI)V

    return-object v0
.end method

.method public b(I)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->c:I

    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method

.method public d(J)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->b:J

    return-object p0
.end method
