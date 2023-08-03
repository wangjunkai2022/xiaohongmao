.class final Lcom/google/android/exoplayer2/extractor/ogg/b;
.super Lcom/google/android/exoplayer2/extractor/ogg/i;
.source "FlacReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ogg/b$a;
    }
.end annotation


# static fields
.field private static final t:B = -0x1t

.field private static final u:I = 0x4


# instance fields
.field private r:Lcom/google/android/exoplayer2/extractor/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/google/android/exoplayer2/extractor/ogg/b$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ogg/i;-><init>()V

    return-void
.end method

.method private n(Lcom/google/android/exoplayer2/util/h0;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    shr-int/2addr v0, v1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/h0;->T(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->N()J

    .line 4
    :cond_1
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/r;->j(Lcom/google/android/exoplayer2/util/h0;I)I

    move-result v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    return v0
.end method

.method private static o([B)Z
    .locals 2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static p(Lcom/google/android/exoplayer2/util/h0;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->a()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->G()I

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v0

    const-wide/32 v2, 0x464c4143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected f(Lcom/google/android/exoplayer2/util/h0;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/b;->o([B)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/b;->n(Lcom/google/android/exoplayer2/util/h0;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method protected i(Lcom/google/android/exoplayer2/util/h0;JLcom/google/android/exoplayer2/extractor/ogg/i$b;)Z
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->r:Lcom/google/android/exoplayer2/extractor/u;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    new-instance p2, Lcom/google/android/exoplayer2/extractor/u;

    const/16 p3, 0x11

    invoke-direct {p2, v0, p3}, Lcom/google/android/exoplayer2/extractor/u;-><init>([BI)V

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->r:Lcom/google/android/exoplayer2/extractor/u;

    const/16 p3, 0x9

    .line 5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result p1

    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/u;->i([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->a:Lcom/google/android/exoplayer2/Format;

    return v2

    :cond_0
    const/4 v3, 0x0

    .line 7
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0x7f

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/s;->h(Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/extractor/u$a;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/extractor/u;->c(Lcom/google/android/exoplayer2/extractor/u$a;)Lcom/google/android/exoplayer2/extractor/u;

    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->r:Lcom/google/android/exoplayer2/extractor/u;

    .line 11
    new-instance p3, Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplayer2/extractor/ogg/b$a;-><init>(Lcom/google/android/exoplayer2/extractor/u;Lcom/google/android/exoplayer2/extractor/u$a;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->s:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    return v2

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/ogg/b;->o([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->s:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/ogg/b$a;->d(J)V

    .line 15
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->s:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    iput-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->b:Lcom/google/android/exoplayer2/extractor/ogg/g;

    .line 16
    :cond_2
    iget-object p1, p4, Lcom/google/android/exoplayer2/extractor/ogg/i$b;->a:Lcom/google/android/exoplayer2/Format;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    return v3

    :cond_3
    return v2
.end method

.method protected l(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/extractor/ogg/i;->l(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->r:Lcom/google/android/exoplayer2/extractor/u;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/b;->s:Lcom/google/android/exoplayer2/extractor/ogg/b$a;

    :cond_0
    return-void
.end method
