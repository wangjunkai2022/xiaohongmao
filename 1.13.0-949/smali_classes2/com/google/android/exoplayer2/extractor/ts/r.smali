.class public final Lcom/google/android/exoplayer2/extractor/ts/r;
.super Ljava/lang/Object;
.source "Id3Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final g:Ljava/lang/String; = "Id3Reader"


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/h0;

.field private b:Lcom/google/android/exoplayer2/extractor/e0;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    .line 4
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v5

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    .line 9
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/16 v1, 0x49

    .line 12
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->a:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->F()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    return-void

    .line 18
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->e:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 20
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->c()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->b:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    const-string v0, "application/id3"

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 7
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->b:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->b:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public f(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 1
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->c:Z

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->d:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->e:I

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/r;->f:I

    return-void
.end method
