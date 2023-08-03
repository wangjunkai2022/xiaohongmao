.class public Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(IIIII)I
    .locals 4

    if-eqz p4, :cond_1

    const/16 v0, 0xb4

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p1

    int-to-double p0, p0

    goto :goto_1

    :cond_1
    :goto_0
    int-to-double v0, p0

    int-to-double p0, p1

    :goto_1
    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/b;->a(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v7

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 3
    invoke-static {v0, v2}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->d(Ljava/io/InputStream;[I)Z

    move-result v3

    .line 4
    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/d;->c(Ljava/io/Closeable;)V

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    if-ltz p2, :cond_2

    if-gez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget v1, v2, v1

    aget v0, v2, v0

    int-to-double v2, p2

    const-wide v4, 0x3ff3333333333333L    # 1.2

    mul-double v2, v2, v4

    double-to-int v2, v2

    int-to-double v8, p3

    mul-double v8, v8, v4

    double-to-int v3, v8

    .line 5
    invoke-static {v1, v0, v2, v3, v7}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->a(IIIII)I

    move-result v0

    .line 6
    :cond_2
    :goto_0
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->e()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 7
    iput v0, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    .line 8
    invoke-static/range {v2 .. v8}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method static c(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x14

    if-le p6, v1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->h(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    :try_start_0
    invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    invoke-static {v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/d;->c(Ljava/io/Closeable;)V

    if-eqz v0, :cond_4

    if-lez p3, :cond_4

    if-lez p4, :cond_4

    .line 4
    invoke-static {v0, p3, p4, p5}, Liamutkarshtiwari/github/io/ananas/editimage/utils/a;->s(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v0, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catch_0
    nop

    .line 6
    invoke-static {v1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/d;->c(Ljava/io/Closeable;)V

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_3
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    add-int/lit8 v7, p6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-static/range {v1 .. v7}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->c(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static d(Ljava/io/InputStream;[I)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 4
    iget p0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v2, 0x0

    if-lez p0, :cond_0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_0

    .line 5
    aput v0, p1, v2

    .line 6
    aput p0, p1, v1

    return v1

    :cond_0
    return v2
.end method

.method static e()Landroid/graphics/BitmapFactory$Options;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 4
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 5
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 7
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 8
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    return-object v0
.end method

.method static f(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static g(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lio/sentry/instrumentation/file/h$b;->d(Ljava/io/FileInputStream;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "file"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "content"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-static {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->f(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string p0, "http"

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 6
    :cond_3
    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->i(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->g(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_5
    :goto_1
    return-object v0
.end method

.method static i(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 4
    :try_start_2
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x12f

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "Location"

    .line 7
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/view/imagezoom/utils/a;->i(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_2
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0

    :catch_3
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v0
.end method
