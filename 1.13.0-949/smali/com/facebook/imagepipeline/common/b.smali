.class public Lcom/facebook/imagepipeline/common/b;
.super Ljava/lang/Object;
.source "ImageDecodeOptions.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ls7/b;
.end annotation


# static fields
.field private static final m:Lcom/facebook/imagepipeline/common/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Landroid/graphics/Bitmap$Config;

.field public final h:Landroid/graphics/Bitmap$Config;

.field public final i:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public final j:Lt1/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field public final k:Landroid/graphics/ColorSpace;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/facebook/imagepipeline/common/b;->b()Lcom/facebook/imagepipeline/common/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/common/c;->a()Lcom/facebook/imagepipeline/common/b;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/common/b;->m:Lcom/facebook/imagepipeline/common/b;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->l()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    .line 3
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->k()I

    move-result v0

    iput v0, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    .line 4
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->n()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    .line 6
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    .line 7
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    .line 8
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->b()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->f()Lcom/facebook/imagepipeline/decoder/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->d()Lt1/a;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    .line 12
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->e()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    .line 13
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/common/c;->i()Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/b;->l:Z

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    sget-object v0, Lcom/facebook/imagepipeline/common/b;->m:Lcom/facebook/imagepipeline/common/b;

    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/common/c;
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/common/c;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/common/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected c()Lcom/facebook/common/internal/i$b;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/i;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    const-string v2, "minDecodeIntervalMs"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget v1, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    const-string v2, "maxDimensionPx"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    const-string v2, "decodePreviewFrame"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    const-string v2, "useLastFrameForPreview"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    const-string v2, "decodeAllFrames"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    const-string v2, "forceStaticImage"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bitmapConfigName"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "animatedBitmapConfigName"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    const-string v2, "customImageDecoder"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    const-string v2, "bitmapTransformation"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    const-string v2, "colorSpace"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/i$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/i$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/common/b;

    .line 3
    iget v2, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/b;->a:I

    if-eq v2, v3, :cond_2

    return v1

    .line 4
    :cond_2
    iget v2, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    iget v3, p1, Lcom/facebook/imagepipeline/common/b;->b:I

    if-eq v2, v3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    if-eq v2, v3, :cond_4

    return v1

    .line 6
    :cond_4
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 8
    :cond_6
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 9
    :cond_7
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/common/b;->l:Z

    if-nez v2, :cond_8

    iget-object v3, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iget-object v4, p1, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    if-nez v2, :cond_9

    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    if-eq v2, v3, :cond_9

    return v1

    .line 11
    :cond_9
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    iget-object v3, p1, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    if-eq v2, v3, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    if-eq v2, p1, :cond_c

    return v1

    :cond_c
    return v0

    :cond_d
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/common/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/facebook/imagepipeline/common/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->c:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->f:Z

    add-int/2addr v0, v1

    .line 7
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->l:Z

    if-nez v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/common/b;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageDecodeOptions{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/b;->c()Lcom/facebook/common/internal/i$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/common/internal/i$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
