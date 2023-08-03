.class public abstract Lcom/google/android/exoplayer2/source/chunk/f;
.super Ljava/lang/Object;
.source "Chunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$e;


# instance fields
.field public final a:J

.field public final b:Lcom/google/android/exoplayer2/upstream/o;

.field public final c:I

.field public final d:Lcom/google/android/exoplayer2/Format;

.field public final e:I

.field public final f:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final g:J

.field public final h:J

.field protected final i:Lcom/google/android/exoplayer2/upstream/m0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/o;ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 1
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/m0;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/upstream/m0;-><init>(Lcom/google/android/exoplayer2/upstream/m;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/f;->i:Lcom/google/android/exoplayer2/upstream/m0;

    .line 3
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/o;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/f;->b:Lcom/google/android/exoplayer2/upstream/o;

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/source/chunk/f;->c:I

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/f;->d:Lcom/google/android/exoplayer2/Format;

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/source/chunk/f;->e:I

    .line 7
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/chunk/f;->f:Ljava/lang/Object;

    .line 8
    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/f;->g:J

    .line 9
    iput-wide p9, p0, Lcom/google/android/exoplayer2/source/chunk/f;->h:J

    .line 10
    invoke-static {}, Lcom/google/android/exoplayer2/source/o;->a()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/f;->a:J

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/f;->i:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/f;->h:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/chunk/f;->g:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/f;->i:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->v()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final f()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/f;->i:Lcom/google/android/exoplayer2/upstream/m0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/m0;->u()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
