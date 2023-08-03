.class public Lcom/rudresh/videocompression/videocompression/k;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rudresh/videocompression/videocompression/k$a;
    }
.end annotation


# static fields
.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rudresh/videocompression/videocompression/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:[I

.field private e:Ljava/lang/String;

.field private f:Lcom/coremedia/iso/boxes/a;

.field private g:Lcom/coremedia/iso/boxes/s0;

.field private h:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Ljava/util/Date;

.field private k:I

.field private l:I

.field private m:F

.field private n:[J

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/rudresh/videocompression/videocompression/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const v1, 0x17700

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/rudresh/videocompression/videocompression/k;->b:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    .line 3
    iput-wide v3, v0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    .line 5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lcom/rudresh/videocompression/videocompression/k;->j:Ljava/util/Date;

    const/4 v3, 0x0

    .line 6
    iput v3, v0, Lcom/rudresh/videocompression/videocompression/k;->m:F

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 8
    iput-boolean v3, v0, Lcom/rudresh/videocompression/videocompression/k;->q:Z

    move/from16 v4, p1

    int-to-long v4, v4

    .line 9
    iput-wide v4, v0, Lcom/rudresh/videocompression/videocompression/k;->a:J

    .line 10
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/k;->p:Z

    const/4 v4, 0x5

    const/16 v6, 0x40

    const-string v7, "mime"

    const/16 v8, 0x10

    const/4 v9, 0x2

    if-nez v2, :cond_1c

    const-string v2, "width"

    .line 11
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/k;->l:I

    const-string v2, "height"

    .line 12
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/rudresh/videocompression/videocompression/k;->k:I

    const v2, 0x15f90

    .line 13
    iput v2, v0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    .line 14
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    const-string v2, "vide"

    .line 15
    iput-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->e:Ljava/lang/String;

    .line 16
    new-instance v2, Lcom/coremedia/iso/boxes/m1;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/m1;-><init>()V

    iput-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->f:Lcom/coremedia/iso/boxes/a;

    .line 17
    new-instance v2, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    .line 18
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "video/avc"

    .line 19
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x18

    const-wide/high16 v11, 0x4052000000000000L    # 72.0

    if-eqz v7, :cond_1b

    .line 20
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/h;

    const-string v7, "avc1"

    invoke-direct {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/a;->d(I)V

    .line 22
    invoke-virtual {v2, v10}, Lcom/coremedia/iso/boxes/sampleentry/h;->g0(I)V

    .line 23
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/h;->h0(I)V

    .line 24
    invoke-virtual {v2, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/h;->n0(D)V

    .line 25
    invoke-virtual {v2, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/h;->p0(D)V

    .line 26
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/k;->l:I

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/h;->q0(I)V

    .line 27
    iget v7, v0, Lcom/rudresh/videocompression/videocompression/k;->k:I

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/h;->l0(I)V

    .line 28
    new-instance v7, Lcom/mp4parser/iso14496/part15/a;

    invoke-direct {v7}, Lcom/mp4parser/iso14496/part15/a;-><init>()V

    const-string v10, "csd-0"

    .line 29
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x4

    if-eqz v11, :cond_0

    .line 30
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 32
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    new-array v13, v13, [B

    .line 34
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "csd-1"

    .line 37
    invoke-virtual {v1, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 38
    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 39
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    .line 40
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 41
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/a;->T(Ljava/util/List;)V

    .line 43
    invoke-virtual {v7, v10}, Lcom/mp4parser/iso14496/part15/a;->Q(Ljava/util/List;)V

    :cond_0
    const-string v10, "level"

    .line 44
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    const/16 v13, 0x8

    const/4 v14, 0x3

    const/16 v15, 0xd

    const/16 v5, 0x20

    if-eqz v11, :cond_11

    .line 45
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v3, :cond_1

    .line 46
    invoke-virtual {v7, v3}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_1
    if-ne v10, v5, :cond_2

    .line 47
    invoke-virtual {v7, v9}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_2
    if-ne v10, v12, :cond_3

    const/16 v4, 0xb

    .line 48
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_3
    if-ne v10, v13, :cond_4

    const/16 v4, 0xc

    .line 49
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_4
    if-ne v10, v8, :cond_5

    .line 50
    invoke-virtual {v7, v15}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_5
    if-ne v10, v6, :cond_6

    const/16 v4, 0x15

    .line 51
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    const/16 v4, 0x16

    .line 52
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_7
    const/16 v11, 0x100

    if-ne v10, v11, :cond_8

    .line 53
    invoke-virtual {v7, v14}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_8
    const/16 v11, 0x200

    if-ne v10, v11, :cond_9

    const/16 v4, 0x1f

    .line 54
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_9
    const/16 v11, 0x400

    if-ne v10, v11, :cond_a

    .line 55
    invoke-virtual {v7, v5}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_a
    const/16 v11, 0x800

    if-ne v10, v11, :cond_b

    .line 56
    invoke-virtual {v7, v12}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_b
    const/16 v11, 0x1000

    if-ne v10, v11, :cond_c

    const/16 v4, 0x29

    .line 57
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_c
    const/16 v11, 0x2000

    if-ne v10, v11, :cond_d

    const/16 v4, 0x2a

    .line 58
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_d
    const/16 v11, 0x4000

    if-ne v10, v11, :cond_e

    .line 59
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_e
    const v4, 0x8000

    if-ne v10, v4, :cond_f

    const/16 v4, 0x33

    .line 60
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_f
    const/high16 v4, 0x10000

    if-ne v10, v4, :cond_10

    const/16 v4, 0x34

    .line 61
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    :cond_10
    if-ne v10, v9, :cond_12

    const/16 v4, 0x1b

    .line 62
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    goto :goto_0

    .line 63
    :cond_11
    invoke-virtual {v7, v15}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    :cond_12
    :goto_0
    const-string v4, "profile"

    .line 64
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x64

    if-eqz v10, :cond_19

    .line 65
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_13

    const/16 v1, 0x42

    .line 66
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_13
    if-ne v1, v9, :cond_14

    const/16 v1, 0x4d

    .line 67
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_14
    if-ne v1, v12, :cond_15

    const/16 v1, 0x58

    .line 68
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_15
    if-ne v1, v13, :cond_16

    .line 69
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_16
    if-ne v1, v8, :cond_17

    const/16 v1, 0x6e

    .line 70
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_17
    if-ne v1, v5, :cond_18

    const/16 v1, 0x7a

    .line 71
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    :cond_18
    if-ne v1, v6, :cond_1a

    const/16 v1, 0xf4

    .line 72
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    goto :goto_1

    .line 73
    :cond_19
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    :cond_1a
    :goto_1
    const/4 v1, -0x1

    .line 74
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->L(I)V

    .line 75
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->K(I)V

    .line 76
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->M(I)V

    .line 77
    invoke-virtual {v7, v3}, Lcom/mp4parser/iso14496/part15/a;->N(I)V

    .line 78
    invoke-virtual {v7, v14}, Lcom/mp4parser/iso14496/part15/a;->P(I)V

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/a;->R(I)V

    .line 80
    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 81
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    goto/16 :goto_5

    :cond_1b
    const-string v1, "video/mp4v"

    .line 82
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 83
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/h;

    const-string v2, "mp4v"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/sampleentry/a;->d(I)V

    .line 85
    invoke-virtual {v1, v10}, Lcom/coremedia/iso/boxes/sampleentry/h;->g0(I)V

    .line 86
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/sampleentry/h;->h0(I)V

    .line 87
    invoke-virtual {v1, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/h;->n0(D)V

    .line 88
    invoke-virtual {v1, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/h;->p0(D)V

    .line 89
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/k;->l:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->q0(I)V

    .line 90
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/k;->k:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/h;->l0(I)V

    .line 91
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    goto/16 :goto_5

    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 92
    iput v2, v0, Lcom/rudresh/videocompression/videocompression/k;->m:F

    const-string v2, "sample-rate"

    .line 93
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    const-string v5, "soun"

    .line 94
    iput-object v5, v0, Lcom/rudresh/videocompression/videocompression/k;->e:Ljava/lang/String;

    .line 95
    new-instance v5, Lcom/coremedia/iso/boxes/y0;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/y0;-><init>()V

    iput-object v5, v0, Lcom/rudresh/videocompression/videocompression/k;->f:Lcom/coremedia/iso/boxes/a;

    .line 96
    new-instance v5, Lcom/coremedia/iso/boxes/s0;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    iput-object v5, v0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    .line 97
    new-instance v5, Lcom/coremedia/iso/boxes/sampleentry/c;

    const-string v10, "mp4a"

    invoke-direct {v5, v10}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    const-string v10, "channel-count"

    .line 98
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/coremedia/iso/boxes/sampleentry/c;->s0(I)V

    .line 99
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/c;->x0(J)V

    .line 100
    invoke-virtual {v5, v3}, Lcom/coremedia/iso/boxes/sampleentry/a;->d(I)V

    .line 101
    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/sampleentry/c;->y0(I)V

    .line 102
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/b;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/b;-><init>()V

    .line 103
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;-><init>()V

    const/4 v8, 0x0

    .line 104
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->x(I)V

    .line 105
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;-><init>()V

    .line 106
    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;->j(I)V

    .line 107
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->z(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/o;)V

    .line 108
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 109
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1d
    const-string v7, "audio/mp4-latm"

    .line 110
    :goto_2
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;-><init>()V

    const-string v10, "audio/mpeg"

    .line 111
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 v6, 0x69

    .line 112
    invoke-virtual {v8, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->v(I)V

    goto :goto_3

    .line 113
    :cond_1e
    invoke-virtual {v8, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->v(I)V

    .line 114
    :goto_3
    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->w(I)V

    const/16 v4, 0x600

    .line 115
    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->t(I)V

    const-string v4, "max-bitrate"

    .line 116
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 117
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->u(J)V

    goto :goto_4

    :cond_1f
    const-wide/32 v6, 0x17700

    .line 118
    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->u(J)V

    .line 119
    :goto_4
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->s(J)V

    .line 120
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;-><init>()V

    .line 121
    invoke-virtual {v1, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->v(I)V

    .line 122
    sget-object v4, Lcom/rudresh/videocompression/videocompression/k;->r:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/sampleentry/c;->g0()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->y(I)V

    .line 123
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/sampleentry/c;->M()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->w(I)V

    .line 124
    invoke-virtual {v8, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->r(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;)V

    .line 125
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->v(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;)V

    .line 126
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;->t()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 127
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/b;->B(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/h;)V

    .line 128
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/a;->y(Ljava/nio/ByteBuffer;)V

    .line 129
    invoke-virtual {v5, v2}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 130
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    :cond_20
    :goto_5
    return-void
.end method

.method public static synthetic a(Lcom/rudresh/videocompression/videocompression/k$a;Lcom/rudresh/videocompression/videocompression/k$a;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/rudresh/videocompression/videocompression/k;->s(Lcom/rudresh/videocompression/videocompression/k$a;Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result p0

    return p0
.end method

.method private static synthetic s(Lcom/rudresh/videocompression/videocompression/k$a;Lcom/rudresh/videocompression/videocompression/k$a;)I
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public b(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/k;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/rudresh/videocompression/videocompression/h;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v3, v3

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/rudresh/videocompression/videocompression/h;-><init>(JJ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 4
    iget-object p2, p0, Lcom/rudresh/videocompression/videocompression/k;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    new-instance p2, Lcom/rudresh/videocompression/videocompression/k$a;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget p3, p0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    int-to-long v3, p3

    mul-long v1, v1, v3

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-direct {p2, v0, v1, v2}, Lcom/rudresh/videocompression/videocompression/k$a;-><init>(IJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->j:Ljava/util/Date;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/k;->k:I

    return v0
.end method

.method public g()J
    .locals 5

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    sub-long/2addr v0, v3

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    const-wide/32 v2, 0x7a120

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public h()Lcom/coremedia/iso/boxes/a;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->f:Lcom/coremedia/iso/boxes/a;

    return-object v0
.end method

.method public i()[I
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->d:[I

    return-object v0
.end method

.method public j()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->g:Lcom/coremedia/iso/boxes/s0;

    return-object v0
.end method

.method public k()[J
    .locals 1

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    return-object v0
.end method

.method public l()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/rudresh/videocompression/videocompression/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public m()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/rudresh/videocompression/videocompression/k;->h:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/k;->i:I

    return v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/rudresh/videocompression/videocompression/k;->a:J

    return-wide v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/k;->m:F

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/rudresh/videocompression/videocompression/k;->l:I

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/k;->p:Z

    return v0
.end method

.method public t()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    sget-object v3, Lcom/rudresh/videocompression/videocompression/j;->a:Lcom/rudresh/videocompression/videocompression/j;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    const-wide/16 v2, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-wide v8, v2

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 4
    :goto_0
    iget-object v11, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v7, v11, :cond_3

    .line 5
    iget-object v11, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/rudresh/videocompression/videocompression/k$a;

    .line 6
    invoke-static {v11}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v13

    sub-long/2addr v13, v8

    .line 7
    invoke-static {v11}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v8

    .line 8
    iget-object v15, v0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    invoke-static {v11}, Lcom/rudresh/videocompression/videocompression/k$a;->b(Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result v16

    aput-wide v13, v15, v16

    .line 9
    invoke-static {v11}, Lcom/rudresh/videocompression/videocompression/k$a;->b(Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result v15

    move-wide/from16 v16, v5

    if-eqz v15, :cond_0

    .line 10
    iget-wide v4, v0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    add-long/2addr v4, v13

    iput-wide v4, v0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    :cond_0
    cmp-long v4, v13, v2

    if-lez v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v13, v4

    if-gez v6, :cond_1

    move-wide/from16 v5, v16

    .line 11
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v5, v16

    .line 12
    :goto_1
    invoke-static {v11}, Lcom/rudresh/videocompression/videocompression/k$a;->b(Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result v4

    if-eq v4, v7, :cond_2

    const/4 v10, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    array-length v3, v2

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 14
    aput-wide v5, v2, v3

    .line 15
    iget-wide v7, v0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/rudresh/videocompression/videocompression/k;->c:J

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 16
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 17
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rudresh/videocompression/videocompression/k$a;

    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/k;->n:[J

    aget-wide v5, v4, v12

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rudresh/videocompression/videocompression/k$a;

    invoke-static {v4}, Lcom/rudresh/videocompression/videocompression/k$a;->c(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lcom/rudresh/videocompression/videocompression/k$a;->d(Lcom/rudresh/videocompression/videocompression/k$a;J)J

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    .line 18
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->d:[I

    const/4 v4, 0x0

    .line 19
    :goto_3
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 20
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/k;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rudresh/videocompression/videocompression/k$a;

    .line 21
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/k;->d:[I

    invoke-static {v1}, Lcom/rudresh/videocompression/videocompression/k$a;->b(Lcom/rudresh/videocompression/videocompression/k$a;)I

    move-result v3

    invoke-static {v1}, Lcom/rudresh/videocompression/videocompression/k$a;->a(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v5

    invoke-static {v1}, Lcom/rudresh/videocompression/videocompression/k$a;->c(Lcom/rudresh/videocompression/videocompression/k$a;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v1, v5

    aput v1, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
