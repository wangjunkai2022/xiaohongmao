.class public final Lcom/google/android/exoplayer2/upstream/cache/b$d;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/cache/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private b:Lcom/google/android/exoplayer2/upstream/m$a;

.field private c:Lcom/google/android/exoplayer2/upstream/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/upstream/cache/i;

.field private e:Z

.field private f:Lcom/google/android/exoplayer2/upstream/m$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Lcom/google/android/exoplayer2/upstream/cache/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 3
    sget-object v0, Lcom/google/android/exoplayer2/upstream/cache/i;->a:Lcom/google/android/exoplayer2/upstream/cache/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/upstream/m;II)Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 12
    .param p1    # Lcom/google/android/exoplayer2/upstream/m;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->e:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->c:Lcom/google/android/exoplayer2/upstream/k$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->a()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->a()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object v5, v0

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    iget-object v8, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    iget-object v10, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->j:Lcom/google/android/exoplayer2/upstream/cache/b$c;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v3, p1

    move v7, p2

    move v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/k;Lcom/google/android/exoplayer2/upstream/cache/i;ILcom/google/android/exoplayer2/util/PriorityTaskManager;ILcom/google/android/exoplayer2/upstream/cache/b$c;Lcom/google/android/exoplayer2/upstream/cache/b$a;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->f:Lcom/google/android/exoplayer2/upstream/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->i:I

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->h:I

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g(Lcom/google/android/exoplayer2/upstream/m;II)Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->f:Lcom/google/android/exoplayer2/upstream/m$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->i:I

    or-int/lit8 v1, v1, 0x1

    const/16 v2, -0x3e8

    .line 2
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g(Lcom/google/android/exoplayer2/upstream/m;II)Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->i:I

    or-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g(Lcom/google/android/exoplayer2/upstream/m;II)Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/google/android/exoplayer2/upstream/cache/Cache;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method public i()Lcom/google/android/exoplayer2/upstream/cache/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    return-object v0
.end method

.method public j()Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object v0
.end method

.method public k(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    return-object p0
.end method

.method public l(Lcom/google/android/exoplayer2/upstream/cache/i;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->d:Lcom/google/android/exoplayer2/upstream/cache/i;

    return-object p0
.end method

.method public m(Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    return-object p0
.end method

.method public n(Lcom/google/android/exoplayer2/upstream/k$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/k$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->c:Lcom/google/android/exoplayer2/upstream/k$a;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->e:Z

    return-object p0
.end method

.method public o(Lcom/google/android/exoplayer2/upstream/cache/b$c;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/cache/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->j:Lcom/google/android/exoplayer2/upstream/cache/b$c;

    return-object p0
.end method

.method public p(I)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->i:I

    return-object p0
.end method

.method public q(Lcom/google/android/exoplayer2/upstream/m$a;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/m$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->f:Lcom/google/android/exoplayer2/upstream/m$a;

    return-object p0
.end method

.method public r(I)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->h:I

    return-object p0
.end method

.method public s(Lcom/google/android/exoplayer2/util/PriorityTaskManager;)Lcom/google/android/exoplayer2/upstream/cache/b$d;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/util/PriorityTaskManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/b$d;->g:Lcom/google/android/exoplayer2/util/PriorityTaskManager;

    return-object p0
.end method
