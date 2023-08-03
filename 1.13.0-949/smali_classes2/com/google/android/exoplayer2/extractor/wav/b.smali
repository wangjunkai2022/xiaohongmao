.class public final Lcom/google/android/exoplayer2/extractor/wav/b;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/wav/b$a;,
        Lcom/google/android/exoplayer2/extractor/wav/b$c;,
        Lcom/google/android/exoplayer2/extractor/wav/b$b;
    }
.end annotation


# static fields
.field private static final i:I = 0xa

.field public static final j:Lcom/google/android/exoplayer2/extractor/q;


# instance fields
.field private d:Lcom/google/android/exoplayer2/extractor/m;

.field private e:Lcom/google/android/exoplayer2/extractor/e0;

.field private f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

.field private g:I

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/wav/a;->b:Lcom/google/android/exoplayer2/extractor/wav/a;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/wav/b;->j:Lcom/google/android/exoplayer2/extractor/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->g:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->h:J

    return-void
.end method

.method public static synthetic e()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/wav/b;->g()[Lcom/google/android/exoplayer2/extractor/k;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic g()[Lcom/google/android/exoplayer2/extractor/k;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/k;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/wav/b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/wav/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/wav/b$b;->c(J)V

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/d;->a(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/wav/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/wav/b;->f()V

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    if-nez p2, :cond_5

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/d;->a(Lcom/google/android/exoplayer2/extractor/l;)Lcom/google/android/exoplayer2/extractor/wav/c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4
    iget p2, v3, Lcom/google/android/exoplayer2/extractor/wav/c;->a:I

    const/16 v0, 0x11

    if-ne p2, v0, :cond_0

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/extractor/wav/b$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    invoke-direct {p2, v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/wav/b$a;-><init>(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/wav/c;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 6
    new-instance p2, Lcom/google/android/exoplayer2/extractor/wav/b$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 v5, -0x1

    const-string v4, "audio/g711-alaw"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/b$c;-><init>(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/wav/c;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 7
    new-instance p2, Lcom/google/android/exoplayer2/extractor/wav/b$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    const/4 v5, -0x1

    const-string v4, "audio/g711-mlaw"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/b$c;-><init>(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/wav/c;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    goto :goto_0

    .line 8
    :cond_2
    iget v0, v3, Lcom/google/android/exoplayer2/extractor/wav/c;->f:I

    invoke-static {p2, v0}, Lcom/google/android/exoplayer2/audio/o0;->a(II)I

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/extractor/wav/b$c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    const-string v4, "audio/raw"

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/wav/b$c;-><init>(Lcom/google/android/exoplayer2/extractor/m;Lcom/google/android/exoplayer2/extractor/e0;Lcom/google/android/exoplayer2/extractor/wav/c;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    goto :goto_0

    .line 10
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    iget p2, v3, Lcom/google/android/exoplayer2/extractor/wav/c;->a:I

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unsupported WAV format type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    :goto_0
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->g:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 13
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/wav/d;->b(Lcom/google/android/exoplayer2/extractor/l;)Landroid/util/Pair;

    move-result-object p2

    .line 14
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->g:I

    .line 15
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->h:J

    .line 16
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->g:I

    invoke-interface {p2, v3, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/b$b;->a(IJ)V

    goto :goto_1

    .line 17
    :cond_6
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-nez p2, :cond_7

    .line 18
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->g:I

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 19
    :cond_7
    :goto_1
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->h:J

    const-wide/16 v3, -0x1

    const/4 p2, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 20
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->h:J

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 21
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->f:Lcom/google/android/exoplayer2/extractor/wav/b$b;

    invoke-interface {v3, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/wav/b$b;->b(Lcom/google/android/exoplayer2/extractor/l;J)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->d:Lcom/google/android/exoplayer2/extractor/m;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/wav/b;->e:Lcom/google/android/exoplayer2/extractor/e0;

    .line 3
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
