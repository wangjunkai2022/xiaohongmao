.class public final Lcom/google/android/exoplayer2/extractor/flac/d;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flac/d$a;
    }
.end annotation


# static fields
.field private static final A:I = -0x1

.field public static final r:Lcom/google/android/exoplayer2/extractor/q;

.field public static final s:I = 0x1

.field private static final t:I = 0x0

.field private static final u:I = 0x1

.field private static final v:I = 0x2

.field private static final w:I = 0x3

.field private static final x:I = 0x4

.field private static final y:I = 0x5

.field private static final z:I = 0x8000


# instance fields
.field private final d:[B

.field private final e:Lcom/google/android/exoplayer2/util/h0;

.field private final f:Z

.field private final g:Lcom/google/android/exoplayer2/extractor/r$a;

.field private h:Lcom/google/android/exoplayer2/extractor/m;

.field private i:Lcom/google/android/exoplayer2/extractor/e0;

.field private j:I

.field private k:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Lcom/google/android/exoplayer2/extractor/u;

.field private m:I

.field private n:I

.field private o:Lcom/google/android/exoplayer2/extractor/flac/b;

.field private p:I

.field private q:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/flac/c;->b:Lcom/google/android/exoplayer2/extractor/flac/c;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flac/d;->r:Lcom/google/android/exoplayer2/extractor/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/flac/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->d:[B

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/h0;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->f:Z

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/r$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/r$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->g:Lcom/google/android/exoplayer2/extractor/r$a;

    .line 7
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/flac/d;->j()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method private f(Lcom/google/android/exoplayer2/util/h0;Z)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->n:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->g:Lcom/google/android/exoplayer2/extractor/r$a;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/r;->d(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/u;ILcom/google/android/exoplayer2/extractor/r$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->g:Lcom/google/android/exoplayer2/extractor/r$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/r$a;->a:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result p2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->m:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/4 p2, 0x0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->n:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->g:Lcom/google/android/exoplayer2/extractor/r$a;

    .line 11
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/r;->d(Lcom/google/android/exoplayer2/util/h0;Lcom/google/android/exoplayer2/extractor/u;ILcom/google/android/exoplayer2/extractor/r$a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->g:Lcom/google/android/exoplayer2/extractor/r$a;

    iget-wide p1, p1, Lcom/google/android/exoplayer2/extractor/r$a;->a:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    goto :goto_4

    .line 16
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private g(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/s;->b(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->n:I

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->h:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/m;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v1

    .line 4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v3

    .line 5
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/flac/d;->h(JJ)Lcom/google/android/exoplayer2/extractor/b0;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    const/4 p1, 0x5

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method

.method private h(JJ)Lcom/google/android/exoplayer2/extractor/b0;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    iget-object v0, v2, Lcom/google/android/exoplayer2/extractor/u;->k:Lcom/google/android/exoplayer2/extractor/u$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance p3, Lcom/google/android/exoplayer2/extractor/t;

    invoke-direct {p3, v2, p1, p2}, Lcom/google/android/exoplayer2/extractor/t;-><init>(Lcom/google/android/exoplayer2/extractor/u;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v3, p3, v0

    if-eqz v3, :cond_1

    .line 4
    iget-wide v0, v2, Lcom/google/android/exoplayer2/extractor/u;->j:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flac/b;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->n:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/flac/b;-><init>(Lcom/google/android/exoplayer2/extractor/u;IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->o:Lcom/google/android/exoplayer2/extractor/flac/b;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a;->b()Lcom/google/android/exoplayer2/extractor/b0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/b0$b;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/u;->h()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    return-object p1
.end method

.method private i(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->d:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method

.method private static synthetic j()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/flac/d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flac/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private k()V
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->q:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    .line 2
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/u;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/u;->e:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/extractor/e0;

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->o:Lcom/google/android/exoplayer2/extractor/flac/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->o:Lcom/google/android/exoplayer2/extractor/flac/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->q:J

    const-wide/16 v2, -0x1

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/r;->i(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/u;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->q:J

    return p2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_4

    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    .line 10
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    sub-int/2addr v1, v0

    .line 11
    invoke-interface {p1, v4, v0, v1}, Lcom/google/android/exoplayer2/extractor/l;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p1

    if-nez p1, :cond_5

    .line 14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flac/d;->k()V

    return v1

    :cond_4
    const/4 v4, 0x0

    .line 15
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result p1

    .line 16
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->m:I

    if-ge v0, v1, :cond_6

    .line 17
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    sub-int/2addr v1, v0

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplayer2/extractor/flac/d;->f(Lcom/google/android/exoplayer2/util/h0;Z)J

    move-result-wide v0

    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v4

    sub-int/2addr v4, p1

    .line 20
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v5, p1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->i:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {p1, v5, v4}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 22
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    .line 23
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flac/d;->k()V

    .line 24
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    .line 25
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->q:J

    .line 26
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_8

    .line 27
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p1

    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    .line 30
    invoke-static {v0, v1, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    :cond_8
    return p2
.end method

.method private m(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->f:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/s;->d(Lcom/google/android/exoplayer2/extractor/l;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/s$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/s$a;-><init>(Lcom/google/android/exoplayer2/extractor/u;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/s;->e(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/s$a;)Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/s$a;->a:Lcom/google/android/exoplayer2/extractor/u;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/u;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    iget p1, p1, Lcom/google/android/exoplayer2/extractor/u;->c:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->m:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->i:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->l:Lcom/google/android/exoplayer2/extractor/u;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->d:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->k:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/u;->i([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x4

    .line 8
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method

.method private o(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/s;->j(Lcom/google/android/exoplayer2/extractor/l;)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->o:Lcom/google/android/exoplayer2/extractor/flac/b;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/a;->h(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 4
    :goto_1
    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->q:J

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->p:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/s;->c(Lcom/google/android/exoplayer2/extractor/l;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/s;->a(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/flac/d;->l(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/d;->g(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/d;->n(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/d;->o(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 7
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/d;->i(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 8
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/d;->m(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->h:Lcom/google/android/exoplayer2/extractor/m;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/d;->i:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
