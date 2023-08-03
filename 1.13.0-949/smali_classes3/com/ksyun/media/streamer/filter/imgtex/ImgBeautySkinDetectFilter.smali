.class public Lcom/ksyun/media/streamer/filter/imgtex/ImgBeautySkinDetectFilter;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgBeautySkinDetectFilter.java"


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 2

    const-string v0, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->mInited:Z

    return-void
.end method
