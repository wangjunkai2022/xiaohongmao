.class public Lcom/ksyun/media/player/util/a;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "GLUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "CreateTexture"

    .line 2
    invoke-static {v0}, Lcom/ksyun/media/player/util/a;->a(Ljava/lang/String;)V

    aget v0, v1, v2

    .line 3
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v0, "BindTexture"

    .line 4
    invoke-static {v0}, Lcom/ksyun/media/player/util/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    .line 5
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 6
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v3, 0x812f

    .line 7
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 8
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string p0, "SetTexParameter"

    .line 9
    invoke-static {p0}, Lcom/ksyun/media/player/util/a;->a(Ljava/lang/String;)V

    aget p0, v1, v2

    return p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Error 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
