.class Lcom/google/android/exoplayer2/source/chunk/q$b;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/chunk/q;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/chunk/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q$b;->a:Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/chunk/q;Lcom/google/android/exoplayer2/source/chunk/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/q$b;-><init>(Lcom/google/android/exoplayer2/source/chunk/q;)V

    return-void
.end method


# virtual methods
.method public f(II)Lcom/google/android/exoplayer2/extractor/e0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q$b;->a:Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/q;->f(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/source/chunk/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q$b;->a:Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/q;->f(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/source/chunk/g$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/g$b;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q$b;->a:Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-static {p1}, Lcom/google/android/exoplayer2/source/chunk/q;->g(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/extractor/j;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public q(Lcom/google/android/exoplayer2/extractor/b0;)V
    .locals 0

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q$b;->a:Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/q;->i(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/source/mediaparser/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/mediaparser/c;->j()[Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/q;->h(Lcom/google/android/exoplayer2/source/chunk/q;[Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;

    return-void
.end method
