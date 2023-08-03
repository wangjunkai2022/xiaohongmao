.class public final Lcom/google/android/exoplayer2/upstream/FileDataSource$a;
.super Ljava/lang/Object;
.source "FileDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/p0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/android/exoplayer2/upstream/m;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->d()Lcom/google/android/exoplayer2/upstream/FileDataSource;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/exoplayer2/upstream/FileDataSource;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->a:Lcom/google/android/exoplayer2/upstream/p0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/f;->e(Lcom/google/android/exoplayer2/upstream/p0;)V

    :cond_0
    return-object v0
.end method

.method public e(Lcom/google/android/exoplayer2/upstream/p0;)Lcom/google/android/exoplayer2/upstream/FileDataSource$a;
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/upstream/p0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSource$a;->a:Lcom/google/android/exoplayer2/upstream/p0;

    return-object p0
.end method
