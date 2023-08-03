.class public final Lcom/google/android/exoplayer2/extractor/ts/t;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static final o:I = 0x2

.field private static final p:I = 0x4


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/h0;

.field private final b:Lcom/google/android/exoplayer2/audio/g0$a;

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Lcom/google/android/exoplayer2/extractor/e0;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:I

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/t;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/util/h0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 6
    new-instance v0, Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/g0$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 4
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 5
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->i:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 6
    :goto_2
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->i:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 8
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->i:Z

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    .line 11
    iput v6, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return-void
.end method

.method private g(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->k:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    .line 4
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->k:I

    if-ge p1, v4, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->l:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 6
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->l:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->l:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    if-ge p1, v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/g0$a;->a(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    .line 7
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v3, p1, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->k:I

    .line 9
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->h:Z

    if-nez v3, :cond_2

    const-wide/32 v3, 0xf4240

    .line 10
    iget v5, p1, Lcom/google/android/exoplayer2/audio/g0$a;->g:I

    int-to-long v5, v5

    mul-long v5, v5, v3

    iget p1, p1, Lcom/google/android/exoplayer2/audio/g0$a;->d:I

    int-to-long v3, p1

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->j:J

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/g0$a;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    const/16 v3, 0x1000

    .line 14
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->W(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/g0$a;->e:I

    .line 15
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->b:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/g0$a;->d:I

    .line 16
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->c:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 20
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->h:Z

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    const/4 p1, 0x2

    .line 23
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->g(Lcom/google/android/exoplayer2/util/h0;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->h(Lcom/google/android/exoplayer2/util/h0;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/t;->a(Lcom/google/android/exoplayer2/util/h0;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->f:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->i:Z

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->d:Lcom/google/android/exoplayer2/extractor/e0;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/t;->l:J

    return-void
.end method
