.class public abstract Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;
.super Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;
.source "ImgEffectFilterBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;
    }
.end annotation


# static fields
.field public static final GRADIENT_FACTOR_TYPE_DOWN:I = 0x2

.field public static final GRADIENT_FACTOR_TYPE_UP:I = 0x1

.field public static final GRADIENT_FACTOR_TYPE_UP_DOWN:I = 0x3

.field public static final GRADIENT_TYPE_1:I = 0x1

.field public static final GRADIENT_TYPE_2:I = 0x2

.field private static final a:Ljava/lang/String; = "ImgEffectFilterBase"

.field private static final b:I = 0x14


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private f:F

.field private g:I

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/util/Timer;

.field private q:Ljava/util/TimerTask;

.field private r:I

.field private s:Z

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;-><init>(Lcom/ksyun/media/streamer/util/gles/GLRender;)V

    const-string p1, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    .line 2
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    const/16 v2, 0x1e

    .line 5
    iput v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 6
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->h:F

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 7
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->i:F

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    .line 8
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->j:F

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->l:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->m:I

    .line 12
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->o:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->s:Z

    .line 14
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    .line 16
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPinNum()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vTexture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;Ljava/lang/String;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    return p0
.end method

.method static synthetic a(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    return p1
.end method

.method static synthetic b(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)I
    .locals 2

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    return v0
.end method

.method static synthetic c(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;)F
    .locals 0

    iget p0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->j:F

    return p0
.end method


# virtual methods
.method public getGradientFactorType()I
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->l:I

    return v0
.end method

.method public getGradientFactorValue()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    return v0
.end method

.method protected abstract getGradientValue()[F
.end method

.method public getMAXGradientFactorValue()F
    .locals 1

    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    return v0
.end method

.method public getSinkPinNum()I
    .locals 1

    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPinNum()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ksyun/media/streamer/framework/SinkPin<",
            "Lcom/ksyun/media/streamer/framework/ImgTexFrame;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->getSinkPin(I)Lcom/ksyun/media/streamer/framework/SinkPin;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getVSinkPinNum()I
.end method

.method protected onDisconnect(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilterBase;->onDisconnect(Z)V

    .line 2
    iget p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->e:F

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    return-void
.end method

.method public onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 2
    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;

    iget-object v1, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->a:[I

    aget-object v3, p1, v2

    iget v3, v3, Lcom/ksyun/media/streamer/framework/ImgTexFrame;->textureId:I

    aput v3, v1, v0

    :cond_0
    move v1, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onDraw([Lcom/ksyun/media/streamer/framework/ImgTexFrame;)V

    return-void
.end method

.method public onDrawArraysAfter()V
    .locals 2

    const v0, 0x84c2

    .line 1
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public onDrawArraysPre()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->m:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->o:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getGradientValue()[F

    move-result-object v3

    invoke-static {v0, v4, v3, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getGradientValue()[F

    move-result-object v3

    aget v3, v3, v2

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPinNum()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;

    .line 7
    iget v4, v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->c:I

    if-ltz v4, :cond_3

    const v4, 0x84c2

    .line 8
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v4, 0xde1

    .line 9
    iget-object v5, v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->a:[I

    aget v5, v5, v2

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 10
    iget v3, v3, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->c:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->s:Z

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getGradientFactorValue()F

    move-result v0

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->h:F

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientFactorValue(F)V

    .line 13
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 14
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->e:F

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    :cond_5
    return-void
.end method

.method protected onFormatChanged(Lcom/ksyun/media/streamer/framework/ImgTexFormat;)V
    .locals 0

    return-void
.end method

.method public onInitialized()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->n:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->m:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPinNum()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;

    .line 6
    iget-object v2, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->getUniformLocation(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->c:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRelease()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->onRelease()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->getVSinkPinNum()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;

    .line 4
    iget v3, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->c:I

    if-ltz v3, :cond_0

    .line 5
    iget-object v3, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->a:[I

    const/4 v4, 0x1

    invoke-static {v4, v3, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 6
    iget-object v2, v2, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$a;->a:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setEffectAuto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->s:Z

    return-void
.end method

.method public setFragment(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a()Lcom/ksyun/media/streamer/util/CredtpWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/CredtpWrapper;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->d:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGradientFactorFrameCount(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->g:I

    .line 2
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->h:F

    return-void
.end method

.method public setGradientFactorType(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->l:I

    return-void
.end method

.method public setGradientFactorValue(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->k:F

    return-void
.end method

.method public setGradientName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->n:Ljava/lang/String;

    return-void
.end method

.method public setGradientType(I)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->o:I

    return-void
.end method

.method public setMAXGradientFactorValue(F)V
    .locals 0

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    return-void
.end method

.method public setTimeInfoEffectDuration(J)V
    .locals 1

    long-to-float v0, p1

    .line 1
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->i:F

    long-to-int p2, p1

    .line 2
    div-int/lit8 p2, p2, 0x14

    int-to-float p1, p2

    iput p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->j:F

    return-void
.end method

.method public setVertex(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgTexFilter;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startFilterTime()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->f:F

    iget v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->j:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    .line 3
    new-instance v1, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;

    invoke-direct {v1, p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase$1;-><init>(Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;F)V

    iput-object v1, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->q:Ljava/util/TimerTask;

    .line 4
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->p:Ljava/util/Timer;

    .line 5
    iget-object v3, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->q:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public stopFilterTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->p:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->p:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->setGradientFactorValue(F)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ksyun/media/streamer/filter/imgtex/ImgEffectFilterBase;->r:I

    :cond_0
    return-void
.end method
