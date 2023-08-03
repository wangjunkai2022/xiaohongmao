.class Lcom/rudresh/videocompression/videocompression/l;
.super Ljava/lang/Object;
.source "VideoConverter.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFF)F
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    .line 3
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static c(IIIIZ)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v0, p2

    const p2, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {v0, p2, p3}, Lcom/rudresh/videocompression/videocompression/l;->a(FFF)F

    move-result p2

    float-to-int p2, p2

    const-string p3, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string v0, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_0

    .line 2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/media/MediaExtractor;Lcom/rudresh/videocompression/videocompression/d;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    .line 1
    invoke-static {v1, v6}, Lcom/rudresh/videocompression/videocompression/e;->b(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 2
    invoke-static {v1, v9}, Lcom/rudresh/videocompression/videocompression/e;->b(Landroid/media/MediaExtractor;Z)I

    move-result v0

    move v10, v0

    goto :goto_0

    :cond_0
    const/4 v10, -0x1

    :goto_0
    const-string v11, "Compression"

    const-string v12, "max-input-size"

    const-wide/16 v13, 0x0

    if-ltz v7, :cond_2

    .line 3
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 4
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 5
    invoke-virtual {v2, v0, v6}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v15

    .line 6
    :try_start_0
    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 p8, v0

    .line 7
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, p8

    invoke-static {v11, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_1
    cmp-long v8, v4, v13

    if-lez v8, :cond_1

    .line 8
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v1, v13, v14, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    move v8, v0

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    const/4 v15, -0x1

    :goto_3
    if-ltz v10, :cond_5

    .line 10
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 11
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v6, "mime"

    .line 12
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "audio/unknown"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 13
    :cond_3
    invoke-virtual {v2, v0, v9}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 14
    :try_start_1
    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    const-wide/16 v11, 0x0

    cmp-long v0, v4, v11

    if-lez v0, :cond_4

    const/4 v13, 0x0

    .line 16
    invoke-virtual {v1, v4, v5, v13}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v13, 0x0

    .line 17
    invoke-virtual {v1, v11, v12, v13}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v8, :cond_6

    const/high16 v8, 0x10000

    .line 18
    :cond_6
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v11, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v11

    :cond_8
    :goto_6
    move-wide/from16 v16, v11

    const/4 v13, 0x0

    :goto_7
    if-nez v13, :cond_1e

    .line 19
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v14, v11, :cond_9

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v11

    move/from16 v20, v10

    int-to-long v9, v8

    cmp-long v21, v11, v9

    if-lez v21, :cond_a

    const-wide/16 v8, 0x400

    add-long/2addr v11, v8

    long-to-int v0, v11

    .line 21
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v26, v8

    move v8, v0

    move-object/from16 v0, v26

    goto :goto_8

    :cond_9
    move/from16 v20, v10

    :cond_a
    const/4 v9, 0x0

    .line 22
    :goto_8
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 23
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v9

    if-ne v9, v7, :cond_b

    move v11, v15

    move/from16 v10, v20

    :goto_9
    const/4 v12, -0x1

    goto :goto_a

    :cond_b
    move/from16 v10, v20

    if-ne v9, v10, :cond_c

    move v11, v6

    goto :goto_9

    :cond_c
    const/4 v11, -0x1

    goto :goto_9

    :goto_a
    if-eq v11, v12, :cond_1b

    if-eq v9, v10, :cond_12

    .line 24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    if-eqz v12, :cond_12

    .line 25
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v20

    .line 26
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    add-int v21, v20, v21

    const/4 v14, -0x1

    move/from16 v26, v20

    move/from16 v20, v6

    move/from16 v6, v26

    :goto_b
    const/16 v22, 0x4

    move/from16 v23, v8

    add-int/lit8 v8, v21, -0x4

    if-gt v6, v8, :cond_13

    .line 27
    aget-byte v24, v12, v6

    if-nez v24, :cond_d

    add-int/lit8 v24, v6, 0x1

    aget-byte v24, v12, v24

    if-nez v24, :cond_d

    add-int/lit8 v24, v6, 0x2

    aget-byte v24, v12, v24

    if-nez v24, :cond_d

    add-int/lit8 v24, v6, 0x3

    move/from16 v25, v13

    aget-byte v13, v12, v24

    move/from16 v24, v15

    const/4 v15, 0x1

    if-eq v13, v15, :cond_e

    goto :goto_c

    :cond_d
    move/from16 v25, v13

    move/from16 v24, v15

    const/4 v15, 0x1

    :goto_c
    if-ne v6, v8, :cond_11

    :cond_e
    const/4 v13, -0x1

    if-eq v14, v13, :cond_10

    sub-int v13, v6, v14

    if-eq v6, v8, :cond_f

    goto :goto_d

    :cond_f
    const/16 v22, 0x0

    :goto_d
    sub-int v13, v13, v22

    shr-int/lit8 v8, v13, 0x18

    int-to-byte v8, v8

    .line 28
    aput-byte v8, v12, v14

    add-int/lit8 v8, v14, 0x1

    shr-int/lit8 v15, v13, 0x10

    int-to-byte v15, v15

    .line 29
    aput-byte v15, v12, v8

    add-int/lit8 v8, v14, 0x2

    shr-int/lit8 v15, v13, 0x8

    int-to-byte v15, v15

    .line 30
    aput-byte v15, v12, v8

    add-int/lit8 v14, v14, 0x3

    int-to-byte v8, v13

    .line 31
    aput-byte v8, v12, v14

    :cond_10
    move v14, v6

    :cond_11
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, v23

    move/from16 v15, v24

    move/from16 v13, v25

    goto :goto_b

    :cond_12
    move/from16 v20, v6

    move/from16 v23, v8

    :cond_13
    move/from16 v25, v13

    move/from16 v24, v15

    .line 32
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_14

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    iput-wide v12, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v13, 0x0

    goto :goto_e

    :cond_14
    const/4 v6, 0x0

    .line 34
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v13, 0x1

    .line 35
    :goto_e
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_19

    if-nez v13, :cond_19

    const-wide/16 v14, 0x0

    if-ne v9, v7, :cond_15

    cmp-long v6, v4, v14

    const-wide/16 v18, -0x1

    if-lez v6, :cond_16

    cmp-long v6, v16, v18

    if-nez v6, :cond_16

    .line 36
    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v16, v8

    goto :goto_f

    :cond_15
    const-wide/16 v18, -0x1

    :cond_16
    :goto_f
    cmp-long v6, p6, v14

    if-ltz v6, :cond_18

    .line 37
    iget-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v8, p6

    if-gez v6, :cond_17

    goto :goto_10

    :cond_17
    const/4 v6, 0x0

    const/4 v13, 0x1

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v6, 0x0

    .line 38
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    iput v8, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 40
    invoke-virtual {v2, v11, v0, v3, v6}, Lcom/rudresh/videocompression/videocompression/d;->s(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v18, -0x1

    :goto_11
    if-nez v13, :cond_1a

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1a
    const/4 v8, -0x1

    goto :goto_12

    :cond_1b
    move/from16 v20, v6

    move/from16 v23, v8

    move/from16 v25, v13

    move/from16 v24, v15

    const/4 v6, 0x0

    const/4 v8, -0x1

    const-wide/16 v14, 0x0

    const-wide/16 v18, -0x1

    if-ne v9, v8, :cond_1c

    const/4 v13, 0x1

    goto :goto_12

    .line 42
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v13, 0x0

    :goto_12
    if-eqz v13, :cond_1d

    const/4 v13, 0x1

    goto :goto_13

    :cond_1d
    move/from16 v13, v25

    :goto_13
    move-wide/from16 v11, v18

    move/from16 v6, v20

    move/from16 v8, v23

    move/from16 v15, v24

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_1e
    if-ltz v7, :cond_1f

    .line 43
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_1f
    if-ltz v10, :cond_20

    .line 44
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_20
    return-wide v16
.end method


# virtual methods
.method public b(Ljava/io/File;Ljava/io/File;IIIIIIIIJJI)Ljava/io/File;
    .locals 50
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    move-object/from16 v13, p2

    move/from16 v0, p3

    move/from16 v9, p4

    move/from16 v1, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v2, p9

    move/from16 v12, p10

    move-wide/from16 v14, p11

    move/from16 v3, p15

    const-string v4, "bitrate"

    const-string v7, "Error during finishing video"

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received data: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v16, v7

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ": "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "Compressing"

    invoke-static {v15, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "Target data: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_50

    if-eqz v11, :cond_50

    .line 3
    :try_start_0
    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4
    new-instance v4, Lcom/rudresh/videocompression/videocompression/f;

    invoke-direct {v4}, Lcom/rudresh/videocompression/videocompression/f;-><init>()V

    .line 5
    invoke-virtual {v4, v13}, Lcom/rudresh/videocompression/videocompression/f;->i(Ljava/io/File;)V

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v4, v5}, Lcom/rudresh/videocompression/videocompression/f;->j(I)V

    .line 7
    invoke-virtual {v4, v10, v11}, Lcom/rudresh/videocompression/videocompression/f;->k(II)V

    .line 8
    new-instance v7, Lcom/rudresh/videocompression/videocompression/d;

    invoke-direct {v7}, Lcom/rudresh/videocompression/videocompression/d;-><init>()V

    invoke-virtual {v7, v4, v5}, Lcom/rudresh/videocompression/videocompression/d;->d(Lcom/rudresh/videocompression/videocompression/f;Z)Lcom/rudresh/videocompression/videocompression/d;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_15

    .line 9
    :try_start_1
    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_14

    .line 10
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 11
    invoke-static {v4, v5}, Lcom/rudresh/videocompression/videocompression/e;->b(Landroid/media/MediaExtractor;Z)I

    move-result v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_13

    const/4 v5, -0x1

    const/4 v13, 0x1

    if-eq v3, v5, :cond_0

    .line 12
    :try_start_3
    invoke-static {v4, v13}, Lcom/rudresh/videocompression/videocompression/e;->b(Landroid/media/MediaExtractor;Z)I

    move-result v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v22, v21

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v13, v4

    move-object v14, v7

    move-object v5, v15

    move-object/from16 v1, v16

    goto/16 :goto_51

    :cond_0
    const/16 v22, -0x1

    :goto_0
    const-string v13, "video/avc"

    const-string v5, "mime"

    if-ltz v14, :cond_1

    .line 13
    :try_start_4
    invoke-virtual {v4, v14}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ne v10, v0, :cond_4

    if-ne v11, v9, :cond_4

    if-eqz v6, :cond_2

    goto :goto_4

    :cond_2
    int-to-long v5, v12

    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v7

    move-object v13, v4

    move-object v4, v8

    move-object v11, v7

    move-object/from16 v9, v16

    const/4 v14, -0x5

    move-wide/from16 v7, p11

    move-object/from16 v24, v9

    move-wide/from16 v9, p13

    move-object/from16 v25, v11

    move-object/from16 v11, p2

    .line 14
    :try_start_5
    invoke-direct/range {v1 .. v12}, Lcom/rudresh/videocompression/videocompression/l;->d(Landroid/media/MediaExtractor;Lcom/rudresh/videocompression/videocompression/d;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v15

    move-object/from16 v4, v25

    const/4 v7, -0x5

    goto/16 :goto_4f

    :catchall_1
    move-exception v0

    :goto_3
    move-object v5, v15

    move-object/from16 v1, v24

    move-object/from16 v14, v25

    goto/16 :goto_51

    :cond_4
    :goto_4
    move-object/from16 v25, v7

    move-object/from16 v24, v16

    const/4 v6, -0x5

    const/16 v16, -0x1

    move-object v7, v4

    :try_start_6
    const-string v4, "Start converting"

    .line 15
    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    if-ltz v14, :cond_47

    const/16 v4, 0x1e

    const/16 v6, 0x3e8

    if-ge v2, v4, :cond_5

    add-int/lit8 v4, v2, 0x5

    .line 16
    :try_start_7
    div-int v4, v6, v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_20
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    mul-int/lit16 v4, v4, 0x3e8

    move-object/from16 v23, v8

    :goto_5
    int-to-long v8, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v13, v7

    goto :goto_3

    :cond_5
    move-object/from16 v23, v8

    add-int/lit8 v4, v2, 0x1

    .line 17
    :try_start_8
    div-int v4, v6, v4

    mul-int/lit16 v4, v4, 0x3e8

    goto :goto_5

    :goto_6
    move-wide/from16 v26, v8

    .line 18
    invoke-virtual {v7, v14}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 19
    invoke-virtual {v7, v14}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_20
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    if-lez v1, :cond_6

    .line 20
    :try_start_9
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_20
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :cond_6
    move v1, v3

    .line 21
    :goto_7
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start time is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .line 22
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v7, v3, v4, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 23
    invoke-static {v13, v10, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "color-format"

    const v8, 0x7f000789

    .line 24
    invoke-virtual {v3, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move-object/from16 v4, v17

    .line 25
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "frame-rate"

    .line 26
    invoke-virtual {v3, v8, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v8, "i-frame-interval"

    const/4 v6, 0x2

    .line 27
    invoke-virtual {v3, v8, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 28
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_20
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    const/16 v8, 0x17

    if-ge v6, v8, :cond_8

    :try_start_b
    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v8, 0x1e0

    if-gt v6, v8, :cond_8

    const v6, 0xe1000

    if-le v1, v6, :cond_7

    const v1, 0xe1000

    .line 29
    :cond_7
    invoke-virtual {v3, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_20
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 30
    :cond_8
    :try_start_c
    invoke-static {v13}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_20
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 31
    :try_start_d
    invoke-virtual {v8, v3, v1, v1, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 32
    new-instance v6, Lcom/rudresh/videocompression/videocompression/c;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/rudresh/videocompression/videocompression/c;-><init>(Landroid/view/Surface;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1f
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 33
    :try_start_e
    invoke-virtual {v6}, Lcom/rudresh/videocompression/videocompression/c;->d()V

    .line 34
    invoke-virtual {v8}, Landroid/media/MediaCodec;->start()V

    .line 35
    invoke-virtual {v9, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    .line 36
    :try_start_f
    new-instance v3, Lcom/rudresh/videocompression/videocompression/g;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1d
    .catchall {:try_start_f .. :try_end_f} :catchall_e

    int-to-float v2, v2

    const/16 v17, 0x0

    move-object v1, v3

    move/from16 v28, v2

    move/from16 v2, p7

    move-object/from16 v35, v3

    move/from16 v3, p8

    move-object/from16 v36, v4

    move/from16 v4, p3

    move-object/from16 v38, v5

    move/from16 v5, p4

    move-object/from16 v39, v6

    move/from16 v6, p6

    move-object/from16 v16, v13

    move-object v13, v7

    move/from16 v7, v28

    move-object/from16 v41, v8

    move-object/from16 v40, v23

    move/from16 v8, v17

    :try_start_10
    invoke-direct/range {v1 .. v8}, Lcom/rudresh/videocompression/videocompression/g;-><init>(IIIIIFZ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_d

    .line 37
    :try_start_11
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    move/from16 v2, p4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1b
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    int-to-float v3, v3

    div-float/2addr v1, v3

    const v3, 0x3f666666    # 0.9f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    const/4 v1, 0x1

    .line 38
    :try_start_12
    invoke-static {v0, v2, v10, v11, v1}, Lcom/rudresh/videocompression/videocompression/l;->c(IIIIZ)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    invoke-static {v0, v2, v10, v11, v1}, Lcom/rudresh/videocompression/videocompression/l;->c(IIIIZ)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v2, v35

    :try_start_13
    invoke-virtual {v2, v3, v0}, Lcom/rudresh/videocompression/videocompression/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v2, v35

    :goto_8
    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    move-object/from16 v14, v36

    move-object/from16 v1, v41

    goto/16 :goto_44

    :cond_9
    move-object/from16 v2, v35

    const/4 v1, 0x0

    .line 39
    :goto_9
    :try_start_14
    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/g;->f()Landroid/view/Surface;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1a
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    move-object/from16 v3, v36

    const/4 v4, 0x0

    :try_start_15
    invoke-virtual {v3, v9, v0, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 40
    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    move/from16 v5, v22

    if-ltz v5, :cond_10

    .line 41
    :try_start_16
    invoke-virtual {v13, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    move-object/from16 v4, v38

    .line 42
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/mp4a-latm"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    if-nez v6, :cond_b

    :try_start_17
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/mpeg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    if-eqz v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v6, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    goto/16 :goto_f

    :cond_b
    :goto_a
    const/4 v6, 0x1

    .line 43
    :goto_b
    :try_start_18
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "audio/unknown"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    if-eqz v4, :cond_c

    const/4 v5, -0x1

    :cond_c
    if-ltz v5, :cond_f

    if-eqz v6, :cond_e

    move-object/from16 v4, v25

    const/4 v7, 0x1

    .line 44
    :try_start_19
    invoke-virtual {v4, v0, v7}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v8

    .line 45
    invoke-virtual {v13, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    :try_start_1a
    const-string v7, "max-input-size"

    .line 46
    invoke-virtual {v0, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    goto :goto_c

    :catch_3
    :try_start_1b
    const-string v0, "Cant get maxBufferSize"

    .line 47
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_c
    if-gtz v0, :cond_d

    const/high16 v0, 0x10000

    .line 48
    :cond_d
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 49
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 p3, v6

    move-object/from16 p4, v7

    int-to-long v6, v9

    invoke-virtual {v13, v6, v7, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move v6, v0

    move v0, v5

    move v1, v8

    const/4 v7, 0x0

    move/from16 v5, p3

    move-object/from16 p3, p4

    move-wide/from16 v8, p11

    goto/16 :goto_11

    :cond_e
    move/from16 p3, v6

    move-object/from16 v4, v25

    .line 50
    new-instance v6, Landroid/media/MediaExtractor;

    invoke-direct {v6}, Landroid/media/MediaExtractor;-><init>()V

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v6, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 53
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 54
    new-instance v7, Lcom/rudresh/videocompression/videocompression/a;

    invoke-direct {v7, v0, v6, v5}, Lcom/rudresh/videocompression/videocompression/a;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    int-to-long v8, v12

    .line 55
    :try_start_1c
    iput-wide v8, v7, Lcom/rudresh/videocompression/videocompression/a;->p:J

    move-wide/from16 v8, p11

    .line 56
    iput-wide v8, v7, Lcom/rudresh/videocompression/videocompression/a;->q:J

    .line 57
    iget-object v0, v7, Lcom/rudresh/videocompression/videocompression/a;->r:Landroid/media/MediaFormat;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    move v1, v0

    move v0, v5

    const/4 v6, 0x0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v1, v41

    const/4 v7, -0x5

    goto :goto_10

    :catchall_3
    move-exception v0

    goto/16 :goto_47

    :catch_5
    move-exception v0

    goto :goto_e

    :cond_f
    move-wide/from16 v8, p11

    move/from16 p3, v6

    move-object/from16 v4, v25

    move v0, v5

    const/4 v1, -0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_d
    move/from16 v5, p3

    const/16 p3, 0x0

    goto :goto_11

    :catch_6
    move-exception v0

    move-object/from16 v4, v25

    :goto_e
    move/from16 v48, v14

    move-object/from16 p6, v15

    :goto_f
    move-object/from16 v1, v41

    const/4 v7, -0x5

    const/16 v19, 0x0

    :goto_10
    move-object v14, v3

    goto/16 :goto_49

    :cond_10
    move-wide/from16 v8, p11

    move-object/from16 v4, v25

    move v0, v5

    const/16 p3, 0x0

    const/4 v1, -0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_11
    if-gez v0, :cond_11

    const/16 v17, 0x1

    goto :goto_12

    :cond_11
    const/16 v17, 0x0

    :goto_12
    const-wide/16 v22, -0x1

    move/from16 v28, v17

    move-wide/from16 v42, v22

    move-wide/from16 v44, v42

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v35, -0x5

    const/16 v36, 0x1

    :goto_13
    if-eqz v17, :cond_13

    if-nez v5, :cond_12

    if-nez v28, :cond_12

    goto :goto_14

    :cond_12
    move-object/from16 v19, v7

    move v1, v14

    move-object v5, v15

    move/from16 v7, v35

    move-object/from16 v14, v41

    goto/16 :goto_4a

    :cond_13
    :goto_14
    if-nez v5, :cond_14

    if-eqz v7, :cond_14

    .line 58
    :try_start_1d
    invoke-virtual {v7, v4, v1}, Lcom/rudresh/videocompression/videocompression/a;->b(Lcom/rudresh/videocompression/videocompression/d;I)Z

    move-result v28
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    goto :goto_15

    :catch_7
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v48, v14

    move-object/from16 p6, v15

    move/from16 v7, v35

    move-object/from16 v1, v41

    goto :goto_10

    :cond_14
    :goto_15
    move/from16 v38, v28

    const-wide/16 v46, 0x0

    if-nez v18, :cond_20

    .line 59
    :try_start_1e
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_b
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    if-ne v10, v14, :cond_17

    move/from16 v48, v14

    move-object v11, v15

    const-wide/16 v14, 0x9c4

    .line 60
    :try_start_1f
    invoke-virtual {v3, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_16

    .line 61
    invoke-virtual {v3, v10}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/4 v15, 0x0

    .line 62
    invoke-virtual {v13, v14, v15}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v31

    if-gez v31, :cond_15

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    move-object/from16 v28, v3

    move/from16 v29, v10

    .line 63
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/16 v18, 0x1

    goto :goto_16

    :cond_15
    const/16 v30, 0x0

    .line 64
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v32

    const/16 v34, 0x0

    move-object/from16 v28, v3

    move/from16 v29, v10

    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 65
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_8
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :cond_16
    :goto_16
    move v10, v6

    move-object/from16 p6, v11

    move-object/from16 v14, v40

    const/4 v6, 0x0

    move-object/from16 v11, p3

    goto/16 :goto_1a

    :catchall_4
    move-exception v0

    move-object v14, v4

    move-object v5, v11

    goto/16 :goto_1b

    :catch_8
    move-exception v0

    move-object v14, v3

    move-object/from16 v19, v7

    move-object/from16 p6, v11

    goto/16 :goto_1d

    :cond_17
    move/from16 v48, v14

    move-object v11, v15

    if-eqz v5, :cond_1c

    const/4 v14, -0x1

    if-eq v0, v14, :cond_1c

    if-ne v10, v0, :cond_1c

    .line 66
    :try_start_20
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    const/16 v15, 0x1c

    if-lt v10, v15, :cond_18

    .line 67
    :try_start_21
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v28

    int-to-long v14, v6

    cmp-long v10, v28, v14

    if-lez v10, :cond_18

    const-wide/16 v14, 0x400

    add-long v14, v28, v14

    long-to-int v6, v14

    .line 68
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    const/4 v14, 0x0

    move-object/from16 v49, v10

    move v10, v6

    move-object/from16 v6, v49

    goto :goto_17

    :cond_18
    move v10, v6

    const/4 v14, 0x0

    move-object/from16 v6, p3

    .line 69
    :goto_17
    :try_start_22
    invoke-virtual {v13, v6, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    move-object/from16 v14, v40

    iput v15, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_9
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    if-ltz v15, :cond_19

    move/from16 p3, v10

    move-object/from16 p6, v11

    .line 70
    :try_start_23
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    iput-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 71
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_18

    :cond_19
    move/from16 p3, v10

    move-object/from16 p6, v11

    const/4 v10, 0x0

    .line 72
    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v18, 0x1

    .line 73
    :goto_18
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v10, :cond_1b

    cmp-long v10, v8, v46

    if-ltz v10, :cond_1a

    iget-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v15, v10, v8

    if-gez v15, :cond_1b

    :cond_1a
    const/4 v10, 0x0

    .line 74
    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 75
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v11

    iput v11, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 76
    invoke-virtual {v4, v1, v6, v14, v10}, Lcom/rudresh/videocompression/videocompression/d;->s(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    :cond_1b
    move/from16 v10, p3

    move-object v11, v6

    goto :goto_19

    :catch_9
    move-exception v0

    move-object/from16 p6, v11

    goto :goto_1c

    :cond_1c
    move-object/from16 p6, v11

    move-object/from16 v14, v40

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1d

    move-object/from16 v11, p3

    move v10, v6

    const/4 v6, 0x1

    goto :goto_1a

    :cond_1d
    move-object/from16 v11, p3

    move v10, v6

    :goto_19
    const/4 v6, 0x0

    :goto_1a
    if-eqz v6, :cond_1e

    move/from16 p9, v0

    move v15, v1

    const-wide/16 v0, 0x9c4

    .line 77
    invoke-virtual {v3, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v29

    if-ltz v29, :cond_1f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x4

    move-object/from16 v28, v3

    .line 78
    invoke-virtual/range {v28 .. v34}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_a
    .catchall {:try_start_23 .. :try_end_23} :catchall_5

    move v6, v10

    const/16 v18, 0x1

    goto :goto_1e

    :catchall_5
    move-exception v0

    move-object/from16 v5, p6

    move-object v14, v4

    goto :goto_1b

    :catch_a
    move-exception v0

    goto :goto_1c

    :cond_1e
    move/from16 p9, v0

    move v15, v1

    :cond_1f
    move v6, v10

    goto :goto_1e

    :catchall_6
    move-exception v0

    move-object v14, v4

    move-object v5, v15

    :goto_1b
    move-object/from16 v1, v24

    move/from16 v7, v35

    goto/16 :goto_52

    :catch_b
    move-exception v0

    move/from16 v48, v14

    move-object/from16 p6, v15

    :goto_1c
    move-object v14, v3

    move-object/from16 v19, v7

    :goto_1d
    move/from16 v7, v35

    move-object/from16 v1, v41

    goto/16 :goto_49

    :cond_20
    move/from16 p9, v0

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v14, v40

    move v15, v1

    move-object/from16 v11, p3

    :goto_1e
    xor-int/lit8 v0, v20, 0x1

    move/from16 v10, v35

    const/4 v1, 0x1

    :goto_1f
    if-nez v0, :cond_22

    if-eqz v1, :cond_21

    goto :goto_20

    :cond_21
    move/from16 v0, p9

    move/from16 v35, v10

    move-object/from16 p3, v11

    move-object/from16 v40, v14

    move v1, v15

    move/from16 v28, v38

    move/from16 v14, v48

    move-object/from16 v15, p6

    move/from16 v10, p7

    move/from16 v11, p8

    goto/16 :goto_13

    :cond_22
    :goto_20
    move/from16 p13, v0

    move/from16 p3, v1

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 v1, v41

    const-wide/16 v5, 0x9c4

    .line 79
    :try_start_24
    invoke-virtual {v1, v14, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_18
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    const/4 v5, -0x1

    if-ne v0, v5, :cond_23

    move-object/from16 p14, v7

    move v6, v10

    move-object/from16 p15, v11

    move/from16 v5, v17

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/16 v37, 0x0

    :goto_21
    move/from16 v7, p7

    :goto_22
    move/from16 v10, p8

    move/from16 v17, v15

    move-object/from16 v15, v16

    goto/16 :goto_2f

    :cond_23
    const/4 v5, -0x3

    if-ne v0, v5, :cond_24

    move/from16 v37, p3

    move-object/from16 p14, v7

    move v6, v10

    move-object/from16 p15, v11

    move/from16 v5, v17

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_21

    :cond_24
    const/4 v5, -0x2

    if-ne v0, v5, :cond_27

    .line 80
    :try_start_25
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const/4 v6, -0x5

    if-ne v10, v6, :cond_25

    if-eqz v5, :cond_25

    const/4 v6, 0x0

    .line 81
    invoke-virtual {v4, v5, v6}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v10

    const-string v6, "prepend-sps-pps-to-idr-frames"

    .line 82
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "prepend-sps-pps-to-idr-frames"

    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_c
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    move-object/from16 p14, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_26

    :try_start_26
    const-string v6, "csd-0"

    .line 83
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v7, "csd-1"

    .line 84
    invoke-virtual {v5, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 85
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    add-int/2addr v6, v5

    move/from16 v25, v6

    goto :goto_23

    :cond_25
    move-object/from16 p14, v7

    :cond_26
    :goto_23
    move/from16 v37, p3

    move/from16 v7, p7

    move v6, v10

    move-object/from16 p15, v11

    move/from16 v5, v17

    const/4 v11, 0x0

    const/4 v12, -0x1

    goto :goto_22

    :catchall_7
    move-exception v0

    move-object/from16 v5, p6

    move-object v14, v4

    move v7, v10

    goto/16 :goto_4d

    :catch_c
    move-exception v0

    move-object/from16 p14, v7

    :goto_24
    move-object/from16 v19, p14

    move-object v14, v3

    move v7, v10

    goto/16 :goto_49

    :cond_27
    move-object/from16 p14, v7

    if-ltz v0, :cond_45

    .line 86
    :try_start_27
    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-eqz v5, :cond_44

    .line 87
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_16
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    const/4 v7, 0x1

    if-le v6, v7, :cond_33

    .line 88
    :try_start_28
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_f
    .catchall {:try_start_28 .. :try_end_28} :catchall_c

    and-int/lit8 v17, v7, 0x2

    if-nez v17, :cond_2e

    if-eqz v25, :cond_28

    and-int/lit8 v17, v7, 0x1

    if-eqz v17, :cond_28

    move-object/from16 p15, v11

    .line 89
    :try_start_29
    iget v11, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v11, v11, v25

    iput v11, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v6, v6, v25

    .line 90
    iput v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_25

    :cond_28
    move-object/from16 p15, v11

    :goto_25
    if-eqz v36, :cond_2d

    and-int/lit8 v6, v7, 0x1

    if-eqz v6, :cond_2d

    .line 91
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v7, 0x64

    if-le v6, v7, :cond_2b

    .line 92
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x64

    new-array v6, v6, [B

    .line 93
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    const/4 v11, 0x0

    :goto_26
    move/from16 v17, v15

    const/16 v15, 0x60

    if-ge v7, v15, :cond_2c

    .line 94
    aget-byte v15, v6, v7

    if-nez v15, :cond_29

    add-int/lit8 v15, v7, 0x1

    aget-byte v15, v6, v15

    if-nez v15, :cond_29

    add-int/lit8 v15, v7, 0x2

    aget-byte v15, v6, v15

    if-nez v15, :cond_29

    add-int/lit8 v15, v7, 0x3

    aget-byte v15, v6, v15

    move-object/from16 v30, v6

    const/4 v6, 0x1

    if-ne v15, v6, :cond_2a

    add-int/lit8 v11, v11, 0x1

    if-le v11, v6, :cond_2a

    .line 95
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v6, v7

    iput v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 96
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v6, v7

    iput v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_27

    :cond_29
    move-object/from16 v30, v6

    :cond_2a
    add-int/lit8 v7, v7, 0x1

    move/from16 v15, v17

    move-object/from16 v6, v30

    goto :goto_26

    :cond_2b
    move/from16 v17, v15

    :cond_2c
    :goto_27
    const/4 v6, 0x1

    const/16 v36, 0x0

    goto :goto_28

    :cond_2d
    move/from16 v17, v15

    const/4 v6, 0x1

    .line 97
    :goto_28
    invoke-virtual {v4, v10, v5, v14, v6}, Lcom/rudresh/videocompression/videocompression/d;->s(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    move/from16 v7, p7

    move v6, v10

    move-object/from16 v15, v16

    move/from16 v10, p8

    goto/16 :goto_2d

    :catch_d
    move-exception v0

    goto/16 :goto_24

    :cond_2e
    move-object/from16 p15, v11

    move/from16 v17, v15

    const/4 v7, -0x5

    if-ne v10, v7, :cond_32

    .line 98
    :try_start_2a
    new-array v11, v6, [B

    .line 99
    iget v15, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v15, v6

    invoke-virtual {v5, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 100
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 102
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_29
    if-ltz v5, :cond_30

    const/4 v15, 0x3

    if-le v5, v15, :cond_30

    .line 103
    aget-byte v15, v11, v5

    if-ne v15, v6, :cond_2f

    add-int/lit8 v15, v5, -0x1

    aget-byte v15, v11, v15

    if-nez v15, :cond_2f

    add-int/lit8 v15, v5, -0x2

    aget-byte v15, v11, v15

    if-nez v15, :cond_2f

    add-int/lit8 v15, v5, -0x3

    aget-byte v21, v11, v15

    if-nez v21, :cond_2f

    .line 104
    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 105
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v6, v15

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    move/from16 v30, v10

    const/4 v7, 0x0

    .line 106
    :try_start_2b
    invoke-virtual {v5, v11, v7, v15}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v15

    invoke-virtual {v6, v11, v15, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2a

    :cond_2f
    move/from16 v30, v10

    add-int/lit8 v5, v5, -0x1

    move/from16 v10, v30

    const/4 v6, 0x1

    const/4 v7, -0x5

    goto :goto_29

    :cond_30
    move/from16 v30, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2a
    move/from16 v7, p7

    move/from16 v10, p8

    move-object/from16 v15, v16

    .line 108
    invoke-static {v15, v7, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v11

    if-eqz v5, :cond_31

    if-eqz v6, :cond_31

    const-string v12, "csd-0"

    .line 109
    invoke-virtual {v11, v12, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v5, "csd-1"

    .line 110
    invoke-virtual {v11, v5, v6}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :cond_31
    const/4 v5, 0x0

    .line 111
    invoke-virtual {v4, v11, v5}, Lcom/rudresh/videocompression/videocompression/d;->a(Landroid/media/MediaFormat;Z)I

    move-result v6
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    goto :goto_2d

    :catch_e
    move-exception v0

    goto :goto_2b

    :cond_32
    move/from16 v7, p7

    move/from16 v30, v10

    goto :goto_2c

    :catch_f
    move-exception v0

    move/from16 v30, v10

    :goto_2b
    move-object/from16 v19, p14

    move-object v14, v3

    move/from16 v7, v30

    goto/16 :goto_49

    :cond_33
    move/from16 v7, p7

    move/from16 v30, v10

    move-object/from16 p15, v11

    move/from16 v17, v15

    :goto_2c
    move-object/from16 v15, v16

    move/from16 v10, p8

    move/from16 v6, v30

    .line 112
    :goto_2d
    :try_start_2c
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_34

    const/4 v5, 0x1

    goto :goto_2e

    :cond_34
    const/4 v5, 0x0

    :goto_2e
    const/4 v11, 0x0

    .line 113
    invoke-virtual {v1, v0, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_15
    .catchall {:try_start_2c .. :try_end_2c} :catchall_a

    move/from16 v37, p3

    const/4 v12, -0x1

    :goto_2f
    if-eq v0, v12, :cond_35

    move/from16 v12, p10

    move/from16 v0, p13

    move-object/from16 v7, p14

    move-object/from16 v11, p15

    move-object/from16 v41, v1

    move v10, v6

    move-object/from16 v16, v15

    move/from16 v15, v17

    move/from16 v1, v37

    move/from16 v6, p5

    move/from16 v17, v5

    :goto_30
    move/from16 v5, p4

    goto/16 :goto_1f

    :cond_35
    if-nez v20, :cond_42

    const-wide/16 v11, 0x9c4

    .line 114
    :try_start_2d
    invoke-virtual {v3, v14, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_14
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    const/4 v11, -0x1

    if-ne v0, v11, :cond_36

    move-object/from16 v35, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v2, v39

    const/4 v0, 0x0

    const-wide/16 v28, 0x9c4

    move/from16 v5, p10

    goto/16 :goto_3c

    :cond_36
    const/4 v12, -0x3

    if-ne v0, v12, :cond_37

    goto/16 :goto_3b

    :cond_37
    const/4 v12, -0x2

    if-ne v0, v12, :cond_38

    .line 115
    :try_start_2e
    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_10
    .catchall {:try_start_2e .. :try_end_2e} :catchall_a

    goto/16 :goto_3b

    :catch_10
    move-exception v0

    move-object/from16 v19, p14

    move-object v14, v3

    move v7, v6

    goto/16 :goto_49

    :cond_38
    if-ltz v0, :cond_41

    .line 116
    :try_start_2f
    iget v12, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v12, :cond_39

    const/16 p3, 0x1

    goto :goto_31

    :cond_39
    const/16 p3, 0x0

    .line 117
    :goto_31
    iget-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_14
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    cmp-long v30, v8, v46

    if-lez v30, :cond_3a

    cmp-long v30, v11, v8

    if-ltz v30, :cond_3a

    move/from16 v30, v5

    .line 118
    :try_start_30
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v5, 0x0

    const/16 v18, 0x1

    const/16 v20, 0x1

    goto :goto_32

    :cond_3a
    move/from16 v30, v5

    move/from16 v5, p3

    :goto_32
    cmp-long v31, v42, v46

    if-lez v31, :cond_3b

    sub-long v31, v11, v42

    cmp-long v33, v31, v26

    if-gez v33, :cond_3b

    move/from16 p3, v5

    .line 119
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_10
    .catchall {:try_start_30 .. :try_end_30} :catchall_a

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_3c

    move/from16 v5, p10

    const/16 p3, 0x0

    goto :goto_33

    :cond_3b
    move/from16 p3, v5

    :cond_3c
    move/from16 v5, p10

    :goto_33
    const-wide/16 v28, 0x9c4

    if-lez v5, :cond_3e

    cmp-long v31, v44, v22

    if-nez v31, :cond_3e

    move/from16 v31, v6

    int-to-long v6, v5

    cmp-long v32, v11, v6

    if-gez v32, :cond_3d

    const/4 v6, 0x0

    goto :goto_34

    :cond_3d
    move/from16 v6, p3

    move-wide/from16 v44, v11

    goto :goto_34

    :cond_3e
    move/from16 v31, v6

    move/from16 v6, p3

    .line 120
    :goto_34
    :try_start_31
    invoke-virtual {v3, v0, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v6, :cond_40

    .line 121
    iget-wide v6, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_12
    .catchall {:try_start_31 .. :try_end_31} :catchall_8

    .line 122
    :try_start_32
    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/g;->a()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_11
    .catchall {:try_start_32 .. :try_end_32} :catchall_8

    const/4 v0, 0x0

    goto :goto_35

    :catch_11
    const/4 v0, 0x1

    :goto_35
    if-nez v0, :cond_3f

    .line 123
    :try_start_33
    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/g;->d()V

    .line 124
    iget-wide v11, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_12
    .catchall {:try_start_33 .. :try_end_33} :catchall_8

    const-wide/16 v32, 0x3e8

    mul-long v11, v11, v32

    move-object/from16 v35, v2

    move-object/from16 v2, v39

    :try_start_34
    invoke-virtual {v2, v11, v12}, Lcom/rudresh/videocompression/videocompression/c;->f(J)V

    .line 125
    invoke-virtual {v2}, Lcom/rudresh/videocompression/videocompression/c;->g()Z

    goto :goto_36

    :cond_3f
    move-object/from16 v35, v2

    move-object/from16 v2, v39

    :goto_36
    move-wide/from16 v42, v6

    goto :goto_37

    :cond_40
    move-object/from16 v35, v2

    move-object/from16 v2, v39

    .line 126
    :goto_37
    iget v0, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_43

    .line 127
    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    const/4 v0, 0x0

    goto :goto_3c

    :catch_12
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_39

    :cond_41
    move-object/from16 v35, v2

    move/from16 v31, v6

    move-object/from16 v2, v39

    .line 128
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_13
    .catchall {:try_start_34 .. :try_end_34} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_38

    :catch_13
    move-exception v0

    move-object/from16 v19, p14

    move-object/from16 v39, v2

    goto :goto_3a

    :catchall_9
    move-exception v0

    move/from16 v31, v6

    :goto_38
    move-object/from16 v5, p6

    move-object v14, v4

    move-object/from16 v1, v24

    move/from16 v7, v31

    goto/16 :goto_52

    :catch_14
    move-exception v0

    move-object/from16 v35, v2

    move/from16 v31, v6

    :goto_39
    move-object/from16 v2, v39

    move-object/from16 v19, p14

    :goto_3a
    move-object v14, v3

    move/from16 v7, v31

    goto/16 :goto_40

    :cond_42
    :goto_3b
    move-object/from16 v35, v2

    move/from16 v30, v5

    move/from16 v31, v6

    move-object/from16 v2, v39

    const-wide/16 v28, 0x9c4

    move/from16 v5, p10

    :cond_43
    move/from16 v0, p13

    :goto_3c
    move/from16 v6, p5

    move-object/from16 v7, p14

    move-object/from16 v11, p15

    move-object/from16 v41, v1

    move-object/from16 v39, v2

    move v12, v5

    move-object/from16 v16, v15

    move/from16 v15, v17

    move/from16 v17, v30

    move/from16 v10, v31

    move-object/from16 v2, v35

    move/from16 v1, v37

    goto/16 :goto_30

    :catchall_a
    move-exception v0

    move-object/from16 v5, p6

    move-object v14, v4

    move v7, v6

    goto/16 :goto_4d

    :catch_15
    move-exception v0

    move-object/from16 v35, v2

    move-object/from16 v2, v39

    move-object/from16 v19, p14

    move-object v14, v3

    move v7, v6

    goto/16 :goto_40

    :cond_44
    move-object/from16 v35, v2

    move/from16 v30, v10

    move-object/from16 v2, v39

    .line 129
    :try_start_35
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_16
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_3e

    :cond_45
    move-object/from16 v35, v2

    move/from16 v30, v10

    move-object/from16 v2, v39

    .line 130
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_17
    .catchall {:try_start_35 .. :try_end_35} :catchall_b

    :catchall_b
    move-exception v0

    goto :goto_3d

    :catch_17
    move-exception v0

    move-object/from16 v19, p14

    move-object/from16 v39, v2

    goto :goto_3f

    :catchall_c
    move-exception v0

    move/from16 v30, v10

    :goto_3d
    move-object/from16 v5, p6

    move-object v14, v4

    move-object/from16 v1, v24

    move/from16 v7, v30

    goto/16 :goto_52

    :catch_18
    move-exception v0

    move-object/from16 v35, v2

    move-object/from16 p14, v7

    :goto_3e
    move/from16 v30, v10

    move-object/from16 v2, v39

    move-object/from16 v19, p14

    :goto_3f
    move-object v14, v3

    move/from16 v7, v30

    :goto_40
    move-object/from16 v2, v35

    goto/16 :goto_49

    :catch_19
    move-exception v0

    move-object/from16 v35, v2

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    goto :goto_42

    :catch_1a
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_41

    :catch_1b
    move-exception v0

    :goto_41
    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    move-object/from16 v3, v36

    :goto_42
    move-object/from16 v2, v39

    move-object/from16 v1, v41

    move-object v14, v3

    move-object/from16 v2, v35

    goto :goto_44

    :catchall_d
    move-exception v0

    goto :goto_46

    :catch_1c
    move-exception v0

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    move-object/from16 v3, v36

    move-object/from16 v2, v39

    move-object/from16 v1, v41

    goto :goto_43

    :catch_1d
    move-exception v0

    move-object v3, v4

    move-object v2, v6

    move-object v13, v7

    move-object v1, v8

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    move-object/from16 v39, v2

    :goto_43
    move-object v14, v3

    const/4 v2, 0x0

    :goto_44
    const/4 v7, -0x5

    goto :goto_45

    :catch_1e
    move-exception v0

    move-object v2, v6

    move-object v13, v7

    move-object v1, v8

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    move-object/from16 v39, v2

    const/4 v2, 0x0

    const/4 v7, -0x5

    const/4 v14, 0x0

    :goto_45
    const/16 v19, 0x0

    goto :goto_49

    :catch_1f
    move-exception v0

    move-object v13, v7

    move-object v1, v8

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    goto :goto_48

    :catchall_e
    move-exception v0

    move-object v13, v7

    :goto_46
    move-object/from16 v4, v25

    :goto_47
    move-object v14, v4

    move-object v5, v15

    move-object/from16 v1, v24

    goto/16 :goto_51

    :catch_20
    move-exception v0

    move-object v13, v7

    move/from16 v48, v14

    move-object/from16 p6, v15

    move-object/from16 v4, v25

    const/4 v1, 0x0

    :goto_48
    const/4 v2, 0x0

    const/4 v7, -0x5

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v39, 0x0

    :goto_49
    :try_start_36
    const-string v3, "Error during convert"
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_f

    move-object/from16 v5, p6

    .line 131
    :try_start_37
    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v14

    move-object v14, v1

    move/from16 v1, v48

    .line 133
    :goto_4a
    invoke-virtual {v13, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v3, :cond_46

    .line 134
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 135
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    :cond_46
    move-object v0, v14

    move-object/from16 v1, v19

    move-object/from16 v19, v39

    move-object v14, v2

    goto :goto_4b

    :catchall_f
    move-exception v0

    move-object/from16 v5, p6

    goto :goto_4c

    :cond_47
    move-object v13, v7

    move-object v5, v15

    move-object/from16 v4, v25

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v7, -0x5

    const/4 v14, 0x0

    const/16 v19, 0x0

    :goto_4b
    if-eqz v14, :cond_48

    .line 136
    invoke-virtual {v14}, Lcom/rudresh/videocompression/videocompression/g;->h()V

    goto :goto_4e

    :catchall_10
    move-exception v0

    :goto_4c
    move-object v14, v4

    :goto_4d
    move-object/from16 v1, v24

    goto :goto_52

    :cond_48
    :goto_4e
    if-eqz v19, :cond_49

    .line 137
    invoke-virtual/range {v19 .. v19}, Lcom/rudresh/videocompression/videocompression/c;->e()V

    :cond_49
    if-eqz v0, :cond_4a

    .line 138
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 139
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    :cond_4a
    if-eqz v1, :cond_4b

    .line 140
    invoke-virtual {v1}, Lcom/rudresh/videocompression/videocompression/a;->a()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    .line 141
    :cond_4b
    :goto_4f
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    if-eqz v4, :cond_4d

    .line 142
    :try_start_38
    invoke-virtual {v4}, Lcom/rudresh/videocompression/videocompression/d;->n()V

    .line 143
    invoke-virtual {v4, v7}, Lcom/rudresh/videocompression/videocompression/d;->q(I)J
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_11

    goto :goto_54

    :catchall_11
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_53

    :catchall_12
    move-exception v0

    move-object v13, v7

    move-object v5, v15

    move-object/from16 v1, v24

    move-object/from16 v4, v25

    goto :goto_50

    :catchall_13
    move-exception v0

    move-object v13, v4

    move-object v4, v7

    move-object v5, v15

    move-object/from16 v1, v16

    :goto_50
    move-object v14, v4

    :goto_51
    const/4 v7, -0x5

    goto :goto_52

    :catchall_14
    move-exception v0

    move-object v4, v7

    move-object v5, v15

    move-object/from16 v1, v16

    move-object v14, v4

    const/4 v7, -0x5

    const/4 v13, 0x0

    goto :goto_52

    :catchall_15
    move-exception v0

    move-object v5, v15

    move-object/from16 v1, v16

    const/4 v7, -0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_52
    :try_start_39
    const-string v2, "Error during compressing"

    .line 144
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_17

    if-eqz v13, :cond_4c

    .line 145
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    :cond_4c
    if-eqz v14, :cond_4d

    .line 146
    :try_start_3a
    invoke-virtual {v14}, Lcom/rudresh/videocompression/videocompression/d;->n()V

    .line 147
    invoke-virtual {v14, v7}, Lcom/rudresh/videocompression/videocompression/d;->q(I)J
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_16

    goto :goto_54

    :catchall_16
    move-exception v0

    .line 148
    :goto_53
    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_4d
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :catchall_17
    move-exception v0

    move-object v2, v0

    if-eqz v13, :cond_4e

    .line 151
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    :cond_4e
    if-eqz v14, :cond_4f

    .line 152
    :try_start_3b
    invoke-virtual {v14}, Lcom/rudresh/videocompression/videocompression/d;->n()V

    .line 153
    invoke-virtual {v14, v7}, Lcom/rudresh/videocompression/videocompression/d;->q(I)J
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_18

    goto :goto_55

    :catchall_18
    move-exception v0

    .line 154
    invoke-static {v5, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_4f
    :goto_55
    throw v2

    :cond_50
    const/4 v1, 0x0

    return-object v1
.end method
