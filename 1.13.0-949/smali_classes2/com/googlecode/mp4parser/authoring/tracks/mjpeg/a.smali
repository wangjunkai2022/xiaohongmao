.class public Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "OneJpegPerIframe.java"


# instance fields
.field d:[Ljava/io/File;

.field e:Lcom/googlecode/mp4parser/authoring/i;

.field f:[J

.field g:Lcom/coremedia/iso/boxes/s0;

.field h:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/io/File;Lcom/googlecode/mp4parser/authoring/h;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/googlecode/mp4parser/authoring/i;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 3
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->d:[Ljava/io/File;

    .line 4
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v2

    array-length v2, v2

    array-length v3, v1

    if-ne v2, v3, :cond_d

    const/4 v2, 0x0

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3}, Ljavax/imageio/ImageIO;->read(Ljava/io/File;)Ljava/awt/image/BufferedImage;

    move-result-object v3

    .line 6
    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/i;->v(D)V

    .line 7
    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {v3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    int-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/mp4parser/authoring/i;->n(D)V

    .line 8
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:Lcom/googlecode/mp4parser/authoring/i;

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/i;->s(J)V

    .line 9
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v3

    .line 10
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v4

    .line 11
    array-length v5, v4

    new-array v5, v5, [J

    iput-object v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->f:[J

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    move-wide v10, v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 12
    :goto_0
    array-length v12, v3

    if-lt v8, v12, :cond_b

    .line 13
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->f:[J

    array-length v4, v3

    sub-int/2addr v4, v7

    aput-wide v10, v3, v4

    .line 14
    new-instance v3, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->g:Lcom/coremedia/iso/boxes/s0;

    .line 15
    new-instance v3, Lcom/coremedia/iso/boxes/sampleentry/h;

    const-string v4, "mp4v"

    invoke-direct {v3, v4}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->g:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 17
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/b;

    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/b;-><init>()V

    const-string v8, "038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102"

    .line 18
    invoke-static {v8}, Lcom/coremedia/iso/e;->a(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/a;->y(Ljava/nio/ByteBuffer;)V

    const/4 v9, -0x1

    .line 19
    invoke-static {v8}, Lcom/coremedia/iso/e;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/m;->a(ILjava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/b;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;

    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/b;->B(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;)V

    .line 20
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 21
    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->h:[J

    const/4 v1, 0x0

    .line 22
    :goto_1
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->h:[J

    array-length v4, v3

    if-lt v1, v4, :cond_a

    .line 23
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v8, 0x0

    move-wide v10, v8

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 24
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 25
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/coremedia/iso/boxes/i;->v(Ljava/util/List;)[I

    move-result-object v1

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    const/4 v3, 0x0

    .line 26
    :goto_3
    array-length v4, v1

    if-lt v3, v4, :cond_0

    .line 27
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 28
    aget v1, v1, v2

    int-to-double v1, v1

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v1, v3

    add-double/2addr v10, v1

    goto :goto_4

    .line 29
    :cond_0
    aget v4, v1, v3

    int-to-long v12, v4

    add-long/2addr v12, v5

    long-to-int v4, v12

    aput v4, v1, v3

    .line 30
    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v4

    aget-wide v12, v4, v3

    add-long/2addr v5, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    :goto_4
    cmpg-double v1, v10, v8

    if-gez v1, :cond_2

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/a;->T()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/googlecode/mp4parser/authoring/c;

    neg-double v3, v10

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v5

    long-to-double v5, v5

    mul-double v3, v3, v5

    double-to-long v13, v3

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/a;->getDuration()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v5

    long-to-double v5, v5

    div-double v19, v3, v5

    move-object v12, v2

    invoke-direct/range {v12 .. v20}, Lcom/googlecode/mp4parser/authoring/c;-><init>(JJDD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    cmpl-double v1, v10, v8

    if-lez v1, :cond_3

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/a;->T()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/googlecode/mp4parser/authoring/c;

    const-wide/16 v13, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v3

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move-object v12, v2

    move-wide/from16 v19, v10

    invoke-direct/range {v12 .. v20}, Lcom/googlecode/mp4parser/authoring/c;-><init>(JJDD)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/a;->T()Ljava/util/List;

    move-result-object v1

    new-instance v11, Lcom/googlecode/mp4parser/authoring/c;

    const-wide/16 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/a;->getDuration()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->h()J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v9, v12

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/googlecode/mp4parser/authoring/c;-><init>(JJDD)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    return-void

    .line 34
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/authoring/c;

    .line 35
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->b()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v16, v12, v14

    if-nez v16, :cond_6

    if-eqz v7, :cond_5

    goto :goto_6

    .line 36
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot accept edit list for processing (1)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_6
    :goto_6
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->b()J

    move-result-wide v12

    cmp-long v16, v12, v5

    if-ltz v16, :cond_8

    if-eqz v1, :cond_7

    goto :goto_7

    .line 38
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot accept edit list for processing (2)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_8
    :goto_7
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->b()J

    move-result-wide v12

    cmp-long v16, v12, v14

    if-nez v16, :cond_9

    .line 40
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->c()D

    move-result-wide v12

    add-double/2addr v10, v12

    goto/16 :goto_2

    .line 41
    :cond_9
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->b()J

    move-result-wide v12

    long-to-double v12, v12

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/c;->d()J

    move-result-wide v14

    long-to-double v14, v14

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    const/4 v1, 0x0

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v4, v1, 0x1

    int-to-long v8, v4

    .line 42
    aput-wide v8, v3, v1

    move v1, v4

    goto/16 :goto_1

    .line 43
    :cond_b
    array-length v12, v4

    if-ge v9, v12, :cond_c

    int-to-long v12, v8

    aget-wide v14, v4, v9

    cmp-long v16, v12, v14

    if-nez v16, :cond_c

    .line 44
    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->f:[J

    add-int/lit8 v13, v9, -0x1

    aput-wide v10, v12, v13

    add-int/lit8 v9, v9, 0x1

    move-wide v10, v5

    .line 45
    :cond_c
    aget-wide v12, v3, v8

    add-long/2addr v10, v12

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 46
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of sync samples doesn\'t match the number of stills ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;

    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;)V

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->e:Lcom/googlecode/mp4parser/authoring/i;

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->f:[J

    return-object v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "vide"

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->g:Lcom/coremedia/iso/boxes/s0;

    return-object v0
.end method

.method public z()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/mjpeg/a;->h:[J

    return-object v0
.end method
