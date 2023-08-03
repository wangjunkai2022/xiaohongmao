.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautyDenoiseFilter.java"


# instance fields
.field private a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;->a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    return-void
.end method

.method protected onInitialized()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const-string v1, "textureWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 2
    invoke-static {v0, v1}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 3
    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->mProgramId:I

    const-string v2, "textureHigh"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 4
    invoke-static {v1, v2}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;->a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->width:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "glUniform1f"

    .line 6
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautyDenoiseFilter;->a:Lcom/ksyun/media/streamer/framework/ImgTexFormat;

    iget v2, v2, Lcom/ksyun/media/streamer/framework/ImgTexFormat;->height:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 8
    invoke-static {v0}, Lcom/ksyun/media/streamer/util/gles/GlUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method
