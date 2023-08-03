.class public final Lcom/google/android/exoplayer2/upstream/cache/c;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final b:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final c:Lcom/google/android/exoplayer2/upstream/m$a;

.field private final d:I

.field private final e:Lcom/google/android/exoplayer2/upstream/k$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/upstream/cache/b$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/google/android/exoplayer2/upstream/cache/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;I)V
    .locals 7

    .line 2
    new-instance v3, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;-><init>()V

    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;->c(Lcom/google/android/exoplayer2/upstream/cache/Cache;)Lcom/google/android/exoplayer2/upstream/cache/CacheDataSink$a;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/k$a;ILcom/google/android/exoplayer2/upstream/cache/b$c;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/k$a;ILcom/google/android/exoplayer2/upstream/cache/b$c;)V
    .locals 8
    .param p4    # Lcom/google/android/exoplayer2/upstream/k$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/c;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/k$a;ILcom/google/android/exoplayer2/upstream/cache/b$c;Lcom/google/android/exoplayer2/upstream/cache/i;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/m$a;Lcom/google/android/exoplayer2/upstream/k$a;ILcom/google/android/exoplayer2/upstream/cache/b$c;Lcom/google/android/exoplayer2/upstream/cache/i;)V
    .locals 0
    .param p4    # Lcom/google/android/exoplayer2/upstream/k$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/cache/b$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/upstream/cache/i;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    .line 8
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 9
    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 10
    iput-object p4, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 11
    iput p5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:I

    .line 12
    iput-object p6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$c;

    .line 13
    iput-object p7, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->g:Lcom/google/android/exoplayer2/upstream/cache/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/cache/c;->d()Lcom/google/android/exoplayer2/upstream/cache/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/cache/b;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/android/exoplayer2/upstream/cache/b;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->a:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->b:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->c:Lcom/google/android/exoplayer2/upstream/m$a;

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/m$a;->a()Lcom/google/android/exoplayer2/upstream/m;

    move-result-object v3

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->e:Lcom/google/android/exoplayer2/upstream/k$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/k$a;->a()Lcom/google/android/exoplayer2/upstream/k;

    move-result-object v0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->d:I

    iget-object v6, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->f:Lcom/google/android/exoplayer2/upstream/cache/b$c;

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/cache/c;->g:Lcom/google/android/exoplayer2/upstream/cache/i;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/m;Lcom/google/android/exoplayer2/upstream/k;ILcom/google/android/exoplayer2/upstream/cache/b$c;Lcom/google/android/exoplayer2/upstream/cache/i;)V

    return-object v8
.end method
