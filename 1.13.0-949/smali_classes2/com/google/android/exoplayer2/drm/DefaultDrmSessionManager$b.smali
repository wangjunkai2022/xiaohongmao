.class public final Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/UUID;

.field private c:Lcom/google/android/exoplayer2/drm/b0$g;

.field private d:Z

.field private e:[I

.field private f:Z

.field private g:Lcom/google/android/exoplayer2/upstream/f0;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/i;->L1:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    .line 4
    sget-object v0, Lcom/google/android/exoplayer2/drm/h0;->k:Lcom/google/android/exoplayer2/drm/b0$g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->c:Lcom/google/android/exoplayer2/drm/b0$g;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/upstream/w;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/w;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->g:Lcom/google/android/exoplayer2/upstream/f0;

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->e:[I

    const-wide/32 v0, 0x493e0

    .line 7
    iput-wide v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->h:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/drm/k0;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
    .locals 13

    new-instance v12, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->c:Lcom/google/android/exoplayer2/drm/b0$g;

    iget-object v4, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->d:Z

    iget-object v6, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->e:[I

    iget-boolean v7, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->f:Z

    iget-object v8, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->g:Lcom/google/android/exoplayer2/upstream/f0;

    iget-wide v9, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->h:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v3, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/b0$g;Lcom/google/android/exoplayer2/drm/k0;Ljava/util/HashMap;Z[IZLcom/google/android/exoplayer2/upstream/f0;JLcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$a;)V

    return-object v12
.end method

.method public b(Ljava/util/Map;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object p0
.end method

.method public c(Lcom/google/android/exoplayer2/upstream/f0;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/f0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->g:Lcom/google/android/exoplayer2/upstream/f0;

    return-object p0
.end method

.method public d(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->d:Z

    return-object p0
.end method

.method public e(Z)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->f:Z

    return-object p0
.end method

.method public f(J)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1
    :goto_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->h:J

    return-object p0
.end method

.method public varargs g([I)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 2
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->e:[I

    return-object p0
.end method

.method public h(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/b0$g;)Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->b:Ljava/util/UUID;

    .line 2
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/b0$g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$b;->c:Lcom/google/android/exoplayer2/drm/b0$g;

    return-object p0
.end method
