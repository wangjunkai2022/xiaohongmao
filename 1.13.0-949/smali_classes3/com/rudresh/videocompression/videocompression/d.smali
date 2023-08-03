.class public Lcom/rudresh/videocompression/videocompression/d;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rudresh/videocompression/videocompression/d$b;
    }
.end annotation


# instance fields
.field private a:Lcom/rudresh/videocompression/videocompression/d$b;

.field private b:Lcom/rudresh/videocompression/videocompression/f;

.field private c:Ljava/io/FileOutputStream;

.field private d:Ljava/nio/channels/FileChannel;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/rudresh/videocompression/videocompression/k;",
            "[J>;"
        }
    .end annotation
.end field

.field private i:Ljava/nio/ByteBuffer;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    .line 3
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    .line 4
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    .line 5
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    .line 7
    iput-wide v1, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/rudresh/videocompression/videocompression/d;->g:Z

    .line 9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/d;->h:Ljava/util/HashMap;

    .line 10
    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private o()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    invoke-virtual {v3}, Lcom/rudresh/videocompression/videocompression/d$b;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 3
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    iget-object v3, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lcom/rudresh/videocompression/videocompression/d$b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 4
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 5
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/rudresh/videocompression/videocompression/d$b;->f(J)V

    .line 6
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    invoke-virtual {v0, v1, v2}, Lcom/rudresh/videocompression/videocompression/d$b;->e(J)V

    .line 7
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 8
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    return-void
.end method

