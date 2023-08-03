.class public Lcom/googlecode/mp4parser/authoring/tracks/i;
.super Ljava/lang/Object;
.source "CencEncryptingTrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/tracks/h;


# instance fields
.field private final a:Ljava/lang/String;

.field b:Lcom/googlecode/mp4parser/authoring/h;

.field c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/UUID;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mp4parser/iso23001/part7/a;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field i:Lcom/coremedia/iso/boxes/s0;

.field j:Lcom/googlecode/mp4parser/util/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/googlecode/mp4parser/util/n<",
            "Ljava/lang/Integer;",
            "Ljavax/crypto/SecretKey;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/UUID;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljavax/crypto/SecretKey;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;",
            "[J>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/tracks/i;-><init>(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/UUID;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/UUID;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Ljava/util/UUID;",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljavax/crypto/SecretKey;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;",
            "[J>;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    .line 6
    iput-boolean v4, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->h:Z

    const/4 v5, 0x0

    .line 7
    iput-object v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    move-object/from16 v6, p1

    .line 8
    iput-object v6, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 9
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->c:Ljava/util/Map;

    .line 10
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->d:Ljava/util/UUID;

    .line 11
    iput-boolean v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->g:Z

    move-object/from16 v7, p5

    .line 12
    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->a:Ljava/lang/String;

    .line 13
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    .line 14
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->V()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_17

    if-eqz p4, :cond_1

    .line 15
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 16
    iget-object v9, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 17
    :cond_1
    :goto_2
    new-instance v7, Lcom/googlecode/mp4parser/authoring/tracks/i$a;

    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    invoke-direct {v7, v0, v8}, Lcom/googlecode/mp4parser/authoring/tracks/i$a;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/i;Ljava/util/Map;)V

    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    .line 18
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->e:Ljava/util/List;

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->f:Ljava/util/List;

    .line 20
    new-instance v8, Ljava/math/BigInteger;

    const-string v7, "1"

    invoke-direct {v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x8

    new-array v7, v9, [B

    if-nez v3, :cond_2

    .line 21
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 22
    invoke-virtual {v3, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 23
    :cond_2
    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    invoke-direct {v10, v11, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz p4, :cond_3

    .line 25
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    :cond_3
    new-instance v3, Lcom/googlecode/mp4parser/util/n;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/util/n;-><init>()V

    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 27
    :goto_3
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v14, v3, :cond_10

    .line 28
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/d;->y()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 30
    :goto_5
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_5

    .line 31
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_5
    iget-object v2, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/mp4parser/authoring/f;

    .line 33
    new-instance v3, Lcom/mp4parser/iso23001/part7/a;

    invoke-direct {v3}, Lcom/mp4parser/iso23001/part7/a;-><init>()V

    .line 34
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->f:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/util/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 36
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    new-array v6, v9, [B

    .line 37
    array-length v7, v5

    sub-int/2addr v7, v9

    if-lez v7, :cond_6

    array-length v7, v5

    sub-int/2addr v7, v9

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    .line 38
    :goto_6
    array-length v12, v5

    rsub-int/lit8 v12, v12, 0x8

    if-gez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    array-length v12, v5

    rsub-int/lit8 v12, v12, 0x8

    .line 39
    :goto_7
    array-length v14, v5

    if-le v14, v9, :cond_8

    const/16 v14, 0x8

    goto :goto_8

    :cond_8
    array-length v14, v5

    .line 40
    :goto_8
    invoke-static {v5, v7, v6, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput-object v6, v3, Lcom/mp4parser/iso23001/part7/a;->a:[B

    .line 42
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 43
    iget-boolean v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->h:Z

    if-eqz v5, :cond_c

    if-eqz p7, :cond_9

    new-array v5, v11, [Lcom/mp4parser/iso23001/part7/a$k;

    .line 44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v2, v6, v7}, Lcom/mp4parser/iso23001/part7/a;->a(IJ)Lcom/mp4parser/iso23001/part7/a$k;

    move-result-object v2

    aput-object v2, v5, v4

    iput-object v5, v3, Lcom/mp4parser/iso23001/part7/a;->b:[Lcom/mp4parser/iso23001/part7/a$k;

    goto :goto_b

    .line 45
    :cond_9
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    :goto_9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gtz v6, :cond_a

    .line 47
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/mp4parser/iso23001/part7/a$k;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/mp4parser/iso23001/part7/a$k;

    iput-object v2, v3, Lcom/mp4parser/iso23001/part7/a;->b:[Lcom/mp4parser/iso23001/part7/a$k;

    goto :goto_b

    .line 48
    :cond_a
    invoke-static {v2, v13}, Lcom/coremedia/iso/h;->a(Ljava/nio/ByteBuffer;I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    move-result v6

    add-int v7, v6, v13

    const/16 v12, 0x70

    if-lt v7, v12, :cond_b

    .line 49
    rem-int/lit8 v12, v7, 0x10

    add-int/lit8 v12, v12, 0x60

    goto :goto_a

    :cond_b
    move v12, v7

    :goto_a
    sub-int/2addr v7, v12

    int-to-long v14, v7

    .line 50
    invoke-virtual {v3, v12, v14, v15}, Lcom/mp4parser/iso23001/part7/a;->a(IJ)Lcom/mp4parser/iso23001/part7/a$k;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_9

    .line 52
    :cond_c
    :goto_b
    invoke-virtual {v10, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v10, v2

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 53
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/d;

    .line 54
    instance-of v2, v1, Lcom/mp4parser/iso14496/part15/a;

    if-eqz v2, :cond_f

    .line 55
    move-object v2, v1

    check-cast v2, Lcom/mp4parser/iso14496/part15/a;

    .line 56
    iput-boolean v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->h:Z

    .line 57
    invoke-virtual {v2}, Lcom/mp4parser/iso14496/part15/a;->z()I

    move-result v2

    add-int/2addr v2, v11

    move v13, v2

    .line 58
    :cond_f
    instance-of v2, v1, Lcom/mp4parser/iso14496/part15/c;

    if-eqz v2, :cond_4

    .line 59
    check-cast v1, Lcom/mp4parser/iso14496/part15/c;

    .line 60
    iput-boolean v11, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->h:Z

    .line 61
    invoke-virtual {v1}, Lcom/mp4parser/iso14496/part15/c;->G()I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    goto/16 :goto_4

    :cond_10
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 62
    :goto_c
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_15

    if-eq v15, v7, :cond_14

    if-nez v7, :cond_11

    .line 63
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, v15}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_11
    add-int/lit8 v3, v7, -0x1

    .line 64
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->f()Ljava/util/UUID;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 65
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->f()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_12

    .line 66
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15, v4}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 67
    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Key "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;->f()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " was not supplied for decryption"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_13
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/mp4parser/util/n;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    move v15, v7

    :cond_14
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 69
    :cond_15
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/tracks/i;->V()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    move-object v5, v10

    int-to-long v9, v14

    .line 71
    invoke-static {v4, v9, v10}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    if-ltz v4, :cond_16

    add-int/lit8 v7, v3, 0x1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    move-object v10, v5

    const/4 v5, 0x0

    const/16 v9, 0x8

    goto/16 :goto_c

    .line 72
    :cond_17
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/a;

    if-nez v5, :cond_18

    .line 74
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/UUID;Ljavax/crypto/SecretKey;Z)V
    .locals 7

    .line 1
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "cenc"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/googlecode/mp4parser/authoring/tracks/i;-><init>(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/UUID;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public B()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->B()Lcom/coremedia/iso/boxes/a1;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/googlecode/mp4parser/boxes/cenc/b;

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->j:Lcom/googlecode/mp4parser/util/n;

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->F()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->f:Ljava/util/List;

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/boxes/cenc/b;-><init>(Lcom/googlecode/mp4parser/util/n;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public Q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->h:Z

    return v0
.end method

.method public T()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->T()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            "[J>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->k:Ljava/util/Map;

    return-object v0
.end method

.method public Y()Ljava/util/UUID;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->d:Ljava/util/UUID;

    return-object v0
.end method

.method public a0()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->a0()Lcom/googlecode/mp4parser/authoring/i;

    move-result-object v0

    return-object v0
.end method

.method public c0()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->c0()[J

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public f0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mp4parser/iso23001/part7/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enc("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->m0()Ljava/util/List;

    move-result-object v0

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

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized u()Lcom/coremedia/iso/boxes/s0;
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->u()Lcom/coremedia/iso/boxes/s0;

    move-result-object v1

    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/s0;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 4
    new-instance v1, Lcom/coremedia/iso/f;

    new-instance v2, Lcom/googlecode/mp4parser/i;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/googlecode/mp4parser/i;-><init>([B)V

    invoke-direct {v1, v2}, Lcom/coremedia/iso/f;-><init>(Lcom/googlecode/mp4parser/e;)V

    invoke-virtual {v1}, Lcom/googlecode/mp4parser/d;->y()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/s0;

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    new-instance v0, Lcom/coremedia/iso/boxes/l0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/l0;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/l0;->u(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/c;

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/sampleentry/c;

    const-string v3, "enca"

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/c;->C0(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    instance-of v2, v2, Lcom/coremedia/iso/boxes/sampleentry/h;

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/sampleentry/h;

    const-string v3, "encv"

    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/h;->o0(Ljava/lang/String;)V

    .line 11
    :goto_0
    new-instance v2, Lcom/coremedia/iso/boxes/o0;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/o0;-><init>()V

    .line 12
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 13
    new-instance v0, Lcom/coremedia/iso/boxes/x0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/x0;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/x0;->y(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    .line 15
    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/x0;->A(I)V

    .line 16
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 17
    new-instance v0, Lcom/coremedia/iso/boxes/w0;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/w0;-><init>()V

    .line 18
    new-instance v3, Lcom/mp4parser/iso23001/part7/c;

    invoke-direct {v3}, Lcom/mp4parser/iso23001/part7/c;-><init>()V

    .line 19
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->d:Ljava/util/UUID;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/boxes/c;->z(I)V

    .line 20
    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->d:Ljava/util/UUID;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/googlecode/mp4parser/boxes/c;->y(I)V

    .line 21
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->d:Ljava/util/UUID;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/UUID;

    const-wide/16 v4, 0x0

    invoke-direct {v1, v4, v5, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    :cond_3
    invoke-virtual {v3, v1}, Lcom/googlecode/mp4parser/boxes/c;->A(Ljava/util/UUID;)V

    .line 22
    invoke-virtual {v0, v3}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 23
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    .line 24
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->D(Lcom/coremedia/iso/boxes/d;)V

    goto :goto_3

    .line 25
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I don\'t know how to cenc "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/s0;->J()Lcom/coremedia/iso/boxes/sampleentry/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/mp4parser/b;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dumping stsd to memory failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->i:Lcom/coremedia/iso/boxes/s0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public z()[J
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/i;->b:Lcom/googlecode/mp4parser/authoring/h;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->z()[J

    move-result-object v0

    return-object v0
.end method
