.class public final Lcom/google/android/exoplayer2/extractor/ts/p;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/p$b;
    }
.end annotation


# static fields
.field private static final p:I = 0x6

.field private static final q:I = 0x7

.field private static final r:I = 0x8


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/ts/d0;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final e:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private final f:Lcom/google/android/exoplayer2/extractor/ts/u;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/android/exoplayer2/extractor/e0;

.field private k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

.field private l:Z

.field private m:J

.field private n:Z

.field private final o:Lcom/google/android/exoplayer2/util/h0;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/d0;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->a:Lcom/google/android/exoplayer2/extractor/ts/d0;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->h:[Z

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/u;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->o:Lcom/google/android/exoplayer2/util/h0;

    return-void
.end method

.method private a()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->j:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private g(JIIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output",
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    .line 4
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v3, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/b0;->i([BII)Lcom/google/android/exoplayer2/util/b0$b;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v4, v3, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v3, v3, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v4, v1, v3}, Lcom/google/android/exoplayer2/util/b0;->h([BII)Lcom/google/android/exoplayer2/util/b0$a;

    move-result-object v1

    .line 11
    iget v3, v2, Lcom/google/android/exoplayer2/util/b0$b;->a:I

    iget v4, v2, Lcom/google/android/exoplayer2/util/b0$b;->b:I

    iget v5, v2, Lcom/google/android/exoplayer2/util/b0$b;->c:I

    .line 12
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplayer2/util/e;->a(III)Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->j:Lcom/google/android/exoplayer2/extractor/e0;

    new-instance v5, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->i:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v5

    const-string v6, "video/avc"

    .line 15
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v5

    .line 16
    invoke-virtual {v5, v3}, Lcom/google/android/exoplayer2/Format$b;->I(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/b0$b;->e:I

    .line 17
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$b;->j0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/b0$b;->f:I

    .line 18
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$b;->Q(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v3

    iget v5, v2, Lcom/google/android/exoplayer2/util/b0$b;->g:F

    .line 19
    invoke-virtual {v3, v5}, Lcom/google/android/exoplayer2/Format$b;->a0(F)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v3

    .line 20
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 22
    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->f(Lcom/google/android/exoplayer2/util/b0$b;)V

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->e(Lcom/google/android/exoplayer2/util/b0$a;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/b0;->i([BII)Lcom/google/android/exoplayer2/util/b0$b;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->f(Lcom/google/android/exoplayer2/util/b0$b;)V

    .line 31
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget v0, v0, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v2, v1, v0}, Lcom/google/android/exoplayer2/util/b0;->h([BII)Lcom/google/android/exoplayer2/util/b0$a;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->e(Lcom/google/android/exoplayer2/util/b0$a;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 36
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/extractor/ts/u;->b(I)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 37
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v0, p4, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    iget p4, p4, Lcom/google/android/exoplayer2/extractor/ts/u;->e:I

    invoke-static {v0, p4}, Lcom/google/android/exoplayer2/util/b0;->k([BI)I

    move-result p4

    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->o:Lcom/google/android/exoplayer2/util/h0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ts/u;->d:[B

    invoke-virtual {v0, v1, p4}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 39
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->o:Lcom/google/android/exoplayer2/util/h0;

    const/4 v0, 0x4

    invoke-virtual {p4, v0}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 40
    iget-object p4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->a:Lcom/google/android/exoplayer2/extractor/ts/d0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->o:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p4, p5, p6, v0}, Lcom/google/android/exoplayer2/extractor/ts/d0;->a(JLcom/google/android/exoplayer2/util/h0;)V

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    iget-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->n:Z

    move-wide v2, p1

    move v4, p3

    .line 42
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->b(JIZZ)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->n:Z

    :cond_5
    return-void
.end method

.method private h([BII)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->a([BII)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->a([BII)V

    return-void
.end method

.method private i(JIJ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "sampleReader"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplayer2/extractor/ts/u;->e(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->h(JIJ)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 14

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/p;->a()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    .line 5
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->g:J

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->g:J

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->j:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplayer2/util/b0;->c([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/p;->h([BII)V

    return-void

    .line 9
    :cond_0
    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/b0;->f([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 10
    invoke-direct {p0, v2, v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/p;->h([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 11
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 12
    :goto_1
    iget-wide v12, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->m:J

    move-object v7, p0

    move-wide v8, v4

    .line 13
    invoke-direct/range {v7 .. v13}, Lcom/google/android/exoplayer2/extractor/ts/p;->g(JIIJ)V

    .line 14
    iget-wide v7, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->m:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/ts/p;->i(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->g:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->n:Z

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->h:[Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/b0;->a([Z)V

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->d:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->e:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->f:Lcom/google/android/exoplayer2/extractor/ts/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/u;->d()V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/ts/p$b;->g()V

    :cond_0
    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->c()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->j:Lcom/google/android/exoplayer2/extractor/e0;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/p$b;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->b:Z

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/ts/p$b;-><init>(Lcom/google/android/exoplayer2/extractor/e0;ZZ)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->k:Lcom/google/android/exoplayer2/extractor/ts/p$b;

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->a:Lcom/google/android/exoplayer2/extractor/ts/d0;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/d0;->b(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->m:J

    .line 2
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/p;->n:Z

    return-void
.end method
