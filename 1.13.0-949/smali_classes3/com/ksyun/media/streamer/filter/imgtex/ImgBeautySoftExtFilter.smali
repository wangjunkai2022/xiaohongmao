.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftExtFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautySoftExtFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftExtFilter;->a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-void
.end method

.method protected onInitialized()V
    .locals 6

    const-string v0, "singleStepOffset"

    .line 1
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 2
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySoftExtFilter;->a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

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

    .line 3
    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glUniform2fv(IILjava/nio/FloatBuffer;)V

    const-string v0, "glUniform2fv"

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
