.class public Lscreenstreamer/filters/a;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"


# static fields
.field public static final k:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

.field public static final l:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 1
    invoke-direct {p0, v0, v1}, Lscreenstreamer/filters/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lscreenstreamer/filters/a;->a:Ljava/util/LinkedList;

    .line 4
    iput-object p1, p0, Lscreenstreamer/filters/a;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lscreenstreamer/filters/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string p0, "\\A"

    invoke-virtual {v0, p0}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/Scanner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static k(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lscreenstreamer/filters/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method protected A(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$h;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$h;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected B(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$i;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$i;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lscreenstreamer/filters/a;->j:Z

    .line 2
    iget v0, p0, Lscreenstreamer/filters/a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 3
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->l()V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->g:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->i:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lscreenstreamer/filters/a;->f:I

    return v0
.end method

.method public final i()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->o()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lscreenstreamer/filters/a;->j:Z

    .line 3
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->p()V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lscreenstreamer/filters/a;->j:Z

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    .line 1
    iget v0, p0, Lscreenstreamer/filters/a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 2
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->s()V

    .line 3
    iget-boolean v0, p0, Lscreenstreamer/filters/a;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 5
    iget v1, p0, Lscreenstreamer/filters/a;->e:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 6
    iget p2, p0, Lscreenstreamer/filters/a;->e:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 7
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 8
    iget v1, p0, Lscreenstreamer/filters/a;->g:I

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 9
    iget p2, p0, Lscreenstreamer/filters/a;->g:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/16 p3, 0xde1

    if-eq p1, p2, :cond_1

    const p2, 0x84c0

    .line 10
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 11
    invoke-static {p3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    iget p1, p0, Lscreenstreamer/filters/a;->f:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lscreenstreamer/filters/a;->n()V

    const/4 p1, 0x5

    const/4 p2, 0x4

    .line 14
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 15
    iget p1, p0, Lscreenstreamer/filters/a;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 16
    iget p1, p0, Lscreenstreamer/filters/a;->g:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 17
    invoke-static {p3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/filters/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lscreenstreamer/filters/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lscreenstreamer/filters/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/a;->d:I

    const-string v1, "position"

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/a;->e:I

    .line 3
    iget v0, p0, Lscreenstreamer/filters/a;->d:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/a;->f:I

    .line 4
    iget v0, p0, Lscreenstreamer/filters/a;->d:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lscreenstreamer/filters/a;->g:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lscreenstreamer/filters/a;->j:Z

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q(II)V
    .locals 0

    .line 1
    iput p1, p0, Lscreenstreamer/filters/a;->h:I

    .line 2
    iput p2, p0, Lscreenstreamer/filters/a;->i:I

    return-void
.end method

.method protected r(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lscreenstreamer/filters/a;->a:Ljava/util/LinkedList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lscreenstreamer/filters/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected s()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lscreenstreamer/filters/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lscreenstreamer/filters/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected t(IF)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$b;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$b;-><init>(Lscreenstreamer/filters/a;IF)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected u(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$f;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$f;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected v(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$c;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$c;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected w(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$d;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$d;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected x(I[F)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$e;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$e;-><init>(Lscreenstreamer/filters/a;I[F)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected y(II)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$a;

    invoke-direct {v0, p0, p1, p2}, Lscreenstreamer/filters/a$a;-><init>(Lscreenstreamer/filters/a;II)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected z(ILandroid/graphics/PointF;)V
    .locals 1

    new-instance v0, Lscreenstreamer/filters/a$g;

    invoke-direct {v0, p0, p2, p1}, Lscreenstreamer/filters/a$g;-><init>(Lscreenstreamer/filters/a;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lscreenstreamer/filters/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method
