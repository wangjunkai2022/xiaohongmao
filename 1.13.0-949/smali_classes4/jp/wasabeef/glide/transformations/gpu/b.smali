.class public Ljp/wasabeef/glide/transformations/gpu/b;
.super Ljp/wasabeef/glide/transformations/gpu/c;
.source "ContrastFilterTransformation.java"


# static fields
.field private static final h:I = 0x1

.field private static final i:Ljava/lang/String; = "jp.wasabeef.glide.transformations.gpu.ContrastFilterTransformation.1"


# instance fields
.field private final g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0}, Ljp/wasabeef/glide/transformations/gpu/b;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contrast"
        }
    .end annotation

    .line 2
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;-><init>()V

    invoke-direct {p0, v0}, Ljp/wasabeef/glide/transformations/gpu/c;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 3
    iput p1, p0, Ljp/wasabeef/glide/transformations/gpu/b;->g:F

    .line 4
    invoke-virtual {p0}, Ljp/wasabeef/glide/transformations/gpu/c;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;

    .line 5
    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;->setContrast(F)V

    return-void
.end method


# virtual methods
.method public b(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageDigest"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jp.wasabeef.glide.transformations.gpu.ContrastFilterTransformation.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/b;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    instance-of p1, p1, Ljp/wasabeef/glide/transformations/gpu/b;

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Ljp/wasabeef/glide/transformations/gpu/b;->g:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const v1, -0x1246db81

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContrastFilterTransformation(contrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ljp/wasabeef/glide/transformations/gpu/b;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
