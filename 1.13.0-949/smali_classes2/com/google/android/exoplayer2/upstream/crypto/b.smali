.class public final Lcom/google/android/exoplayer2/upstream/crypto/b;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m;


# instance fields
.field private final b:Lcom/google/android/exoplayer2/upstream/m;

.field private final c:[B

.field private d:Lcom/google/android/exoplayer2/upstream/crypto/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLcom/google/android/exoplayer2/upstream/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->c:[B

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/o;)J

    move-result-wide v0

    .line 2
    iget-object v2, p1, Lcom/google/android/exoplayer2/upstream/o;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/exoplayer2/upstream/crypto/d;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 3
    new-instance v2, Lcom/google/android/exoplayer2/upstream/crypto/c;

    iget-object v5, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->c:[B

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/o;->b:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/upstream/o;->g:J

    add-long/2addr v8, v3

    const/4 v4, 0x2

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/exoplayer2/upstream/crypto/c;-><init>(I[BJJ)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->d:Lcom/google/android/exoplayer2/upstream/crypto/c;

    return-wide v0
.end method

.method public b()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->d:Lcom/google/android/exoplayer2/upstream/crypto/c;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->close()V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/i;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/crypto/b;->d:Lcom/google/android/exoplayer2/upstream/crypto/c;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/crypto/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/crypto/c;->d([BII)V

    return p3
.end method
