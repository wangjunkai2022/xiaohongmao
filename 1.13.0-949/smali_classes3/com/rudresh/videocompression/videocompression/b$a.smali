.class Lcom/rudresh/videocompression/videocompression/b$a;
.super Ljava/lang/Object;
.source "FilterShaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rudresh/videocompression/videocompression/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(FFZ)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p2, p1

    const/4 p1, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    float-to-double v2, p2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v6, v6, v0

    float-to-double v0, p1

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v2, v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    .line 4
    rem-int/lit8 p3, p1, 0x2

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lcom/rudresh/videocompression/videocompression/b;->a(IF)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/rudresh/videocompression/videocompression/b$a;->h:Ljava/lang/String;

    .line 6
    invoke-static {p1, p2}, Lcom/rudresh/videocompression/videocompression/b;->b(IF)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/b$a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->g:Ljava/lang/String;

    const v1, 0x8b31

    invoke-static {v1, v0}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/rudresh/videocompression/videocompression/b$a;->h:Ljava/lang/String;

    const v2, 0x8b30

    invoke-static {v2, v1}, Lcom/rudresh/videocompression/videocompression/b;->q(ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    .line 4
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 5
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 6
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const-string v1, "position"

    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 7
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const/4 v3, 0x1

    const-string v4, "inputTexCoord"

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 8
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    new-array v0, v3, [I

    .line 9
    iget v5, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const v6, 0x8b82

    invoke-static {v5, v6, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 10
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 11
    iput v2, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    goto :goto_0

    .line 12
    :cond_1
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->b:I

    .line 13
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->c:I

    .line 14
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const-string v1, "sourceImage"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->d:I

    .line 15
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const-string v1, "texelWidthOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->e:I

    .line 16
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    const-string v1, "texelHeightOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->f:I

    :goto_0
    return v3

    :cond_2
    :goto_1
    return v2
.end method

.method public b()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/rudresh/videocompression/videocompression/b$a;->a:I

    :cond_0
    return-void
.end method
