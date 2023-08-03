.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyIllusionFilter.java"


# instance fields
.field private a:I

.field private final b:Ljava/lang/Object;

.field private c:[F

.field private d:Lcom/ksyun/media/streamer/framework/ImgTexFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public isGrindRatioSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onDrawArraysPre()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->a:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->d:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-void
.end method

.method protected onInitialized()V
    .locals 6

    const-string v0, "singleStepOffset"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    const-string v1, "params"

    .line 2
    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->a:I

    .line 3
    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->mGrindRatio:F

    invoke-virtual {p0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->setGrindRatio(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->d:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v3, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v3, v4, v3

    const/4 v5, 0x0

    aput v3, v1, v5

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    int-to-float v2, v2

    div-float/2addr v4, v2

    const/4 v2, 0x1

    aput v4, v1, v2

    .line 5
    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    const-string v0, "glUniform2fv"

    .line 6
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public setGrindRatio(F)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgFilterBase;->setGrindRatio(F)V

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->b:Ljava/lang/Object;

    monitor-enter v0

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    cmpg-float v7, p1, v1

    if-gez v7, :cond_0

    :try_start_0
    new-array p1, v6, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p1, v5

    aput v1, p1, v4

    const v1, 0x3e19999a    # 0.15f

    aput v1, p1, v3

    aput v1, p1, v2

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const v7, 0x3f4ccccd    # 0.8f

    const v8, 0x3ecccccd    # 0.4f

    cmpg-float v9, p1, v8

    if-gez v9, :cond_1

    new-array p1, v6, [F

    aput v7, p1, v5

    const v5, 0x3f666666    # 0.9f

    aput v5, p1, v4

    aput v1, p1, v3

    aput v1, p1, v2

    .line 4
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    goto :goto_0

    :cond_1
    const v1, 0x3f19999a    # 0.6f

    cmpg-float v9, p1, v1

    if-gez v9, :cond_2

    new-array p1, v6, [F

    aput v1, p1, v5

    aput v7, p1, v4

    const/high16 v1, 0x3e800000    # 0.25f

    aput v1, p1, v3

    aput v1, p1, v2

    .line 5
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    goto :goto_0

    :cond_2
    cmpg-float p1, p1, v7

    if-gez p1, :cond_3

    new-array p1, v6, [F

    aput v8, p1, v5

    const v1, 0x3f333333    # 0.7f

    aput v1, p1, v4

    const v1, 0x3ec28f5c    # 0.38f

    aput v1, p1, v3

    const v1, 0x3e99999a    # 0.3f

    aput v1, p1, v2

    .line 6
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    goto :goto_0

    :cond_3
    new-array p1, v6, [F

    const v1, 0x3ea8f5c3    # 0.33f

    aput v1, p1, v5

    const v1, 0x3f2147ae    # 0.63f

    aput v1, p1, v4

    aput v8, p1, v3

    const v1, 0x3eb33333    # 0.35f

    aput v1, p1, v2

    .line 7
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyIllusionFilter;->c:[F

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
