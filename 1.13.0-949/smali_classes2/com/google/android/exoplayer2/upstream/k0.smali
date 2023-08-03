.class public final Lcom/google/android/exoplayer2/upstream/k0;
.super Ljava/lang/Object;
.source "ResolvingDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/k0$a;,
        Lcom/google/android/exoplayer2/upstream/k0$b;
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/exoplayer2/upstream/m;

.field private final c:Lcom/google/android/exoplayer2/upstream/k0$b;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/k0$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/k0;->c:Lcom/google/android/exoplayer2/upstream/k0$b;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/o;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->c:Lcom/google/android/exoplayer2/upstream/k0$b;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/k0$b;->a(Lcom/google/android/exoplayer2/upstream/o;)Lcom/google/android/exoplayer2/upstream/o;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->d:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/m;->a(Lcom/google/android/exoplayer2/upstream/o;)J

    move-result-wide v0

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->c()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/k0;->c:Lcom/google/android/exoplayer2/upstream/k0$b;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/k0$b;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->d:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m;->close()V

    :cond_0
    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/k0;->b:Lcom/google/android/exoplayer2/upstream/m;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/i;->read([BII)I

    move-result p1

    return p1
.end method
