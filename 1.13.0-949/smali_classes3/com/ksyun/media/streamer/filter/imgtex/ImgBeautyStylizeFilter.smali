.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyStylizeFilter.java"


# static fields
.field public static final KSY_FILTER_STYLE_1977:I = 0x0

.field public static final KSY_FILTER_STYLE_AMARO:I = 0x1

.field public static final KSY_FILTER_STYLE_BRANNAN:I = 0x2

.field public static final KSY_FILTER_STYLE_EARLY_BIRD:I = 0x3

.field public static final KSY_FILTER_STYLE_HEFE:I = 0x4

.field public static final KSY_FILTER_STYLE_HUDSON:I = 0x5

.field public static final KSY_FILTER_STYLE_INK:I = 0x6

.field public static final KSY_FILTER_STYLE_LOMO:I = 0x7

.field public static final KSY_FILTER_STYLE_LORD_KELVIN:I = 0x8

.field public static final KSY_FILTER_STYLE_NASHVILLE:I = 0x9

.field public static final KSY_FILTER_STYLE_RISE:I = 0xa

.field public static final KSY_FILTER_STYLE_SIERRA:I = 0xb

.field public static final KSY_FILTER_STYLE_SUTRO:I = 0xc

.field public static final KSY_FILTER_STYLE_TOASTER:I = 0xd

.field public static final KSY_FILTER_STYLE_VALENCIA:I = 0xe

.field public static final KSY_FILTER_STYLE_WALDEN:I = 0xf

.field public static final KSY_FILTER_STYLE_XPROLL:I = 0x10

.field public static final KSY_RES_PATH:Ljava/lang/String; = "assets://KSYResource/"

.field private static final a:Ljava/lang/String; = "ImgBeautyStylizeFilter"

.field private static b:[[Ljava/lang/String;

.field private static c:[I


# instance fields
.field protected GL_TEXTURES:[I

.field private d:I

.field protected mBitmaps:[Landroid/graphics/Bitmap;

.field protected mInputTex:[I

.field protected mInputTexLoc:[I

.field protected mTexNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x11

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "map_1977"

    .line 1
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "blackboard_1024"

    const-string v3, "overlay_map"

    const-string v4, "amaro_map"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const-string v4, "brannan_process"

    const-string v5, "brannan_blowout"

    const-string v6, "brannan_contrast"

    const-string v7, "brannan_luma"

    const-string v8, "brannan_screen"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const-string v4, "early_bird_curves"

    const-string v5, "earlybird_overlay_map"

    const-string v6, "vignette_map"

    const-string v7, "earlybird_blowout"

    const-string v8, "earlybird_map"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v1, v5

    const-string v4, "edge_burn"

    const-string v5, "hefe_map"

    const-string v7, "hefe_soft_light"

    const-string v8, "hefe_metal"

    filled-new-array {v4, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v1, v5

    const-string v4, "hudson_background"

    const-string v5, "hudson_map"

    filled-new-array {v4, v3, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v1, v5

    const-string v4, "inkwell_map"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v1, v5

    const-string v4, "lomo_map"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    const-string v4, "kelvin_map"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    const-string v4, "nashwi"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const-string v4, "rise_map"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xa

    aput-object v2, v1, v4

    const-string v2, "sierra_vignette"

    const-string v4, "sierra_map"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "sutro_metal"

    const-string v3, "soft_light"

    const-string v4, "sutro_edge_burn"

    const-string v5, "sutro_curves"

    filled-new-array {v6, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "toaster_metal"

    const-string v3, "toaster_soft_light"

    const-string v4, "toaster_curves"

    const-string v5, "toaster_overlay_map_warm"

    const-string v7, "toaster_color_shift"

    filled-new-array {v2, v3, v4, v5, v7}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "valencia_map"

    const-string v3, "valencia_gradient_map"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "walden_map"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-string v2, "xpro_map"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sput-object v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->b:[[Ljava/lang/String;

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->c:[I

    return-void

    :array_0
    .array-data 4
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Landroid/content/Context;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->c:[I

    aget v0, v0, p3

    const-string v1, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    invoke-direct {p0, p1, v1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->GL_TEXTURES:[I

    .line 3
    iput p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->d:I

    .line 4
    sget-object p1, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->b:[[Ljava/lang/String;

    aget-object p1, p1, p3

    .line 5
    array-length p3, p1

    iput p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mTexNum:I

    .line 6
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTexLoc:[I

    .line 7
    new-array v0, p3, [I

    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTex:[I

    .line 8
    new-array p3, p3, [Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    .line 9
    :goto_0
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mTexNum:I

    if-ge p3, v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTex:[I

    const/4 v1, -0x1

    aput v1, v0, p3

    .line 11
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assets://KSYResource/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ksyun/media/streamer/util/BitmapLoader;->loadBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v0, p3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImgStyleBaseFilter: bitmap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImgBeautyStylizeFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x84c3
        0x84c4
        0x84c5
        0x84c6
        0x84c7
        0x84c8
    .end array-data
.end method


# virtual methods
.method public getStyleFilterId()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->d:I

    return v0
.end method

.method protected onDrawArraysPre()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mTexNum:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->GL_TEXTURES:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v1, 0xde1

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTex:[I

    aget v2, v2, v0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTexLoc:[I

    aget v1, v1, v0

    add-int/lit8 v2, v0, 0x3

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitialized()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onInitialized()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mTexNum:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x2

    .line 3
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTexLoc:[I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "inputImageTexture%d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->GL_TEXTURES:[I

    aget v2, v2, v1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTex:[I

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->loadTexture(Landroid/graphics/Bitmap;I)I

    move-result v3

    aput v3, v2, v1

    .line 8
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onRelease()V

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mTexNum:I

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyStylizeFilter;->mInputTex:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method
