.class public final Lcom/google/android/exoplayer2/extractor/mp3/f;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp3/f$a;
    }
.end annotation


# static fields
.field public static final A:I = 0x4

.field private static final B:Lcom/google/android/exoplayer2/metadata/id3/b$a;

.field private static final C:I = 0x20000

.field private static final D:I = 0x8000

.field private static final E:I = 0xa

.field private static final F:I = -0x1f400

.field private static final G:I = 0x58696e67

.field private static final H:I = 0x496e666f

.field private static final I:I = 0x56425249

.field private static final J:I = 0x0

.field public static final x:Lcom/google/android/exoplayer2/extractor/q;

.field public static final y:I = 0x1

.field public static final z:I = 0x2


# instance fields
.field private final d:I

.field private final e:J

.field private final f:Lcom/google/android/exoplayer2/util/h0;

.field private final g:Lcom/google/android/exoplayer2/audio/g0$a;

.field private final h:Lcom/google/android/exoplayer2/extractor/w;

.field private final i:Lcom/google/android/exoplayer2/extractor/x;

.field private final j:Lcom/google/android/exoplayer2/extractor/e0;

.field private k:Lcom/google/android/exoplayer2/extractor/m;

.field private l:Lcom/google/android/exoplayer2/extractor/e0;

.field private m:Lcom/google/android/exoplayer2/extractor/e0;

.field private n:I

.field private o:Lcom/google/android/exoplayer2/metadata/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private p:J

.field private q:J

.field private r:J

.field private s:I

.field private t:Lcom/google/android/exoplayer2/extractor/mp3/g;

.field private u:Z

.field private v:Z

