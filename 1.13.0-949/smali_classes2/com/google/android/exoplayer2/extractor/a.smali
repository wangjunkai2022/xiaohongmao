.class public abstract Lcom/google/android/exoplayer2/extractor/a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/a$a;,
        Lcom/google/android/exoplayer2/extractor/a$e;,
        Lcom/google/android/exoplayer2/extractor/a$c;,
        Lcom/google/android/exoplayer2/extractor/a$d;,
        Lcom/google/android/exoplayer2/extractor/a$b;,
        Lcom/google/android/exoplayer2/extractor/a$f;
    }
.end annotation


# static fields
.field private static final e:J = 0x40000L


# instance fields
.field protected final a:Lcom/google/android/exoplayer2/extractor/a$a;

.field protected final b:Lcom/google/android/exoplayer2/extractor/a$f;

.field protected c:Lcom/google/android/exoplayer2/extractor/a$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:I


# direct methods
.method protected constructor <init>(Lcom/google/android/exoplayer2/extractor/a$d;Lcom/google/android/exoplayer2/extractor/a$f;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/a;->d:I

    .line 4
    new-instance v15, Lcom/google/android/exoplayer2/extractor/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/extractor/a$a;-><init>(Lcom/google/android/exoplayer2/extractor/a$d;JJJJJJ)V

    iput-object v15, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    return-void
.end method


# virtual methods
.method protected a(J)Lcom/google/android/exoplayer2/extractor/a$c;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/google/android/exoplayer2/extractor/a$c;

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    move-wide/from16 v2, p1

    .line 2
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a$a;->k(J)J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$a;->a(Lcom/google/android/exoplayer2/extractor/a$a;)J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$a;->b(Lcom/google/android/exoplayer2/extractor/a$a;)J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 5
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$a;->c(Lcom/google/android/exoplayer2/extractor/a$a;)J

    move-result-wide v10

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 6
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$a;->d(Lcom/google/android/exoplayer2/extractor/a$a;)J

    move-result-wide v12

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$a;->j(Lcom/google/android/exoplayer2/extractor/a$a;)J

    move-result-wide v14

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/exoplayer2/extractor/a$c;-><init>(JJJJJJJ)V

    return-object v16
.end method

.method public final b()Lcom/google/android/exoplayer2/extractor/b0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->a:Lcom/google/android/exoplayer2/extractor/a$a;

    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/a$c;

    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->b(Lcom/google/android/exoplayer2/extractor/a$c;)J

    move-result-wide v1

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->c(Lcom/google/android/exoplayer2/extractor/a$c;)J

    move-result-wide v3

    .line 5
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->d(Lcom/google/android/exoplayer2/extractor/a$c;)J

    move-result-wide v5

    sub-long/2addr v3, v1

    .line 6
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/a;->d:I

    int-to-long v7, v7

    const/4 v9, 0x0

    cmp-long v10, v3, v7

    if-gtz v10, :cond_0

    .line 7
    invoke-virtual {p0, v9, v1, v2}, Lcom/google/android/exoplayer2/extractor/a;->e(ZJ)V

    .line 8
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/google/android/exoplayer2/extractor/a;->g(Lcom/google/android/exoplayer2/extractor/l;JLcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, v5, v6}, Lcom/google/android/exoplayer2/extractor/a;->i(Lcom/google/android/exoplayer2/extractor/l;J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/a;->g(Lcom/google/android/exoplayer2/extractor/l;JLcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 12
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    .line 13
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->e(Lcom/google/android/exoplayer2/extractor/a$c;)J

    move-result-wide v2

    invoke-interface {v1, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a$f;->a(Lcom/google/android/exoplayer2/extractor/l;J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->a(Lcom/google/android/exoplayer2/extractor/a$e;)I

    move-result v2

    const/4 v3, -0x3

    if-eq v2, v3, :cond_5

    const/4 v3, -0x2

    if-eq v2, v3, :cond_4

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_2

    .line 15
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/exoplayer2/extractor/a;->i(Lcom/google/android/exoplayer2/extractor/l;J)Z

    const/4 v0, 0x1

    .line 16
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    .line 17
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/a;->e(ZJ)V

    .line 18
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v0

    .line 19
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/a;->g(Lcom/google/android/exoplayer2/extractor/l;JLcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid case"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->b(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v4

    .line 22
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/a$c;->f(Lcom/google/android/exoplayer2/extractor/a$c;JJ)V

    goto :goto_0

    .line 23
    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->b(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v2

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/a$e;->c(Lcom/google/android/exoplayer2/extractor/a$e;)J

    move-result-wide v4

    .line 24
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/extractor/a$c;->g(Lcom/google/android/exoplayer2/extractor/a$c;JJ)V

    goto/16 :goto_0

    .line 25
    :cond_5
    invoke-virtual {p0, v9, v5, v6}, Lcom/google/android/exoplayer2/extractor/a;->e(ZJ)V

    .line 26
    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/extractor/a;->g(Lcom/google/android/exoplayer2/extractor/l;JLcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    return p1
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final e(ZJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->b:Lcom/google/android/exoplayer2/extractor/a$f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/a$f;->b()V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/a;->f(ZJ)V

    return-void
.end method

.method protected f(ZJ)V
    .locals 0

    return-void
.end method

.method protected final g(Lcom/google/android/exoplayer2/extractor/l;JLcom/google/android/exoplayer2/extractor/z;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iput-wide p2, p4, Lcom/google/android/exoplayer2/extractor/z;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final h(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/a$c;->a(Lcom/google/android/exoplayer2/extractor/a$c;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/a;->a(J)Lcom/google/android/exoplayer2/extractor/a$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/a;->c:Lcom/google/android/exoplayer2/extractor/a$c;

    return-void
.end method

.method protected final i(Lcom/google/android/exoplayer2/extractor/l;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    long-to-int p3, p2

    .line 2
    invoke-interface {p1, p3}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
