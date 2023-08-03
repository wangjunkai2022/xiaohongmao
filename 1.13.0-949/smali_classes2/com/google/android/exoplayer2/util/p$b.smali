.class public final Lcom/google/android/exoplayer2/util/p$b;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:[F

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v12, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x8b87

    const/4 v13, 0x0

    .line 2
    invoke-static {v12, v3, v2, v13}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v14, v1, [I

    new-array v6, v1, [I

    aget v3, v2, v13

    .line 3
    new-array v15, v3, [B

    new-array v4, v1, [I

    aget v3, v2, v13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v14

    move-object v10, v15

    .line 4
    invoke-static/range {v1 .. v11}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    .line 5
    new-instance v1, Ljava/lang/String;

    invoke-static {v15}, Lcom/google/android/exoplayer2/util/p;->a([B)I

    move-result v2

    invoke-direct {v1, v15, v13, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/util/p$b;->a:Ljava/lang/String;

    .line 6
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/exoplayer2/util/p$b;->b:I

    aget v1, v14, v13

    .line 7
    iput v1, v0, Lcom/google/android/exoplayer2/util/p$b;->c:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 8
    iput-object v1, v0, Lcom/google/android/exoplayer2/util/p$b;->d:[F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1406

    if-ne v0, v3, :cond_0

    .line 2
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->b:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/p$b;->d:[F

    invoke-static {v0, v1, v3, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 3
    invoke-static {}, Lcom/google/android/exoplayer2/util/p;->c()V

    return-void

    :cond_0
    const v3, 0x8b5c    # 4.9993E-41f

    if-ne v0, v3, :cond_1

    .line 4
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->b:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/p$b;->d:[F

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 5
    invoke-static {}, Lcom/google/android/exoplayer2/util/p;->c()V

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->e:I

    if-eqz v0, :cond_4

    const v0, 0x84c0

    .line 7
    iget v1, p0, Lcom/google/android/exoplayer2/util/p$b;->f:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->c:I

    const v1, 0x8d66

    const/16 v2, 0xde1

    if-ne v0, v1, :cond_2

    const v0, 0x8d65

    .line 9
    iget v1, p0, Lcom/google/android/exoplayer2/util/p$b;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    :cond_2
    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_3

    .line 10
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->e:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 11
    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/p$b;->b:I

    iget v1, p0, Lcom/google/android/exoplayer2/util/p$b;->f:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 v0, 0x2800

    const/16 v1, 0x2601

    .line 12
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    .line 13
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2802

    const v1, 0x812f

    .line 14
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 15
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 16
    invoke-static {}, Lcom/google/android/exoplayer2/util/p;->c()V

    return-void

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Lcom/google/android/exoplayer2/util/p$b;->c:I

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unexpected uniform type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call setSamplerTexId before bind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/p$b;->d:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public c([F)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/p$b;->d:[F

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public d(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/util/p$b;->e:I

    .line 2
    iput p2, p0, Lcom/google/android/exoplayer2/util/p$b;->f:I

    return-void
.end method