.field private w:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp3/d;->b:Lcom/google/android/exoplayer2/extractor/mp3/d;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/f;->x:Lcom/google/android/exoplayer2/extractor/q;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/extractor/mp3/e;->a:Lcom/google/android/exoplayer2/extractor/mp3/e;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/f;->B:Lcom/google/android/exoplayer2/metadata/id3/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->d:I

    .line 5
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->e:J

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/h0;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    .line 7
    new-instance p1, Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/g0$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/w;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/w;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/extractor/x;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/x;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    .line 11
    new-instance p1, Lcom/google/android/exoplayer2/extractor/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->j:Lcom/google/android/exoplayer2/extractor/e0;

    .line 12
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mp3/f;->o()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(IIIII)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/f;->p(IIIII)Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->l:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->k:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private h(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->r(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/f;->q(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/c;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->u:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/g$a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/mp3/g$a;-><init>()V

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->d:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/b0;->i()J

    move-result-wide v2

    .line 7
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/g;->f()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->i()J

    move-result-wide v2

    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/g;->f()J

    move-result-wide v0

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->l(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    move-wide v5, v0

    move-wide v9, v2

    .line 11
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp3/b;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_6

    .line 13
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->g()Z

    move-result v1

    if-nez v1, :cond_7

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    .line 14
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->k(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private i(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    const-wide/32 v2, 0xf4240

    mul-long p1, p1, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/g0$a;->d:I

    int-to-long v2, v2

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/g0$a;->a(I)Z

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/extractor/mp3/a;-><init>(JJLcom/google/android/exoplayer2/audio/g0$a;)V

    return-object v0
.end method

.method private static l(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 5
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    const-string v4, "TLEN"

    .line 4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object p0, v2, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static m(Lcom/google/android/exoplayer2/util/h0;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->f()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static n(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic o()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/f;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static synthetic p(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static q(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/c;
    .locals 4
    .param p0    # Lcom/google/android/exoplayer2/metadata/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->l(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/c;->a(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lcom/google/android/exoplayer2/extractor/mp3/c;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private r(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v5, Lcom/google/android/exoplayer2/util/h0;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    .line 2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v1, v0, Lcom/google/android/exoplayer2/audio/g0$a;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/16 v3, 0x15

    if-eqz v1, :cond_0

    .line 4
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g0$a;->e:I

    if-eq v0, v2, :cond_1

    const/16 v3, 0x24

    const/16 v7, 0x24

    goto :goto_0

    .line 5
    :cond_0
    iget v0, v0, Lcom/google/android/exoplayer2/audio/g0$a;->e:I

    if-eq v0, v2, :cond_2

    :cond_1
    const/16 v7, 0x15

    goto :goto_0

    :cond_2
    const/16 v3, 0xd

    const/16 v7, 0xd

    .line 6
    :goto_0
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp3/f;->m(Lcom/google/android/exoplayer2/util/h0;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/h;->a(JJLcom/google/android/exoplayer2/audio/g0$a;Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/extractor/mp3/h;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    goto :goto_2

    .line 10
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/i;->a(JJLcom/google/android/exoplayer2/audio/g0$a;Lcom/google/android/exoplayer2/util/h0;)Lcom/google/android/exoplayer2/extractor/mp3/i;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/w;->a()Z

    move-result v1

    if-nez v1, :cond_6

    .line 12
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    add-int/lit16 v7, v7, 0x8d

    .line 13
    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->J()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/w;->d(I)Z

    .line 17
    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    if-eqz v0, :cond_7

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/b0;->g()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    .line 19
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->k(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method private s(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/g;->f()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->j()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 6
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/l;->g([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p1, v1

    return p1

    :catch_0
    return v1
.end method

.method private t(Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->v(Lcom/google/android/exoplayer2/extractor/l;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->h(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/mp3/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->k:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    new-instance v1, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/g0$a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    const/16 v2, 0x1000

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->W(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/g0$a;->e:I

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/g0$a;->d:I

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/w;->a:I

    .line 11
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->M(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/w;->b:I

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->N(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    .line 13
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->d:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->r:J

    goto :goto_2

    .line 17
    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->r:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 18
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->r:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 20
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 21
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->u(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result p1

    return p1
.end method

.method private u(Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->s(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v0

    .line 6
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->n:I

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/f;->n(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/g0;->j(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/g0$a;->a(I)Z

    .line 9
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/g;->h(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    .line 11
    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->e:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    const-wide/16 v4, 0x0

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/g;->h(J)J

    move-result-wide v4

    .line 13
    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->e:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v4, v0, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    .line 15
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    instance-of v5, v4, Lcom/google/android/exoplayer2/extractor/mp3/b;

    if-eqz v5, :cond_4

    .line 16
    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp3/b;

    .line 17
    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    iget v0, v0, Lcom/google/android/exoplayer2/audio/g0$a;->g:I

    int-to-long v7, v0

    add-long/2addr v5, v7

    .line 18
    invoke-direct {p0, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/f;->i(J)J

    move-result-wide v5

    .line 19
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v7

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    .line 20
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/exoplayer2/extractor/mp3/b;->b(JJ)V

    .line 21
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->v:Z

    if-eqz v0, :cond_4

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->w:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/exoplayer2/extractor/mp3/b;->a(J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->v:Z

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->l:Lcom/google/android/exoplayer2/extractor/e0;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    goto :goto_1

    .line 24
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 25
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->n:I

    return v3

    .line 26
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/e0;->b(Lcom/google/android/exoplayer2/upstream/i;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    .line 27
    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    if-lez v0, :cond_6

    return v3

    .line 28
    :cond_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    .line 29
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->i(J)J

    move-result-wide v5

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget v8, p1, Lcom/google/android/exoplayer2/audio/g0$a;->c:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 30
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/e0;->e(JIIILcom/google/android/exoplayer2/extractor/e0$a;)V

    .line 31
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/g0$a;->g:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    .line 32
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    return v3
.end method

.method private v(Lcom/google/android/exoplayer2/extractor/l;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v1, v3

    if-nez v8, :cond_5

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->d:I

    and-int/2addr v1, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 4
    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp3/f;->B:Lcom/google/android/exoplayer2/metadata/id3/b$a;

    .line 5
    :goto_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/metadata/id3/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->o:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_3

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->h:Lcom/google/android/exoplayer2/extractor/w;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/extractor/w;->c(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 7
    :cond_3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->j()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 8
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->s(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-lez v3, :cond_6

    goto :goto_6

    .line 10
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 11
    :cond_7
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v8, v7}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    .line 12
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->f:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/h0;->o()I

    move-result v8

    if-eqz v1, :cond_8

    int-to-long v9, v1

    .line 13
    invoke-static {v8, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp3/f;->n(IJ)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 14
    :cond_8
    invoke-static {v8}, Lcom/google/android/exoplayer2/audio/g0;->j(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v7

    .line 15
    :cond_a
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 16
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    add-int v3, v2, v1

    .line 17
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    goto :goto_5

    .line 18
    :cond_c
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v6, :cond_e

    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->g:Lcom/google/android/exoplayer2/audio/g0$a;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/audio/g0$a;->a(I)Z

    move v1, v8

    goto :goto_8

    :cond_e
    if-ne v3, v5, :cond_10

    :goto_6
    if-eqz p2, :cond_f

    add-int/2addr v2, v4

    .line 20
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    goto :goto_7

    .line 21
    :cond_f
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 22
    :goto_7
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->n:I

    return v6

    :cond_10
    :goto_8
    add-int/lit8 v9, v9, -0x4

    .line 23
    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    goto :goto_4
.end method


# virtual methods
.method public a(JJ)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->n:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->p:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    .line 4
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->s:I

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->w:J

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/b;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp3/b;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/b;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->v:Z

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->j:Lcom/google/android/exoplayer2/extractor/e0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->v(Lcom/google/android/exoplayer2/extractor/l;Z)Z

    move-result p1

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
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/f;->g()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->t(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    instance-of p2, p2, Lcom/google/android/exoplayer2/extractor/mp3/b;

    if-eqz p2, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->q:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/f;->i(J)J

    move-result-wide v0

    .line 5
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/b0;->i()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp3/b;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/b;->c(J)V

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->k:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->t:Lcom/google/android/exoplayer2/extractor/mp3/g;

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    :cond_0
    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->k:Lcom/google/android/exoplayer2/extractor/m;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->l:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->m:Lcom/google/android/exoplayer2/extractor/e0;

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->k:Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/f;->u:Z

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
