.class public final Lcom/google/android/exoplayer2/source/chunk/q;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/chunk/g;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/q$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "MediaPrsrChunkExtractor"

.field public static final j:Lcom/google/android/exoplayer2/source/chunk/g$a;


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/mediaparser/c;

.field private final b:Lcom/google/android/exoplayer2/source/mediaparser/a;

.field private final c:Landroid/media/MediaParser;

.field private final d:Lcom/google/android/exoplayer2/source/chunk/q$b;

.field private final e:Lcom/google/android/exoplayer2/extractor/j;

.field private f:J

.field private g:Lcom/google/android/exoplayer2/source/chunk/g$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:[Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/source/chunk/p;->a:Lcom/google/android/exoplayer2/source/chunk/p;

    sput-object v0, Lcom/google/android/exoplayer2/source/chunk/q;->j:Lcom/google/android/exoplayer2/source/chunk/g$a;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/Format;Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/mediaparser/c;

    const/4 v1, 0x1

    invoke-direct {v0, p2, p1, v1}, Lcom/google/android/exoplayer2/source/mediaparser/c;-><init>(Lcom/google/android/exoplayer2/Format;IZ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/mediaparser/a;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/mediaparser/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->b:Lcom/google/android/exoplayer2/source/mediaparser/a;

    .line 4
    iget-object p1, p2, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a0;->q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.mediaparser.MatroskaParser"

    goto :goto_0

    :cond_0
    const-string p1, "android.media.mediaparser.FragmentedMp4Parser"

    .line 6
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/mediaparser/c;->r(Ljava/lang/String;)V

    .line 7
    invoke-static {p1, v0}, Landroid/media/MediaParser;->createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->c:Landroid/media/MediaParser;

    .line 8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "android.media.mediaparser.matroska.disableCuesSeeking"

    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaparser.inBandCryptoInfo"

    .line 9
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaparser.includeSupplementalData"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaparser.eagerlyExposeTrackType"

    .line 11
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaparser.exposeDummySeekMap"

    .line 12
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string v0, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    .line 14
    invoke-virtual {p1, v0, p2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 16
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 17
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/mediaparser/b;->a(Lcom/google/android/exoplayer2/Format;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 19
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/q;->c:Landroid/media/MediaParser;

    const-string v0, "android.media.mediaParser.exposeCaptionFormats"

    invoke-virtual {p2, v0, p1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 20
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/mediaparser/c;->p(Ljava/util/List;)V

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/q$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/source/chunk/q$b;-><init>(Lcom/google/android/exoplayer2/source/chunk/q;Lcom/google/android/exoplayer2/source/chunk/q$a;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->d:Lcom/google/android/exoplayer2/source/chunk/q$b;

    .line 22
    new-instance p1, Lcom/google/android/exoplayer2/extractor/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->e:Lcom/google/android/exoplayer2/extractor/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->f:J

    return-void
.end method

.method public static synthetic e(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/e0;)Lcom/google/android/exoplayer2/source/chunk/g;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/chunk/q;->j(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/e0;)Lcom/google/android/exoplayer2/source/chunk/g;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/source/chunk/g$b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->g:Lcom/google/android/exoplayer2/source/chunk/g$b;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/extractor/j;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->e:Lcom/google/android/exoplayer2/extractor/j;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/source/chunk/q;[Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->h:[Lcom/google/android/exoplayer2/Format;

    return-object p1
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/source/chunk/q;)Lcom/google/android/exoplayer2/source/mediaparser/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    return-object p0
.end method

.method private static synthetic j(ILcom/google/android/exoplayer2/Format;ZLjava/util/List;Lcom/google/android/exoplayer2/extractor/e0;)Lcom/google/android/exoplayer2/source/chunk/g;
    .locals 0

    .line 1
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a0;->r(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcom/google/android/exoplayer2/source/chunk/q;

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/exoplayer2/source/chunk/q;-><init>(ILcom/google/android/exoplayer2/Format;Ljava/util/List;)V

    return-object p2

    :cond_0
    const-string p0, "MediaPrsrChunkExtractor"

    const-string p1, "Ignoring an unsupported text track."

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/w;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private k()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/c;->f()Landroid/media/MediaParser$SeekMap;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/chunk/q;->c:Landroid/media/MediaParser;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {v5, v0}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    .line 4
    iput-wide v3, p0, Lcom/google/android/exoplayer2/source/chunk/q;->f:J

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/q;->k()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->b:Lcom/google/android/exoplayer2/source/mediaparser/a;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/source/mediaparser/a;->c(Lcom/google/android/exoplayer2/upstream/i;J)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->c:Landroid/media/MediaParser;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->b:Lcom/google/android/exoplayer2/source/mediaparser/a;

    invoke-virtual {p1, v0}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/source/chunk/g$b;JJ)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/source/chunk/g$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->g:Lcom/google/android/exoplayer2/source/chunk/g$b;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    invoke-virtual {p1, p4, p5}, Lcom/google/android/exoplayer2/source/mediaparser/c;->q(J)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/q;->d:Lcom/google/android/exoplayer2/source/chunk/q$b;

    invoke-virtual {p1, p4}, Lcom/google/android/exoplayer2/source/mediaparser/c;->o(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 4
    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/chunk/q;->f:J

    return-void
.end method

.method public c()Lcom/google/android/exoplayer2/extractor/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->a:Lcom/google/android/exoplayer2/source/mediaparser/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/c;->d()Lcom/google/android/exoplayer2/extractor/e;

    move-result-object v0

    return-object v0
.end method

.method public d()[Lcom/google/android/exoplayer2/Format;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->h:[Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/q;->c:Landroid/media/MediaParser;

    invoke-virtual {v0}, Landroid/media/MediaParser;->release()V

    return-void
.end method
