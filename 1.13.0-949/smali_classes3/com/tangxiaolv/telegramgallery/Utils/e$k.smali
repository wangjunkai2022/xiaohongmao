.class Lcom/tangxiaolv/telegramgallery/Utils/e$k;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/Utils/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field private a:Ljava/lang/Thread;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

.field private d:Z

.field final synthetic e:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;Lcom/tangxiaolv/telegramgallery/Utils/e$j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/e$k;)Lcom/tangxiaolv/telegramgallery/Utils/e$j;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    return-object p0
.end method

.method private c(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;

    invoke-direct {v0, p0, p1}, Lcom/tangxiaolv/telegramgallery/Utils/e$k$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$k;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->a:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->a:Ljava/lang/Thread;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 4
    iget-boolean v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    if-eqz v0, :cond_0

    .line 5
    monitor-exit v2

    return-void

    .line 6
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 7
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-boolean v2, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->f:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 9
    :try_start_1
    iget-boolean v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    if-eqz v0, :cond_1

    .line 10
    monitor-exit v2

    return-void

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    new-instance v0, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;

    iget-object v2, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v5, v2, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    iget-object v2, v2, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v6, "d"

    .line 13
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v5, v3}, Lcom/tangxiaolv/telegramgallery/AnimatedFileDrawable;-><init>(Ljava/io/File;Z)V

    .line 14
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 15
    invoke-direct {v1, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c(Landroid/graphics/drawable/BitmapDrawable;)V

    goto/16 :goto_14

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 17
    :cond_3
    iget-object v2, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->g:Ljava/io/File;

    .line 18
    iget-boolean v5, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->i:Z

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v5, :cond_10

    .line 19
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    const/4 v5, 0x3

    if-eqz v0, :cond_6

    const-string v10, "b2"

    .line 20
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    .line 21
    :cond_4
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    const-string v10, "b1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    .line 22
    :cond_5
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    const-string v10, "b"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 23
    :goto_1
    :try_start_3
    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/tangxiaolv/telegramgallery/Utils/e;->d(Lcom/tangxiaolv/telegramgallery/Utils/e;J)J

    .line 24
    iget-object v10, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 25
    :try_start_4
    iget-boolean v11, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    if-eqz v11, :cond_7

    .line 26
    monitor-exit v10

    return-void

    .line 27
    :cond_7
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 28
    :try_start_5
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 29
    iput v3, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 30
    iget-boolean v11, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v11, :cond_a

    .line 31
    new-instance v11, Ljava/io/RandomAccessFile;

    const-string v12, "r"

    invoke-direct {v11, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    long-to-int v13, v12

    .line 33
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->e()[B

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->e()[B

    move-result-object v12

    array-length v12, v12

    if-lt v12, v13, :cond_8

    .line 34
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->e()[B

    move-result-object v12

    goto :goto_2

    :cond_8
    move-object v12, v9

    :goto_2
    if-nez v12, :cond_9

    .line 35
    new-array v12, v13, [B

    invoke-static {v12}, Lcom/tangxiaolv/telegramgallery/Utils/e;->f([B)[B

    .line 36
    :cond_9
    invoke-virtual {v11, v12, v4, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 37
    invoke-static {v12, v4, v13, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 38
    :cond_a
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4, v2}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 39
    invoke-static {v4, v9, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 40
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v4, v11

    :goto_3
    if-nez v4, :cond_c

    .line 41
    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v0, v10, v6

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 42
    :cond_b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    move-object v11, v4

    goto :goto_4

    :cond_c
    if-ne v0, v3, :cond_d

    .line 43
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_13

    :cond_d
    if-ne v0, v8, :cond_e

    .line 44
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_13

    :cond_e
    if-ne v0, v5, :cond_f

    .line 45
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_13

    :cond_f
    if-nez v0, :cond_2d

    .line 46
    iget-boolean v0, v10, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_2d

    .line 47
    invoke-static {v4}, Lcom/tangxiaolv/telegramgallery/Utils/i;->q(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    .line 48
    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    move-object v11, v9

    .line 49
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v11

    goto/16 :goto_13

    .line 50
    :cond_10
    :try_start_a
    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    if-eqz v0, :cond_15

    const-string v5, "thumb://"

    .line 51
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 52
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    const-string v5, ":"

    const/16 v10, 0x8

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_14

    .line 53
    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v5, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_5
    const/4 v5, 0x0

    :goto_6
    const/4 v10, 0x0

    goto :goto_7

    .line 54
    :cond_11
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    const-string v5, "vthumb://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 55
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    const-string v5, ":"

    const/16 v10, 0x9

    invoke-virtual {v0, v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_12

    .line 56
    iget-object v5, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v5, v5, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x1

    goto :goto_6

    :cond_12
    move-object v0, v9

    goto :goto_5

    .line 57
    :cond_13
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    move-object v0, v9

    goto :goto_5

    :cond_15
    move-object v0, v9

    const/4 v5, 0x0

    const/4 v10, 0x1

    :goto_7
    const/16 v11, 0x14

    if-eqz v0, :cond_16

    const/4 v11, 0x0

    :cond_16
    if-eqz v11, :cond_17

    .line 58
    iget-object v12, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v12}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c(Lcom/tangxiaolv/telegramgallery/Utils/e;)J

    move-result-wide v12

    cmp-long v14, v12, v6

    if-eqz v14, :cond_17

    iget-object v12, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    .line 59
    invoke-static {v12}, Lcom/tangxiaolv/telegramgallery/Utils/e;->c(Lcom/tangxiaolv/telegramgallery/Utils/e;)J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    int-to-long v6, v11

    sub-long/2addr v14, v6

    cmp-long v6, v12, v14

    .line 60
    :cond_17
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v6, v11, v12}, Lcom/tangxiaolv/telegramgallery/Utils/e;->d(Lcom/tangxiaolv/telegramgallery/Utils/e;J)J

    .line 61
    iget-object v6, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 62
    :try_start_b
    iget-boolean v7, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    if-eqz v7, :cond_18

    .line 63
    monitor-exit v6

    return-void

    .line 64
    :cond_18
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 65
    :try_start_c
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 66
    iput v3, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 67
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v7, v7, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    const/4 v11, 0x0

    if-eqz v7, :cond_1e

    const-string v12, "_"

    .line 68
    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 69
    array-length v12, v7

    if-lt v12, v8, :cond_19

    .line 70
    aget-object v8, v7, v4

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    sget v12, Lcom/tangxiaolv/telegramgallery/Utils/a;->c:F

    mul-float v8, v8, v12

    .line 71
    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    sget v12, Lcom/tangxiaolv/telegramgallery/Utils/a;->c:F

    mul-float v7, v7, v12

    goto :goto_8

    :cond_19
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 72
    :goto_8
    iget-object v12, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v12, v12, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    const-string v13, "b"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    cmpl-float v13, v8, v11

    if-eqz v13, :cond_1d

    cmpl-float v13, v7, v11

    if-eqz v13, :cond_1d

    .line 73
    iput-boolean v3, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_1b

    if-eqz v5, :cond_1a

    .line 74
    sget-object v13, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 75
    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 76
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 77
    invoke-static {v13, v14, v15, v3, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_9

    .line 78
    :cond_1a
    sget-object v13, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 79
    invoke-virtual {v13}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 81
    invoke-static {v13, v14, v15, v3, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :goto_9
    move-object v14, v9

    goto :goto_a

    .line 82
    :cond_1b
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v13, v2}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v13

    .line 83
    invoke-static {v13, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 84
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 85
    :goto_a
    iget v13, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v13, v13

    .line 86
    iget v15, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v15, v15

    div-float/2addr v13, v8

    div-float/2addr v15, v7

    .line 87
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v15, v7, v13

    if-gez v15, :cond_1c

    const/high16 v7, 0x3f800000    # 1.0f

    .line 88
    :cond_1c
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    float-to-int v7, v7

    .line 89
    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_b

    :cond_1d
    move-object v14, v9

    goto :goto_b

    :cond_1e
    move-object v14, v9

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 90
    :goto_b
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 91
    :try_start_e
    iget-boolean v13, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->d:Z

    if-eqz v13, :cond_1f

    .line 92
    monitor-exit v7

    return-void

    .line 93
    :cond_1f
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 94
    :try_start_f
    iget-object v7, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v13, v7, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    if-eqz v13, :cond_21

    if-nez v12, :cond_21

    iget-object v7, v7, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->j:Ljava/lang/String;

    if-eqz v7, :cond_20

    goto :goto_c

    .line 95
    :cond_20
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_d

    .line 96
    :cond_21
    :goto_c
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 97
    :goto_d
    iput-boolean v4, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    if-eqz v0, :cond_23

    if-eqz v5, :cond_22

    .line 98
    sget-object v5, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 99
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move v15, v12

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 101
    invoke-static {v5, v11, v12, v3, v6}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_e

    :cond_22
    move v15, v12

    .line 102
    sget-object v5, Lcom/tangxiaolv/telegramgallery/e;->a:Landroid/app/Application;

    .line 103
    invoke-virtual {v5}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 104
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 105
    invoke-static {v5, v11, v12, v3, v6}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_e

    :cond_23
    move v15, v12

    :goto_e
    if-nez v14, :cond_27

    .line 106
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_26

    .line 107
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v0, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v11

    long-to-int v5, v11

    .line 109
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g()[B

    move-result-object v7

    if-eqz v7, :cond_24

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g()[B

    move-result-object v7

    array-length v7, v7

    if-lt v7, v5, :cond_24

    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/e;->g()[B

    move-result-object v7

    goto :goto_f

    :cond_24
    move-object v7, v9

    :goto_f
    if-nez v7, :cond_25

    .line 110
    new-array v7, v5, [B

    invoke-static {v7}, Lcom/tangxiaolv/telegramgallery/Utils/e;->h([B)[B

    .line 111
    :cond_25
    invoke-virtual {v0, v7, v4, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 112
    invoke-static {v7, v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    goto :goto_10

    .line 113
    :cond_26
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lio/sentry/instrumentation/file/h$b;->a(Ljava/io/FileInputStream;Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 114
    invoke-static {v0, v9, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 115
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_27
    :goto_10
    if-nez v14, :cond_2a

    if-eqz v10, :cond_29

    .line 116
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_28

    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    if-nez v0, :cond_29

    .line 117
    :cond_28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :catchall_5
    :cond_29
    :goto_11
    move-object v4, v14

    goto :goto_13

    .line 118
    :cond_2a
    iget-object v0, v1, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c:Lcom/tangxiaolv/telegramgallery/Utils/e$j;

    iget-object v0, v0, Lcom/tangxiaolv/telegramgallery/Utils/e$j;->c:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 119
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 120
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 121
    iget-boolean v5, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v5, :cond_2b

    const/4 v5, 0x0

    cmpl-float v5, v8, v5

    if-eqz v5, :cond_2b

    cmpl-float v5, v0, v8

    if-eqz v5, :cond_2b

    const/high16 v5, 0x41a00000    # 20.0f

    add-float/2addr v5, v8

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2b

    div-float v5, v0, v8

    float-to-int v7, v8

    div-float v5, v2, v5

    float-to-int v5, v5

    .line 122
    invoke-static {v14, v7, v5, v3}, Lcom/tangxiaolv/telegramgallery/Utils/b;->f(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v14, v5, :cond_2b

    .line 123
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    move-object v14, v5

    :cond_2b
    if-eqz v14, :cond_2c

    if-eqz v15, :cond_2c

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2c

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2c

    .line 124
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_12

    :cond_2c
    const/4 v3, 0x0

    :goto_12
    if-nez v3, :cond_29

    .line 125
    iget-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-eqz v0, :cond_29

    .line 126
    invoke-static {v14}, Lcom/tangxiaolv/telegramgallery/Utils/i;->q(Landroid/graphics/Bitmap;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_11

    :catchall_6
    move-exception v0

    .line 127
    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :catchall_7
    move-exception v0

    .line 128
    :try_start_12
    monitor-exit v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-object v4, v9

    .line 129
    :cond_2d
    :goto_13
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    if-eqz v4, :cond_2e

    .line 130
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_2e
    invoke-direct {v1, v9}, Lcom/tangxiaolv/telegramgallery/Utils/e$k;->c(Landroid/graphics/drawable/BitmapDrawable;)V

    :goto_14
    return-void

    :catchall_9
    move-exception v0

    .line 131
    :try_start_14
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw v0
.end method
