.class public Ltv/cjump/jni/NativeBitmapFactory;
.super Ljava/lang/Object;
.source "NativeBitmapFactory.java"


# static fields
.field static a:Ljava/lang/reflect/Field; = null

.field static b:Z = false

.field static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p1, p2, v0}, Ltv/cjump/jni/NativeBitmapFactory;->b(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized b(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 2

    const-class v0, Ltv/cjump/jni/NativeBitmapFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ltv/cjump/jni/NativeBitmapFactory;->c(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static c(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-static {p2}, Ltv/cjump/jni/NativeBitmapFactory;->d(Landroid/graphics/Bitmap$Config;)I

    move-result p2

    .line 2
    invoke-static {p0, p1, p2, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IIIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static native createBitmap(IIIZ)Landroid/graphics/Bitmap;
.end method

.method private static native createBitmap19(IIIZ)Landroid/graphics/Bitmap;
.end method

.method public static d(Landroid/graphics/Bitmap$Config;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method static e()V
    .locals 2

    .line 1
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "nativeInt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 3
    sput-object v1, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    .line 4
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static g()V
    .locals 4

    .line 1
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->h()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 4
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    return-void

    .line 5
    :cond_1
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_3

    const-string v0, "ndkbitmap"

    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    goto :goto_0

    .line 9
    :cond_3
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 10
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 12
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 13
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 16
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    .line 17
    :goto_0
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    if-eqz v0, :cond_5

    .line 18
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->init()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 20
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 21
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    goto :goto_1

    .line 22
    :cond_4
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->e()V

    .line 23
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->j()Z

    move-result v0

    if-nez v0, :cond_5

    .line 24
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 25
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->c:Z

    .line 26
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    .line 27
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeBitmapFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static h(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public static declared-synchronized i()V
    .locals 3

    const-class v0, Ltv/cjump/jni/NativeBitmapFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    const/4 v2, 0x0

    .line 2
    sput-object v2, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    .line 3
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->b:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native init()Z
.end method

.method private static j()Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-static {v4, v4, v2, v3}, Ltv/cjump/jni/NativeBitmapFactory;->c(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 6
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/high16 v3, -0x10000

    .line 8
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 9
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v7, v3

    move-object v3, v2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const-string v3, "TestLib"

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v2, v3, v4, v4, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return v1

    :catch_1
    move-exception v2

    :try_start_1
    const-string v3, "NativeBitmapFactory"

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    return v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    :cond_7
    throw v1
.end method

.method private static native release()Z
.end method
