.class public final Lcom/google/android/exoplayer2/extractor/ts/c0;
.super Ljava/lang/Object;
.source "SectionReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/i0;


# static fields
.field private static final j:I = 0x3

.field private static final k:I = 0x20

.field private static final l:I = 0x1002


# instance fields
.field private final d:Lcom/google/android/exoplayer2/extractor/ts/b0;

.field private final e:Lcom/google/android/exoplayer2/util/h0;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/ts/b0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->d:Lcom/google/android/exoplayer2/extractor/ts/b0;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->d:Lcom/google/android/exoplayer2/extractor/ts/b0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ts/b0;->a(Lcom/google/android/exoplayer2/util/u0;Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/h0;I)V
    .locals 6

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    .line 3
    :goto_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    if-eqz v3, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    .line 5
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 6
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    .line 7
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p2

    if-lez p2, :cond_9

    .line 8
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    const/4 v3, 0x3

    if-ge p2, v3, :cond_6

    if-nez p2, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p2

    .line 10
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->e()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/16 v4, 0xff

    if-ne p2, v4, :cond_4

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    return-void

    .line 12
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p2

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    rsub-int/lit8 v4, v4, 0x3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 13
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    invoke-virtual {p1, v4, v5, p2}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 14
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    if-ne v4, v3, :cond_3

    .line 15
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 16
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    .line 17
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result p2

    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v4

    and-int/lit16 v5, p2, 0x80

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 20
    :goto_3
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->h:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v4

    add-int/2addr p2, v3

    .line 21
    iput p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    .line 22
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    if-ge p2, v3, :cond_3

    const/16 p2, 0x1002

    .line 23
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/h0;->b()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 25
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/util/h0;->c(I)V

    goto/16 :goto_2

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 27
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v3

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    invoke-virtual {p1, v3, v4, p2}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 28
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    .line 29
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    if-ne v3, p2, :cond_3

    .line 30
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->h:Z

    if-eqz v3, :cond_8

    .line 31
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object p2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    invoke-static {p2, v1, v3, v2}, Lcom/google/android/exoplayer2/util/z0;->w([BIII)I

    move-result p2

    if-eqz p2, :cond_7

    .line 32
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    return-void

    .line 33
    :cond_7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->f:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    goto :goto_4

    .line 34
    :cond_8
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v3, p2}, Lcom/google/android/exoplayer2/util/h0;->R(I)V

    .line 35
    :goto_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 36
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->d:Lcom/google/android/exoplayer2/extractor/ts/b0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->e:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {p2, v3}, Lcom/google/android/exoplayer2/extractor/ts/b0;->b(Lcom/google/android/exoplayer2/util/h0;)V

    .line 37
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->g:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/c0;->i:Z

    return-void
.end method
