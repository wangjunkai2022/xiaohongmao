.class public Lcom/googlecode/mp4parser/authoring/tracks/o;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "EC3TrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/o$b;
    }
.end annotation


# static fields
.field private static final l:J = 0x14L


# instance fields
.field private final d:Lcom/googlecode/mp4parser/e;

.field e:Lcom/googlecode/mp4parser/authoring/i;

.field f:Lcom/coremedia/iso/boxes/s0;

.field private g:I

.field private h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/o$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field private k:[J


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/e;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 5
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    iget v1, v1, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    .line 7
    new-instance v3, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->f:Lcom/coremedia/iso/boxes/s0;

    .line 8
    new-instance v3, Lcom/coremedia/iso/boxes/sampleentry/c;

    const-string v4, "ec-3"

    invoke-direct {v3, v4}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 9
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/sampleentry/c;->s0(I)V

    int-to-long v4, v1

    .line 10
    invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/c;->x0(J)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/coremedia/iso/boxes/sampleentry/a;->d(I)V

    const/16 v1, 0x10

    .line 12
    invoke-virtual {v3, v1}, Lcom/coremedia/iso/boxes/sampleentry/c;->y0(I)V

    .line 13
    new-instance v1, Lcom/googlecode/mp4parser/boxes/e;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/e;-><init>()V

    .line 14
    iget-object v6, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 15
    iget-object v7, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [I

    .line 16
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 17
    iget-object v8, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 18
    iget v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->g:I

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/e;->x(I)V

    .line 19
    invoke-virtual {v3, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 20
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->f:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 21
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->l(Ljava/util/Date;)V

    .line 22
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->r(Ljava/util/Date;)V

    .line 23
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/mp4parser/authoring/i;->s(J)V

    .line 24
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->u(F)V

    const-wide/16 v0, 0x0

    .line 25
    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/e;->S(J)V

    .line 26
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/o;->d()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->j:Ljava/util/List;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->k:[J

    const-wide/16 v0, 0x600

    .line 28
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void

    .line 29
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    .line 30
    iget v10, v8, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    if-eq v10, v2, :cond_3

    .line 31
    new-instance v10, Lcom/googlecode/mp4parser/boxes/e$a;

    invoke-direct {v10}, Lcom/googlecode/mp4parser/boxes/e$a;-><init>()V

    .line 32
    iget v11, v8, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    .line 33
    iget v11, v8, Lcom/googlecode/mp4parser/boxes/e$a;->b:I

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->b:I

    .line 34
    iget v11, v8, Lcom/googlecode/mp4parser/boxes/e$a;->c:I

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->c:I

    .line 35
    iget v11, v8, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    .line 36
    iget v11, v8, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    .line 37
    iput v0, v10, Lcom/googlecode/mp4parser/boxes/e$a;->f:I

    .line 38
    iget v11, v8, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->k:I

    aget v12, v6, v11

    iput v12, v10, Lcom/googlecode/mp4parser/boxes/e$a;->g:I

    .line 39
    aget v11, v7, v11

    iput v11, v10, Lcom/googlecode/mp4parser/boxes/e$a;->h:I

    .line 40
    iput v0, v10, Lcom/googlecode/mp4parser/boxes/e$a;->i:I

    .line 41
    invoke-virtual {v1, v10}, Lcom/googlecode/mp4parser/boxes/e;->s(Lcom/googlecode/mp4parser/boxes/e$a;)V

    .line 42
    :cond_3
    iget v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->g:I

    iget v11, v8, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->l:I

    add-int/2addr v10, v11

    iput v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->g:I

    .line 43
    iget v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->h:I

    iget v8, v8, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->j:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->h:I

    goto/16 :goto_2

    .line 44
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    .line 45
    iget v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    if-ne v10, v2, :cond_1

    .line 46
    iget v10, v9, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->k:I

    aget v11, v6, v10

    add-int/2addr v11, v2

    aput v11, v6, v10

    .line 47
    iget v9, v9, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->o:I

    shr-int/lit8 v11, v9, 0x6

    and-int/lit16 v11, v11, 0x100

    shr-int/lit8 v9, v9, 0x5

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v9, v11

    aput v9, v7, v10

    goto/16 :goto_1

    .line 48
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 49
    :cond_6
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/o;->h()Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 50
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_8

    if-nez v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 52
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    .line 53
    iget v6, v3, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    if-eq v6, v2, :cond_7

    iget v5, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->k:I

    iget v6, v3, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->k:I

    if-ne v5, v6, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    .line 54
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/googlecode/mp4parser/authoring/tracks/o;)Lcom/googlecode/mp4parser/e;
    .locals 0

    iget-object p0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    return-object p0
.end method

.method static synthetic b(Lcom/googlecode/mp4parser/authoring/tracks/o;)I
    .locals 0

    iget p0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->h:I

    return p0
.end method

.method private d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->size()J

    move-result-wide v0

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->h:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->h:I

    mul-int v3, v3, v2

    .line 4
    new-instance v4, Lcom/googlecode/mp4parser/authoring/tracks/o$a;

    invoke-direct {v4, p0, v3}, Lcom/googlecode/mp4parser/authoring/tracks/o$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/o;I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private h()Lcom/googlecode/mp4parser/authoring/tracks/o$b;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/e;->C()J

    move-result-wide v1

    const/16 v3, 0xc8

    .line 2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 3
    iget-object v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    invoke-interface {v4, v3}, Lcom/googlecode/mp4parser/e;->read(Ljava/nio/ByteBuffer;)I

    .line 4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 5
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;

    invoke-direct {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v3, 0x10

    .line 6
    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0xb77

    if-eq v5, v7, :cond_0

    return-object v6

    .line 7
    :cond_0
    new-instance v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;

    invoke-direct {v5}, Lcom/googlecode/mp4parser/authoring/tracks/o$b;-><init>()V

    const/4 v7, 0x2

    .line 8
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v8

    iput v8, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    const/4 v8, 0x3

    .line 9
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v9

    iput v9, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->k:I

    const/16 v9, 0xb

    .line 10
    invoke-virtual {v4, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    .line 11
    iput v9, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->j:I

    .line 12
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v9

    iput v9, v5, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    const/4 v11, -0x1

    if-ne v9, v8, :cond_1

    .line 13
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v11

    const/4 v9, 0x3

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v9

    :goto_0
    const/4 v13, 0x6

    if-eqz v9, :cond_5

    if-eq v9, v10, :cond_4

    if-eq v9, v7, :cond_3

    if-eq v9, v8, :cond_2

    const/4 v14, 0x0

    goto :goto_1

    :cond_2
    const/4 v14, 0x6

    goto :goto_1

    :cond_3
    const/4 v14, 0x3

    goto :goto_1

    :cond_4
    const/4 v14, 0x2

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    .line 15
    :goto_1
    iget v15, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->j:I

    .line 16
    div-int v16, v13, v14

    mul-int v15, v15, v16

    iput v15, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->j:I

    .line 17
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v15

    iput v15, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    .line 18
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v15

    iput v15, v5, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    const/4 v15, 0x5

    .line 19
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    iput v6, v5, Lcom/googlecode/mp4parser/boxes/e$a;->b:I

    .line 20
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 21
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    const/16 v12, 0x8

    if-ne v10, v6, :cond_6

    .line 22
    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 23
    :cond_6
    iget v6, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    if-nez v6, :cond_7

    .line 24
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 25
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_7

    .line 26
    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 27
    :cond_7
    iget v6, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    if-ne v10, v6, :cond_8

    .line 28
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_8

    .line 29
    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->o:I

    .line 30
    :cond_8
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_23

    .line 31
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    if-le v3, v7, :cond_9

    .line 32
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 33
    :cond_9
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    and-int/lit8 v6, v3, 0x1

    if-ne v10, v6, :cond_a

    if-le v3, v7, :cond_a

    .line 34
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 35
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 36
    :cond_a
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    const/4 v6, 0x4

    and-int/2addr v3, v6

    if-lez v3, :cond_b

    .line 37
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 38
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 39
    :cond_b
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->e:I

    if-ne v10, v3, :cond_c

    .line 40
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_c

    .line 41
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 42
    :cond_c
    iget v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->n:I

    if-nez v3, :cond_23

    .line 43
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_d

    .line 44
    invoke-virtual {v4, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 45
    :cond_d
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    if-nez v3, :cond_e

    .line 46
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_e

    .line 47
    invoke-virtual {v4, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 48
    :cond_e
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_f

    .line 49
    invoke-virtual {v4, v13}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 50
    :cond_f
    invoke-virtual {v4, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_10

    .line 51
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    goto/16 :goto_3

    :cond_10
    if-ne v7, v3, :cond_11

    const/16 v3, 0xc

    .line 52
    invoke-virtual {v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    goto/16 :goto_3

    :cond_11
    if-ne v8, v3, :cond_1d

    .line 53
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    .line 54
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_1a

    .line 55
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 56
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_12

    .line 57
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 58
    :cond_12
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_13

    .line 59
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 60
    :cond_13
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_14

    .line 61
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 62
    :cond_14
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_15

    .line 63
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 64
    :cond_15
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_16

    .line 65
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 66
    :cond_16
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_17

    .line 67
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 68
    :cond_17
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_18

    .line 69
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 70
    :cond_18
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_1a

    .line 71
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_19

    .line 72
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 73
    :cond_19
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v13

    if-ne v10, v13, :cond_1a

    .line 74
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 75
    :cond_1a
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_1b

    .line 76
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 77
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_1b

    const/4 v6, 0x7

    .line 78
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 79
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_1b

    .line 80
    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    :cond_1b
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v13, v3, 0x2

    if-lt v6, v13, :cond_1c

    .line 81
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->a()I

    goto :goto_3

    .line 82
    :cond_1c
    invoke-virtual {v4, v12}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 83
    :cond_1d
    :goto_3
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    if-ge v3, v7, :cond_23

    .line 84
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    const/16 v6, 0xe

    if-ne v10, v3, :cond_1e

    .line 85
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 86
    :cond_1e
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->d:I

    if-nez v3, :cond_1f

    .line 87
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_1f

    .line 88
    invoke-virtual {v4, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    .line 89
    :cond_1f
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_23

    if-nez v9, :cond_20

    .line 90
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    goto :goto_5

    :cond_20
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v14, :cond_21

    goto :goto_5

    .line 91
    :cond_21
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v6

    if-ne v10, v6, :cond_22

    .line 92
    invoke-virtual {v4, v15}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 93
    :cond_23
    :goto_5
    invoke-virtual {v4, v10}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    if-ne v10, v3, :cond_24

    .line 94
    invoke-virtual {v4, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/c;->c(I)I

    move-result v3

    iput v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->c:I

    .line 95
    :cond_24
    iget v3, v5, Lcom/googlecode/mp4parser/boxes/e$a;->a:I

    if-eqz v3, :cond_2c

    if-eq v3, v10, :cond_2b

    if-eq v3, v7, :cond_2a

    if-eq v3, v8, :cond_25

    goto :goto_6

    :cond_25
    if-eqz v11, :cond_29

    if-eq v11, v10, :cond_28

    if-eq v11, v7, :cond_27

    if-eq v11, v8, :cond_26

    goto :goto_6

    :cond_26
    const/4 v3, 0x0

    .line 96
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_27
    const/16 v3, 0x3e80

    .line 97
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_28
    const/16 v3, 0x5622

    .line 98
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_29
    const/16 v3, 0x5dc0

    .line 99
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_2a
    const/16 v3, 0x7d00

    .line 100
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_2b
    const v3, 0xac44

    .line 101
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    goto :goto_6

    :cond_2c
    const v3, 0xbb80

    .line 102
    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    .line 103
    :goto_6
    iget v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->m:I

    if-nez v3, :cond_2d

    const/4 v4, 0x0

    return-object v4

    :cond_2d
    int-to-double v3, v3

    const-wide/high16 v6, 0x4098000000000000L    # 1536.0

    div-double/2addr v3, v6

    .line 104
    iget v6, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->j:I

    int-to-double v7, v6

    mul-double v3, v3, v7

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double v3, v3, v7

    double-to-int v3, v3

    iput v3, v5, Lcom/googlecode/mp4parser/authoring/tracks/o$b;->l:I

    .line 105
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    int-to-long v6, v6

    add-long/2addr v1, v6

    invoke-interface {v3, v1, v2}, Lcom/googlecode/mp4parser/e;->S(J)V

    return-object v5
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->j:Ljava/util/List;

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->e:Lcom/googlecode/mp4parser/authoring/i;

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->k:[J

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->d:Lcom/googlecode/mp4parser/e;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/e;->close()V

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "soun"

    return-object v0
.end method

.method public m0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EC3TrackImpl{bitrate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitStreamInfos="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/o;->f:Lcom/coremedia/iso/boxes/s0;

    return-object v0
.end method

.method public z()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
