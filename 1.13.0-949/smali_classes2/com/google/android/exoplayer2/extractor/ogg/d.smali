.class public Lcom/google/android/exoplayer2/extractor/ogg/d;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# static fields
.field public static final g:Lcom/google/android/exoplayer2/extractor/q;

.field private static final h:I = 0x8


# instance fields
.field private d:Lcom/google/android/exoplayer2/extractor/m;

.field private e:Lcom/google/android/exoplayer2/extractor/ogg/i;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ogg/c;->b:Lcom/google/android/exoplayer2/extractor/ogg/c;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ogg/d;->g:Lcom/google/android/exoplayer2/extractor/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ogg/d;->f()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ogg/d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ogg/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static g(Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/util/h0;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return-object p0
.end method

.method private h(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ogg/f;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ogg/f;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/ogg/f;->a(Lcom/google/android/exoplayer2/extractor/l;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ogg/f;->i:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4
    new-instance v2, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 6
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/d;->g(Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/util/h0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/b;->p(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/d;->g(Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/util/h0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/j;->r(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/ogg/d;->g(Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/util/h0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/ogg/h;->o(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/h;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/h;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/ogg/i;->m(JJ)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/d;->h(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->d:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/d;->h(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Failed to determine bitstream type"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->f:Z

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->d:Lcom/google/android/exoplayer2/extractor/m;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->d:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->d:Lcom/google/android/exoplayer2/extractor/m;

    invoke-virtual {v1, v3, v0}, Lcom/google/android/exoplayer2/extractor/ogg/i;->d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;)V

    .line 10
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->f:Z

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->e:Lcom/google/android/exoplayer2/extractor/ogg/i;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ogg/i;->g(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/d;->d:Lcom/google/android/exoplayer2/extractor/m;

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
