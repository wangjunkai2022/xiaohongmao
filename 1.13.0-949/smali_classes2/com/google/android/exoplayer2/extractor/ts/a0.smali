.class public final Lcom/google/android/exoplayer2/extractor/ts/a0;
.super Ljava/lang/Object;
.source "PsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/a0$a;
    }
.end annotation


# static fields
.field public static final A:I = 0xf0

.field public static final o:Lcom/google/android/exoplayer2/extractor/q;

.field static final p:I = 0x1ba

.field static final q:I = 0x1bb

.field static final r:I = 0x1

.field static final s:I = 0x1b9

.field private static final t:I = 0x100

.field private static final u:J = 0x100000L

.field private static final v:J = 0x2000L

.field public static final w:I = 0xbd

.field public static final x:I = 0xc0

.field public static final y:I = 0xe0

.field public static final z:I = 0xe0


# instance fields
.field private final d:Lcom/google/android/exoplayer2/util/u0;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/a0$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/exoplayer2/util/h0;

.field private final g:Lcom/google/android/exoplayer2/extractor/ts/y;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/google/android/exoplayer2/extractor/ts/x;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/google/android/exoplayer2/extractor/m;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/ts/z;->b:Lcom/google/android/exoplayer2/extractor/ts/z;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/a0;->o:Lcom/google/android/exoplayer2/extractor/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/util/u0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u0;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/a0;-><init>(Lcom/google/android/exoplayer2/util/u0;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/u0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->e:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/y;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/y;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/ts/a0;->f()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic f()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/a0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/a0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private g(J)V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->n:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->n:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/y;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/y;->d()Lcom/google/android/exoplayer2/util/u0;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/y;->c()J

    move-result-wide v7

    move-object v5, v0

    move-wide v9, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/extractor/ts/x;-><init>(Lcom/google/android/exoplayer2/util/u0;JJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->l:Lcom/google/android/exoplayer2/extractor/ts/x;

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/a;->b()Lcom/google/android/exoplayer2/extractor/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/b0$b;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/y;->c()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u0;->e()J

    move-result-wide p1

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u0;->c()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u0;->c()J

    move-result-wide p1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/util/u0;->g(J)V

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->l:Lcom/google/android/exoplayer2/extractor/ts/x;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/a;->h(J)V

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/ts/a0$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/a0$a;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v3, 0x1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    const/16 v7, 0x1ba

    if-eq v7, v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x4

    aget-byte v7, v1, v0

    and-int/lit16 v7, v7, 0xc4

    const/16 v8, 0x44

    if-eq v7, v8, :cond_1

    return v2

    :cond_1
    const/4 v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_2

    return v2

    :cond_2
    aget-byte v7, v1, v6

    and-int/2addr v7, v0

    if-eq v7, v0, :cond_3

    return v2

    :cond_3
    const/16 v0, 0x9

    aget-byte v0, v1, v0

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_4

    return v2

    :cond_4
    const/16 v0, 0xc

    aget-byte v0, v1, v0

    and-int/2addr v0, v5

    if-eq v0, v5, :cond_5

    return v2

    :cond_5
    const/16 v0, 0xd

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x7

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    .line 3
    invoke-interface {p1, v1, v2, v5}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    aget-byte p1, v1, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x10

    aget-byte v0, v1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v6

    or-int/2addr p1, v0

    aget-byte v0, v1, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    if-ne v3, p1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_1

    .line 3
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/ts/y;->e()Z

    move-result v7

    if-nez v7, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->g:Lcom/google/android/exoplayer2/extractor/ts/y;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/y;->g(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/a0;->g(J)V

    .line 6
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->l:Lcom/google/android/exoplayer2/extractor/ts/x;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/extractor/a;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->l:Lcom/google/android/exoplayer2/extractor/ts/x;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    if-eqz v6, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->j()J

    move-result-wide v6

    sub-long/2addr v0, v6

    goto :goto_1

    :cond_3
    move-wide v0, v2

    :goto_1
    const/4 p2, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v6, v0, v2

    if-gez v6, :cond_4

    return p2

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v5, v1, v4}, Lcom/google/android/exoplayer2/extractor/l;->g([BIIZ)Z

    move-result v0

    if-nez v0, :cond_5

    return p2

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    const/16 v1, 0x1b9

    if-ne v0, v1, :cond_6

    return p2

    :cond_6
    const/16 p2, 0x1ba

    if-ne v0, p2, :cond_7

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p1, p2, v5, v0}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 14
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 15
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p2

    and-int/lit8 p2, p2, 0x7

    add-int/lit8 p2, p2, 0xe

    .line 16
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    return v5

    :cond_7
    const/16 p2, 0x1bb

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-ne v0, p2, :cond_8

    .line 17
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 19
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p2

    add-int/2addr p2, v2

    .line 20
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    return v5

    :cond_8
    and-int/lit16 p2, v0, -0x100

    shr-int/lit8 p2, p2, 0x8

    if-eq p2, v4, :cond_9

    .line 21
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    return v5

    :cond_9
    and-int/lit16 p2, v0, 0xff

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ts/a0$a;

    .line 23
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->h:Z

    if-nez v3, :cond_f

    if-nez v0, :cond_d

    const/4 v3, 0x0

    const/16 v6, 0xbd

    if-ne p2, v6, :cond_a

    .line 24
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/c;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/c;-><init>()V

    .line 25
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->i:Z

    .line 26
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->k:J

    goto :goto_2

    :cond_a
    and-int/lit16 v6, p2, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_b

    .line 27
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/t;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/t;-><init>()V

    .line 28
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->i:Z

    .line 29
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->k:J

    goto :goto_2

    :cond_b
    and-int/lit16 v6, p2, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_c

    .line 30
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/n;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/extractor/ts/n;-><init>()V

    .line 31
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->j:Z

    .line 32
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->k:J

    :cond_c
    :goto_2
    if-eqz v3, :cond_d

    .line 33
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/i0$e;

    const/16 v6, 0x100

    invoke-direct {v0, p2, v6}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;-><init>(II)V

    .line 34
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v3, v6, v0}, Lcom/google/android/exoplayer2/extractor/ts/m;->d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/a0$a;

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->d:Lcom/google/android/exoplayer2/util/u0;

    invoke-direct {v0, v3, v6}, Lcom/google/android/exoplayer2/extractor/ts/a0$a;-><init>(Lcom/google/android/exoplayer2/extractor/ts/m;Lcom/google/android/exoplayer2/util/u0;)V

    .line 36
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->e:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_d
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->i:Z

    if-eqz p2, :cond_e

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->j:Z

    if-eqz p2, :cond_e

    .line 38
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->k:J

    const-wide/16 v8, 0x2000

    add-long/2addr v6, v8

    goto :goto_3

    :cond_e
    const-wide/32 v6, 0x100000

    .line 39
    :goto_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v8

    cmp-long p2, v8, v6

    if-lez p2, :cond_f

    .line 40
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->h:Z

    .line 41
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    .line 42
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p2

    invoke-interface {p1, p2, v5, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 43
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v5}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 44
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p2

    add-int/2addr p2, v2

    if-nez v0, :cond_10

    .line 45
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    goto :goto_4

    .line 46
    :cond_10
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 47
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    invoke-interface {p1, v1, v5, p2}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 48
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 49
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/a0$a;->a(Lcom/google/android/exoplayer2/util/h0;)V

    .line 50
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    :goto_4
    return v5
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/a0;->m:Lcom/google/android/exoplayer2/extractor/m;

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
