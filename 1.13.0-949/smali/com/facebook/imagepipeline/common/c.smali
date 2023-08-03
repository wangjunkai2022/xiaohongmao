.class public Lcom/facebook/imagepipeline/common/c;
.super Ljava/lang/Object;
.source "ImageDecodeOptionsBuilder.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/facebook/imagepipeline/common/c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/graphics/Bitmap$Config;

.field private h:Landroid/graphics/Bitmap$Config;

.field private i:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private j:Lt1/a;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private k:Landroid/graphics/ColorSpace;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public A(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useLastFrameForPreview"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/facebook/imagepipeline/common/b;
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/common/b;

    invoke-direct {v0, p0}, Lcom/facebook/imagepipeline/common/b;-><init>(Lcom/facebook/imagepipeline/common/c;)V

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public d()Lt1/a;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->j:Lt1/a;

    return-object v0
.end method

.method public e()Landroid/graphics/ColorSpace;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/decoder/b;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    return v0
.end method

.method protected m()Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    return v0
.end method

.method public o(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animatedBitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/graphics/Bitmap$Config;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$Config;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public q(Lt1/a;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .param p1    # Lt1/a;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmapTransformation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/a;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->j:Lt1/a;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public r(Landroid/graphics/ColorSpace;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorSpace"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorSpace;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public s(Lcom/facebook/imagepipeline/decoder/b;)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .param p1    # Lcom/facebook/imagepipeline/decoder/b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customImageDecoder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/decoder/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public t(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodeAllFrames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public u(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decodePreviewFrame"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public v(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "excludeBitmapConfigFromComparison"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->l:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public w(Z)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceStaticImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public x(Lcom/facebook/imagepipeline/common/b;)Lcom/facebook/imagepipeline/common/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 1
    iget v0, p1, Lcom/facebook/imagepipeline/common/b;->a:I

    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 2
    iget v0, p1, Lcom/facebook/imagepipeline/common/b;->b:I

    iput v0, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 3
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->c:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->c:Z

    .line 4
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->d:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->d:Z

    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->e:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->e:Z

    .line 6
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/common/b;->f:Z

    iput-boolean v0, p0, Lcom/facebook/imagepipeline/common/c;->f:Z

    .line 7
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->g:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->g:Landroid/graphics/Bitmap$Config;

    .line 8
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->h:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->h:Landroid/graphics/Bitmap$Config;

    .line 9
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->i:Lcom/facebook/imagepipeline/decoder/b;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->i:Lcom/facebook/imagepipeline/decoder/b;

    .line 10
    iget-object v0, p1, Lcom/facebook/imagepipeline/common/b;->j:Lt1/a;

    iput-object v0, p0, Lcom/facebook/imagepipeline/common/c;->j:Lt1/a;

    .line 11
    iget-object p1, p1, Lcom/facebook/imagepipeline/common/b;->k:Landroid/graphics/ColorSpace;

    iput-object p1, p0, Lcom/facebook/imagepipeline/common/c;->k:Landroid/graphics/ColorSpace;

    .line 12
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public y(I)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxDimensionPx"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/common/c;->b:I

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method

.method public z(I)Lcom/facebook/imagepipeline/common/c;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intervalMs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/imagepipeline/common/c;->a:I

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/common/c;->m()Lcom/facebook/imagepipeline/common/c;

    move-result-object p1

    return-object p1
.end method
