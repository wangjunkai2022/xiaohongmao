.class public Lcom/rudresh/videocompression/videocompression/e;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "video/avc"

.field public static final d:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final e:I = 0x9c4

.field private static volatile f:Lcom/rudresh/videocompression/videocompression/e;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/rudresh/videocompression/videocompression/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/rudresh/videocompression/videocompression/l;

    invoke-direct {v0}, Lcom/rudresh/videocompression/videocompression/l;-><init>()V

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/e;->b:Lcom/rudresh/videocompression/videocompression/l;

    return-void
.end method

.method public static b(Landroid/media/MediaExtractor;Z)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "mime"

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "audio/"

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    const-string v3, "video/"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x5

    return p0
.end method

.method public static c()Lcom/rudresh/videocompression/videocompression/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/rudresh/videocompression/videocompression/e;->f:Lcom/rudresh/videocompression/videocompression/e;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lcom/rudresh/videocompression/videocompression/e;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lcom/rudresh/videocompression/videocompression/e;->f:Lcom/rudresh/videocompression/videocompression/e;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/rudresh/videocompression/videocompression/e;

    invoke-direct {v0}, Lcom/rudresh/videocompression/videocompression/e;-><init>()V

    sput-object v0, Lcom/rudresh/videocompression/videocompression/e;->f:Lcom/rudresh/videocompression/videocompression/e;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/rudresh/videocompression/videocompression/QualityPreset;)Ljava/io/File;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    .line 1
    iget v9, v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseFps:I

    .line 2
    iget v2, v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseSide:I

    .line 3
    iget v15, v0, Lcom/rudresh/videocompression/videocompression/QualityPreset;->baseBitrate:I

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 8
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 9
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_1
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x12

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0x13

    .line 13
    invoke-virtual {v0, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x18

    .line 14
    invoke-virtual {v0, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_3

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_2

    goto :goto_1

    :cond_2
    move v7, v5

    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v7, v1

    :goto_2
    const/16 v1, 0x9

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const/16 v1, 0x14

    .line 17
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 18
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->close()V

    if-le v5, v7, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    mul-int v0, v2, v7

    .line 19
    div-int/2addr v0, v5

    .line 20
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    move-object/from16 v12, p0

    move v11, v0

    move v10, v2

    goto :goto_4

    :cond_6
    mul-int v0, v2, v5

    .line 21
    div-int/2addr v0, v7

    .line 22
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    move-object/from16 v12, p0

    move v10, v0

    move v11, v2

    .line 23
    :goto_4
    iget-object v0, v12, Lcom/rudresh/videocompression/videocompression/e;->b:Lcom/rudresh/videocompression/videocompression/l;

    const/16 v16, -0x1

    const-wide/16 v17, -0x1

    move-object v1, v3

    move-object v2, v4

    move v3, v5

    move v4, v7

    move v5, v8

    move v7, v10

    move v8, v11

    move/from16 v10, v16

    move-wide/from16 v11, v17

    invoke-virtual/range {v0 .. v15}, Lcom/rudresh/videocompression/videocompression/l;->b(Ljava/io/File;Ljava/io/File;IIIIIIIIJJI)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
