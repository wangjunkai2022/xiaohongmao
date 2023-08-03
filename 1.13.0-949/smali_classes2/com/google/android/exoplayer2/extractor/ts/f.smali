.class public final Lcom/google/android/exoplayer2/extractor/ts/f;
.super Ljava/lang/Object;
.source "Ac4Reader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/m;


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/g0;

.field private final b:Lcom/google/android/exoplayer2/util/h0;

.field private final c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/google/android/exoplayer2/extractor/e0;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:J

.field private k:Lcom/google/android/exoplayer2/Format;

.field private l:I

.field private m:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/f;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/g0;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/g0;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->a:Lcom/google/android/exoplayer2/util/g0;

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/util/h0;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/g0;->a:[B

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    .line 6
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    .line 7
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->h:Z

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->i:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/util/h0;[BI)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/h0;->k([BII)V

    .line 3
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private g()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->a:Lcom/google/android/exoplayer2/util/g0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/g0;->q(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->a:Lcom/google/android/exoplayer2/util/g0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/c;->d(Lcom/google/android/exoplayer2/util/g0;)Lcom/google/android/exoplayer2/audio/c$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->k:Lcom/google/android/exoplayer2/Format;

    const-string v2, "audio/ac4"

    if-eqz v1, :cond_0

    iget v3, v0, Lcom/google/android/exoplayer2/audio/c$b;->c:I

    iget v4, v1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ne v3, v4, :cond_0

    iget v3, v0, Lcom/google/android/exoplayer2/audio/c$b;->b:I

    iget v4, v1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-ne v3, v4, :cond_0

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/c$b;->c:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/audio/c$b;->b:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->c:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->k:Lcom/google/android/exoplayer2/Format;

    .line 12
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 13
    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/audio/c$b;->d:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->l:I

    const-wide/32 v1, 0xf4240

    .line 14
    iget v0, v0, Lcom/google/android/exoplayer2/audio/c$b;->e:I

    int-to-long v3, v0

    mul-long v3, v3, v1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->k:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v0, v0

    div-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->j:J

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/util/h0;)Z
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    .line 2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->h:Z

    const/16 v2, 0xac

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->h:Z

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 5
    :goto_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->h:Z

    const/16 v2, 0x40

    const/16 v4, 0x41

    if-eq v0, v2, :cond_4

    if-ne v0, v4, :cond_0

    :cond_4
    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    .line 6
    :cond_5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->i:Z

    return v3

    :cond_6
    return v1
.end method


# virtual methods
.method public b(Lcom/google/android/exoplayer2/util/h0;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    if-lez v0, :cond_5

    .line 3
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->l:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 6
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    .line 7
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->l:I

    if-ne v2, v7, :cond_0

    .line 8
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->m:J

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 9
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->m:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->m:J

    .line 10
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/16 v3, 0x10

    invoke-direct {p0, p1, v0, v3}, Lcom/google/android/exoplayer2/extractor/ts/f;->a(Lcom/google/android/exoplayer2/util/h0;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/f;->g()V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/e0;->c(Lcom/google/android/exoplayer2/util/h0;I)V

    .line 15
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    goto :goto_0

    .line 16
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/f;->h(Lcom/google/android/exoplayer2/util/h0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/16 v4, -0x54

    aput-byte v4, v0, v1

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->b:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->i:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x41

    goto :goto_1

    :cond_4
    const/16 v1, 0x40

    :goto_1
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 20
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->f:I

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->g:I

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->h:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->i:Z

    return-void
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/ts/i0$e;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/i0$e;->c()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->e:Lcom/google/android/exoplayer2/extractor/e0;

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/f;->m:J

    return-void
.end method