.method public static p(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide p0

    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lcom/rudresh/videocompression/videocompression/d;->p(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;Z)I
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    invoke-virtual {v0, p1, p2}, Lcom/rudresh/videocompression/videocompression/f;->b(Landroid/media/MediaFormat;Z)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->i()[I

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 4
    aget v3, p1, v2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i$a;->b()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/i$a;->a()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/i$a;->c(I)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v0, Lcom/coremedia/iso/boxes/i$a;

    invoke-direct {v0, v4, v3}, Lcom/coremedia/iso/boxes/i$a;-><init>(II)V

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    new-instance p1, Lcom/coremedia/iso/boxes/i;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/i;-><init>()V

    .line 10
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/i;->x(Ljava/util/List;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected c()Lcom/coremedia/iso/boxes/s;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "isom"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "iso2"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "avc1"

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "mp41"

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v2, Lcom/coremedia/iso/boxes/s;

    const-wide/16 v3, 0x200

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/coremedia/iso/boxes/s;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v2
.end method

.method public d(Lcom/rudresh/videocompression/videocompression/f;Z)Lcom/rudresh/videocompression/videocompression/d;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->c()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    .line 3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/rudresh/videocompression/videocompression/d;->c()Lcom/coremedia/iso/boxes/s;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/a;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 6
    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/a;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    .line 7
    iget-wide v2, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    .line 8
    iput-boolean p2, p0, Lcom/rudresh/videocompression/videocompression/d;->j:Z

    .line 9
    new-instance p1, Lcom/rudresh/videocompression/videocompression/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/rudresh/videocompression/videocompression/d$b;-><init>(Lcom/rudresh/videocompression/videocompression/d$a;)V

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    const/4 p1, 0x4

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected e(Lcom/rudresh/videocompression/videocompression/f;)Lcom/coremedia/iso/boxes/h0;
    .locals 12

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/h0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h0;-><init>()V

    .line 2
    new-instance v1, Lcom/coremedia/iso/boxes/i0;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/i0;-><init>()V

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->J(Ljava/util/Date;)V

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->N(Ljava/util/Date;)V

    .line 5
    sget-object v2, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->M(Lcom/googlecode/mp4parser/util/l;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/rudresh/videocompression/videocompression/d;->r(Lcom/rudresh/videocompression/videocompression/f;)J

    move-result-wide v2

    .line 7
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/rudresh/videocompression/videocompression/k;

    .line 8
    invoke-virtual {v7}, Lcom/rudresh/videocompression/videocompression/k;->t()V

    .line 9
    invoke-virtual {v7}, Lcom/rudresh/videocompression/videocompression/k;->d()J

    move-result-wide v8

    mul-long v8, v8, v2

    invoke-virtual {v7}, Lcom/rudresh/videocompression/videocompression/k;->n()I

    move-result v7

    int-to-long v10, v7

    div-long/2addr v8, v10

    cmp-long v7, v8, v5

    if-lez v7, :cond_0

    move-wide v5, v8

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/i0;->L(J)V

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/i0;->V(J)V

    .line 12
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/i0;->O(J)V

    .line 13
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 14
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rudresh/videocompression/videocompression/k;

    .line 15
    invoke-virtual {p0, v2, p1}, Lcom/rudresh/videocompression/videocompression/d;->m(Lcom/rudresh/videocompression/videocompression/k;Lcom/rudresh/videocompression/videocompression/f;)Lcom/coremedia/iso/boxes/f1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected f(Lcom/rudresh/videocompression/videocompression/k;)Lcom/coremedia/iso/boxes/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/u0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/u0;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->i(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->l(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->b(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->j(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->h(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->k(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/rudresh/videocompression/videocompression/d;->g(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V

    return-object v0
.end method

.method protected g(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->l()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rudresh/videocompression/videocompression/h;

    .line 3
    invoke-virtual {v5}, Lcom/rudresh/videocompression/videocompression/h;->a()J

    move-result-wide v6

    cmp-long v8, v3, v1

    if-eqz v8, :cond_0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    move-wide v3, v1

    :cond_0
    cmp-long v8, v3, v1

    if-nez v8, :cond_1

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {v5}, Lcom/rudresh/videocompression/videocompression/h;->b()J

    move-result-wide v3

    add-long/2addr v3, v6

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance v0, Lcom/coremedia/iso/boxes/z0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/z0;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/z0;->w([J)V

    .line 11
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected h(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 16

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/v0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/v0;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/v0;->x(Ljava/util/List;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/rudresh/videocompression/videocompression/k;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v5, v1, :cond_4

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/rudresh/videocompression/videocompression/k;->l()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rudresh/videocompression/videocompression/h;

    .line 5
    invoke-virtual {v8}, Lcom/rudresh/videocompression/videocompression/h;->a()J

    move-result-wide v9

    .line 6
    invoke-virtual {v8}, Lcom/rudresh/videocompression/videocompression/h;->b()J

    move-result-wide v11

    add-long/2addr v9, v11

    add-int/2addr v6, v3

    add-int/lit8 v8, v1, -0x1

    if-eq v5, v8, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/rudresh/videocompression/videocompression/k;->l()Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/rudresh/videocompression/videocompression/h;

    .line 8
    invoke-virtual {v8}, Lcom/rudresh/videocompression/videocompression/h;->a()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_3

    if-eq v4, v6, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/v0;->w()Ljava/util/List;

    move-result-object v4

    new-instance v15, Lcom/coremedia/iso/boxes/v0$a;

    int-to-long v9, v7

    int-to-long v11, v6

    const-wide/16 v13, 0x1

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/coremedia/iso/boxes/v0$a;-><init>(JJJ)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v4, p2

    .line 10
    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected i(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 0

    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->j()Lcom/coremedia/iso/boxes/s0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected j(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->m()[J

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Lcom/coremedia/iso/boxes/c1;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/c1;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/c1;->w([J)V

    .line 5
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    :cond_0
    return-void
.end method

.method protected k(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/t0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/t0;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/t0;->A([J)V

    .line 3
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected l(Lcom/rudresh/videocompression/videocompression/k;Lcom/coremedia/iso/boxes/u0;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->k()[J

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 4
    aget-wide v3, p1, v2

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-nez v9, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/d1$a;->c(J)V

    goto :goto_1

    .line 7
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/d1$a;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/coremedia/iso/boxes/d1;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/d1;-><init>()V

    .line 10
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/d1;->x(Ljava/util/List;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-void
.end method

.method protected m(Lcom/rudresh/videocompression/videocompression/k;Lcom/rudresh/videocompression/videocompression/f;)Lcom/coremedia/iso/boxes/f1;
    .locals 8

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/f1;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/f1;-><init>()V

    .line 2
    new-instance v1, Lcom/coremedia/iso/boxes/g1;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/g1;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->M(Z)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->O(Z)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->Q(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    sget-object v3, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->S(Lcom/googlecode/mp4parser/util/l;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/rudresh/videocompression/videocompression/f;->f()Lcom/googlecode/mp4parser/util/l;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->S(Lcom/googlecode/mp4parser/util/l;)V

    :goto_0
    const/4 v3, 0x0

    .line 9
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->J(I)V

    .line 10
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->c()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/g1;->K(Ljava/util/Date;)V

    .line 11
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->d()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lcom/rudresh/videocompression/videocompression/d;->r(Lcom/rudresh/videocompression/videocompression/f;)J

    move-result-wide v6

    mul-long v4, v4, v6

    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->n()I

    move-result p2

    int-to-long v6, p2

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->L(J)V

    .line 12
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->f()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->N(D)V

    .line 13
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->q()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->W(D)V

    .line 14
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->R(I)V

    .line 15
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/g1;->T(Ljava/util/Date;)V

    .line 16
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->o()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->U(J)V

    .line 17
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->p()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/g1;->V(F)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 19
    new-instance p2, Lcom/coremedia/iso/boxes/d0;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/d0;-><init>()V

    .line 20
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 21
    new-instance v1, Lcom/coremedia/iso/boxes/e0;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/e0;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->c()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/e0;->A(Ljava/util/Date;)V

    .line 23
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->d()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/e0;->B(J)V

    .line 24
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->n()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/e0;->E(J)V

    const-string v3, "eng"

    .line 25
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/e0;->C(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 27
    new-instance v1, Lcom/coremedia/iso/boxes/x;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/x;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->r()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SoundHandle"

    goto :goto_1

    :cond_1
    const-string v3, "VideoHandle"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/x;->z(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/x;->y(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 31
    new-instance v1, Lcom/coremedia/iso/boxes/f0;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/f0;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/k;->h()Lcom/coremedia/iso/boxes/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 33
    new-instance v3, Lcom/coremedia/iso/boxes/n;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/n;-><init>()V

    .line 34
    new-instance v4, Lcom/coremedia/iso/boxes/o;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/o;-><init>()V

    .line 35
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 36
    new-instance v5, Lcom/coremedia/iso/boxes/l;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/l;-><init>()V

    .line 37
    invoke-virtual {v5, v2}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 38
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 39
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/rudresh/videocompression/videocompression/d;->f(Lcom/rudresh/videocompression/videocompression/k;)Lcom/coremedia/iso/boxes/d;

    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 42
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    return-object v0
.end method

.method public n()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    invoke-virtual {v0}, Lcom/rudresh/videocompression/videocompression/d$b;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/rudresh/videocompression/videocompression/d;->o()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    invoke-virtual {v0}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rudresh/videocompression/videocompression/k;

    .line 4
    invoke-virtual {v1}, Lcom/rudresh/videocompression/videocompression/k;->l()Ljava/util/ArrayList;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 6
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rudresh/videocompression/videocompression/h;

    invoke-virtual {v6}, Lcom/rudresh/videocompression/videocompression/h;->b()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/d;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    invoke-virtual {p0, v0}, Lcom/rudresh/videocompression/videocompression/d;->e(Lcom/rudresh/videocompression/videocompression/f;)Lcom/coremedia/iso/boxes/h0;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/d;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 10
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 11
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 12
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 13
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public q(I)J
    .locals 2

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    invoke-virtual {v0, p1}, Lcom/rudresh/videocompression/videocompression/f;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r(Lcom/rudresh/videocompression/videocompression/f;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rudresh/videocompression/videocompression/k;

    invoke-virtual {v0}, Lcom/rudresh/videocompression/videocompression/k;->n()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/rudresh/videocompression/videocompression/f;->g()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rudresh/videocompression/videocompression/k;

    .line 4
    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/k;->n()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lcom/rudresh/videocompression/videocompression/d;->p(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public s(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/d;->g:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    invoke-virtual {v0, v1, v2}, Lcom/rudresh/videocompression/videocompression/d$b;->e(J)V

    .line 3
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    iget-object v4, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v4}, Lcom/rudresh/videocompression/videocompression/d$b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 4
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    iget-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    invoke-virtual {v0, v4, v5}, Lcom/rudresh/videocompression/videocompression/d$b;->f(J)V

    .line 5
    iget-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    .line 6
    iget-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    .line 7
    iput-boolean v3, p0, Lcom/rudresh/videocompression/videocompression/d;->g:Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/d;->a:Lcom/rudresh/videocompression/videocompression/d$b;

    invoke-virtual {v0}, Lcom/rudresh/videocompression/videocompression/d$b;->b()J

    move-result-wide v4

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/rudresh/videocompression/videocompression/d$b;->e(J)V

    .line 9
    iget-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    const-wide/32 v6, 0x8000

    const/4 v0, 0x1

    cmp-long v8, v4, v6

    if-ltz v8, :cond_2

    .line 10
    iget-boolean v4, p0, Lcom/rudresh/videocompression/videocompression/d;->j:Z

    if-eqz v4, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/rudresh/videocompression/videocompression/d;->o()V

    .line 12
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/d;->g:Z

    .line 13
    :cond_1
    iput-wide v1, p0, Lcom/rudresh/videocompression/videocompression/d;->f:J

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v4, p0, Lcom/rudresh/videocompression/videocompression/d;->b:Lcom/rudresh/videocompression/videocompression/f;

    iget-wide v5, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    invoke-virtual {v4, p1, v5, v6, p3}, Lcom/rudresh/videocompression/videocompression/f;->a(IJLandroid/media/MediaCodec$BufferInfo;)V

    if-eqz p4, :cond_3

    .line 15
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 p4, p4, -0x4

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 17
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 18
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    iget-object p4, p0, Lcom/rudresh/videocompression/videocompression/d;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 19
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 20
    :cond_3
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 21
    :goto_1
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, p4

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 23
    iget-wide p1, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/rudresh/videocompression/videocompression/d;->e:J

    if-eqz v0, :cond_4

    .line 24
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 25
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->c:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 26
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/d;->d:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    return-wide p1

    :cond_4
    return-wide v1
.end method
