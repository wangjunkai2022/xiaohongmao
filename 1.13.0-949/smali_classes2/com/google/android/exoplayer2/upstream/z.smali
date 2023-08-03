.class public final Lcom/google/android/exoplayer2/upstream/z;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/FileDataSource$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/z;-><init>(Lcom/google/android/exoplayer2/upstream/p0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/p0;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->e(Lcom/google/android/exoplayer2/upstream/p0;)Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/z;->a:Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/z;->d()Lcom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/FileDataSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/z;->a:Lcom/google/android/exoplayer2/upstream/FileDataSource$a;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->d()Lcom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method
