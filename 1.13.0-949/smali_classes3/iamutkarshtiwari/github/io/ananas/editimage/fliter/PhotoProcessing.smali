.class public Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;
.super Ljava/lang/Object;
.source "PhotoProcessing.java"


# static fields
.field private static final a:Ljava/lang/String; = "PhotoProcessing"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "photoprocessing"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->f(Landroid/graphics/Bitmap;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyHDR()V

    goto :goto_0

    .line 3
    :pswitch_1
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplySahara()V

    goto :goto_0

    .line 4
    :pswitch_2
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyGeorgia()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyCyano()V

    goto :goto_0

    .line 6
    :pswitch_4
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplySepia()V

    goto :goto_0

    .line 7
    :pswitch_5
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyBW()V

    goto :goto_0

    .line 8
    :pswitch_6
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyRetro()V

    goto :goto_0

    .line 9
    :pswitch_7
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyXPro()V

    goto :goto_0

    .line 10
    :pswitch_8
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyTestino()V

    goto :goto_0

    .line 11
    :pswitch_9
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyAnsel()V

    goto :goto_0

    .line 12
    :pswitch_a
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeApplyInstafix()V

    .line 13
    :goto_0
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 14
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeDeleteBitmap()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeInitBitmap(II)I

    .line 2
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->f(Landroid/graphics/Bitmap;)V

    .line 3
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeFlipHorizontally()V

    .line 4
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeDeleteBitmap()V

    return-object p0
.end method

.method private static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeGetBitmapWidth()I

    move-result v8

    .line 2
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeGetBitmapHeight()I

    move-result v9

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v8, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v9, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    :cond_1
    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 9
    :cond_2
    new-array v10, v8, [I

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_3

    .line 10
    invoke-static {v11, v10}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeGetBitmapRow(I[I)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    .line 11
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->f(Landroid/graphics/Bitmap;)V

    .line 2
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 4
    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeInitBitmap(II)I

    .line 5
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->f(Landroid/graphics/Bitmap;)V

    const/16 v3, 0x5a

    if-ne p1, v3, :cond_0

    .line 6
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeRotate90()I

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 9
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeDeleteBitmap()V

    goto :goto_0

    :cond_0
    const/16 v3, 0xb4

    if-ne p1, v3, :cond_1

    .line 11
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeRotate180()V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 13
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 14
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 15
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeDeleteBitmap()V

    goto :goto_0

    :cond_1
    const/16 v3, 0x10e

    if-ne p1, v3, :cond_2

    .line 16
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeRotate180()V

    .line 17
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeRotate90()I

    .line 18
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 19
    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 20
    invoke-static {p0}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 21
    invoke-static {}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeDeleteBitmap()V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static f(Landroid/graphics/Bitmap;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 3
    invoke-static {v8, v9}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeInitBitmap(II)I

    .line 4
    new-array v10, v8, [I

    const/4 v0, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v5, v11

    move v6, v8

    .line 5
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 6
    invoke-static {v11, v10}, Liamutkarshtiwari/github/io/ananas/editimage/fliter/PhotoProcessing;->nativeSetBitmapRow(I[I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static native freeBeautifyMatrix()V
.end method

.method public static native handleSmooth(Landroid/graphics/Bitmap;F)V
.end method

.method public static native handleSmoothAndWhiteSkin(Landroid/graphics/Bitmap;FF)V
.end method

.method public static native handleWhiteSkin(Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeApplyAnsel()V
.end method

.method public static native nativeApplyBW()V
.end method

.method public static native nativeApplyCyano()V
.end method

.method public static native nativeApplyGeorgia()V
.end method

.method public static native nativeApplyHDR()V
.end method

.method public static native nativeApplyInstafix()V
.end method

.method public static native nativeApplyRetro()V
.end method

.method public static native nativeApplySahara()V
.end method

.method public static native nativeApplySepia()V
.end method

.method public static native nativeApplyTestino()V
.end method

.method public static native nativeApplyXPro()V
.end method

.method public static native nativeDeleteBitmap()V
.end method

.method public static native nativeFlipHorizontally()V
.end method

.method public static native nativeGetBitmapHeight()I
.end method

.method public static native nativeGetBitmapRow(I[I)V
.end method

.method public static native nativeGetBitmapWidth()I
.end method

.method public static native nativeInitBitmap(II)I
.end method

.method public static native nativeLoadResizedJpegBitmap([BII)V
.end method

.method public static native nativeResizeBitmap(II)V
.end method

.method public static native nativeRotate180()V
.end method

.method public static native nativeRotate90()I
.end method

.method public static native nativeSetBitmapRow(I[I)V
.end method
