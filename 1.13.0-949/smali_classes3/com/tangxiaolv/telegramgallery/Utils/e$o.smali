.class Lcom/tangxiaolv/telegramgallery/Utils/e$o;
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
    name = "o"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:I

.field private c:Lcom/tangxiaolv/telegramgallery/TL/d;

.field private d:Ljava/lang/String;

.field final synthetic e:Lcom/tangxiaolv/telegramgallery/Utils/e;


# direct methods
.method public constructor <init>(Lcom/tangxiaolv/telegramgallery/Utils/e;ILjava/io/File;Lcom/tangxiaolv/telegramgallery/TL/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->b:I

    .line 3
    iput-object p3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a:Ljava/io/File;

    .line 4
    iput-object p4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    .line 5
    iput-object p5, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/tangxiaolv/telegramgallery/Utils/e$o;)V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    return-void
.end method

.method static synthetic b(Lcom/tangxiaolv/telegramgallery/Utils/e$o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->d:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/d;->v(Lcom/tangxiaolv/telegramgallery/TL/m;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->e:Lcom/tangxiaolv/telegramgallery/Utils/e;

    invoke-static {v1}, Lcom/tangxiaolv/telegramgallery/Utils/e;->B(Lcom/tangxiaolv/telegramgallery/Utils/e;)Lcom/tangxiaolv/telegramgallery/d;

    move-result-object v1

    new-instance v2, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;

    invoke-direct {v2, p0, v0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o$a;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$o;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tangxiaolv/telegramgallery/d;->c(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, ".jpg"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget-wide v2, v2, Lcom/tangxiaolv/telegramgallery/TL/d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c:Lcom/tangxiaolv/telegramgallery/TL/d;

    iget v2, v2, Lcom/tangxiaolv/telegramgallery/TL/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    invoke-static {}, Lcom/tangxiaolv/telegramgallery/Utils/d;->D()Lcom/tangxiaolv/telegramgallery/Utils/d;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/tangxiaolv/telegramgallery/Utils/d;->z(I)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "q_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0xb4

    .line 7
    sget-object v5, Lcom/tangxiaolv/telegramgallery/Utils/a;->d:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 8
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/2addr v5, v4

    .line 9
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 10
    iget v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->b:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_2

    .line 11
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v4, v3

    invoke-static {v0, v7, v4, v4, v6}, Lcom/tangxiaolv/telegramgallery/Utils/e;->X(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 12
    iget-object v0, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    if-ne v4, v8, :cond_5

    .line 13
    iget-object v4, p0, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".jpeg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".png"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".gif"

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    return-void

    :cond_4
    int-to-float v0, v3

    .line 17
    invoke-static {v4, v7, v0, v0, v6}, Lcom/tangxiaolv/telegramgallery/Utils/e;->X(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_5
    :goto_0
    if-nez v7, :cond_6

    .line 18
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    return-void

    .line 19
    :cond_6
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 20
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eqz v0, :cond_9

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    int-to-float v0, v0

    int-to-float v3, v3

    div-float v6, v0, v3

    int-to-float v4, v4

    div-float v3, v4, v3

    .line 21
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 22
    invoke-static {v7, v0, v3, v5}, Lcom/tangxiaolv/telegramgallery/Utils/b;->f(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq v0, v7, :cond_8

    .line 23
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    :cond_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v2}, Lio/sentry/instrumentation/file/l$b;->a(Ljava/io/FileOutputStream;Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 25
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 27
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 28
    :goto_1
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    new-instance v0, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;

    invoke-direct {v0, p0, v1, v2}, Lcom/tangxiaolv/telegramgallery/Utils/e$o$b;-><init>(Lcom/tangxiaolv/telegramgallery/Utils/e$o;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-static {v0}, Lcom/tangxiaolv/telegramgallery/Utils/a;->D(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 30
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    return-void

    .line 31
    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/Utils/e$o;->c()V

    :goto_4
    return-void
.end method
