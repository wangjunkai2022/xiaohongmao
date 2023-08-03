.class public final Lcom/google/android/exoplayer2/upstream/v;
.super Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;
.source "DefaultHttpDataSourceFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/v;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/v;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/p0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/v;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/p0;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/v;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/p0;IIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/p0;IIZ)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$a;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/v;->b:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/p0;

    .line 8
    iput p3, p0, Lcom/google/android/exoplayer2/upstream/v;->d:I

    .line 9
    iput p4, p0, Lcom/google/android/exoplayer2/upstream/v;->e:I

    .line 10
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/upstream/v;->f:Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic d(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/HttpDataSource;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/v;->e(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/u;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lcom/google/android/exoplayer2/upstream/HttpDataSource$c;)Lcom/google/android/exoplayer2/upstream/u;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/upstream/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/v;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/upstream/v;->d:I

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/v;->e:I

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/upstream/v;->f:Z

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/upstream/u;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$c;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/v;->c:Lcom/google/android/exoplayer2/upstream/p0;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Lcom/google/android/exoplayer2/upstream/f;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    :cond_0
    return-object v6
.end method
