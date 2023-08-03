.class public final Lcom/google/android/exoplayer2/extractor/jpeg/a;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/k;


# static fields
.field private static final A:I = 0x400

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2

.field private static final q:I = 0x4

.field private static final r:I = 0x5

.field private static final s:I = 0x6

.field private static final t:I = 0x6

.field private static final u:J = 0x45786966L

.field private static final v:I = 0xffd8

.field private static final w:I = 0xffda

.field private static final x:I = 0xffe0

.field private static final y:I = 0xffe1

.field private static final z:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"


# instance fields
.field private final d:Lcom/google/android/exoplayer2/util/h0;

.field private e:Lcom/google/android/exoplayer2/extractor/m;

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/google/android/exoplayer2/extractor/l;

.field private l:Lcom/google/android/exoplayer2/extractor/jpeg/c;

.field private m:Lcom/google/android/exoplayer2/extractor/mp4/k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    return-void
.end method

.method private e(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    return-void
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e:Lcom/google/android/exoplayer2/extractor/m;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/m;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/m;->t()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e:Lcom/google/android/exoplayer2/extractor/m;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/b0$b;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/b0$b;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/m;->q(Lcom/google/android/exoplayer2/extractor/b0;)V

    const/4 v0, 0x6

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    return-void
.end method

.method private static g(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/e;->a(Ljava/lang/String;)Lcom/google/android/exoplayer2/extractor/jpeg/b;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/jpeg/b;->a(J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p0

    return-object p0
.end method

.method private varargs h([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e:Lcom/google/android/exoplayer2/extractor/m;

    .line 2
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/m;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/m;->f(II)Lcom/google/android/exoplayer2/extractor/e0;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    new-instance v2, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v2, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$b;->X(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/e0;->d(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method private i(Lcom/google/android/exoplayer2/extractor/l;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p1

    return p1
.end method

.method private j(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g:I

    const v0, 0xffda

    if-ne p1, v0, :cond_1

    .line 4
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f()V

    goto :goto_0

    :cond_1
    const v0, 0xffd0

    if-lt p1, v0, :cond_2

    const v0, 0xffd9

    if-le p1, v0, :cond_3

    :cond_2
    const v0, 0xff01

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    :cond_3
    :goto_0
    return-void
.end method

.method private k(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g:I

    const/4 v1, 0x0

    const v2, 0xffe1

    if-ne v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h:I

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/h0;-><init>(I)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h:I

    invoke-interface {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->j:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getLength()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g(Ljava/lang/String;J)Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->j:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    if-eqz p1, :cond_1

    .line 8
    iget-wide v2, p1, Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h:I

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->o(I)V

    .line 10
    :cond_1
    :goto_0
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    return-void
.end method

.method private l(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/l;->readFully([BII)V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h:I

    .line 4
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    return-void
.end method

.method private m(Lcom/google/android/exoplayer2/extractor/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v0, v1, v2, v2}, Lcom/google/android/exoplayer2/extractor/l;->g([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->h()V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 8
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/c;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/extractor/jpeg/c;-><init>(Lcom/google/android/exoplayer2/extractor/l;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->b(Lcom/google/android/exoplayer2/extractor/l;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/d;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e:Lcom/google/android/exoplayer2/extractor/m;

    .line 11
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/extractor/m;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/jpeg/d;-><init>(JLcom/google/android/exoplayer2/extractor/m;)V

    .line 12
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->d(Lcom/google/android/exoplayer2/extractor/m;)V

    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->n()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f()V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    .line 1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->j:Lcom/google/android/exoplayer2/metadata/mp4/MotionPhotoMetadata;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->h([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp4/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp4/k;->a(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/extractor/l;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g:I

    const v2, 0xffe0

    if-ne v0, v2, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e(Lcom/google/android/exoplayer2/extractor/l;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i(Lcom/google/android/exoplayer2/extractor/l;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->g:I

    const v2, 0xffe1

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    .line 6
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/l;->k(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/h0;->O(I)V

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/h0;->d()[B

    move-result-object v0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/l;->s([BII)V

    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->I()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->d:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/h0;->M()I

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->f:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x6

    if-ne v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->k:Lcom/google/android/exoplayer2/extractor/l;

    if-eq p1, v0, :cond_3

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->k:Lcom/google/android/exoplayer2/extractor/l;

    .line 5
    new-instance v0, Lcom/google/android/exoplayer2/extractor/jpeg/c;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    invoke-direct {v0, p1, v3, v4}, Lcom/google/android/exoplayer2/extractor/jpeg/c;-><init>(Lcom/google/android/exoplayer2/extractor/l;J)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp4/k;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l:Lcom/google/android/exoplayer2/extractor/jpeg/c;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/mp4/k;->c(Lcom/google/android/exoplayer2/extractor/l;Lcom/google/android/exoplayer2/extractor/z;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 8
    iget-wide v0, p2, Lcom/google/android/exoplayer2/extractor/z;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/extractor/z;->a:J

    :cond_4
    return p1

    .line 9
    :cond_5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/l;->getPosition()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->i:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_6

    .line 10
    iput-wide v5, p2, Lcom/google/android/exoplayer2/extractor/z;->a:J

    return v2

    .line 11
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 12
    :cond_7
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->k(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 13
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->l(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1

    .line 14
    :cond_9
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/a;->j(Lcom/google/android/exoplayer2/extractor/l;)V

    return v1
.end method

.method public d(Lcom/google/android/exoplayer2/extractor/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->e:Lcom/google/android/exoplayer2/extractor/m;

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/a;->m:Lcom/google/android/exoplayer2/extractor/mp4/k;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/mp4/k;->release()V

    :cond_0
    return-void
.end method
