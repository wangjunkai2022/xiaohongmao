.class public Lcom/facebook/imagepipeline/image/h;
.super Ljava/lang/Object;
.source "ImmutableQualityInfo.java"

# interfaces
.implements Lcom/facebook/imagepipeline/image/j;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final d:Lcom/facebook/imagepipeline/image/j;


# instance fields
.field a:I

.field b:Z

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/facebook/imagepipeline/image/h;->d(IZZ)Lcom/facebook/imagepipeline/image/j;

    move-result-object v0

    sput-object v0, Lcom/facebook/imagepipeline/image/h;->d:Lcom/facebook/imagepipeline/image/j;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quality",
            "isOfGoodEnoughQuality",
            "isOfFullQuality"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/imagepipeline/image/h;->a:I

    .line 3
    iput-boolean p2, p0, Lcom/facebook/imagepipeline/image/h;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/facebook/imagepipeline/image/h;->c:Z

    return-void
.end method

.method public static d(IZZ)Lcom/facebook/imagepipeline/image/j;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "quality",
            "isOfGoodEnoughQuality",
            "isOfFullQuality"
        }
    .end annotation

    new-instance v0, Lcom/facebook/imagepipeline/image/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/imagepipeline/image/h;-><init>(IZZ)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/h;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/imagepipeline/image/h;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/imagepipeline/image/h;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/facebook/imagepipeline/image/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/imagepipeline/image/h;

    .line 3
    iget v1, p0, Lcom/facebook/imagepipeline/image/h;->a:I

    iget v3, p1, Lcom/facebook/imagepipeline/image/h;->a:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/h;->b:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/image/h;->b:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/h;->c:Z

    iget-boolean p1, p1, Lcom/facebook/imagepipeline/image/h;->c:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/facebook/imagepipeline/image/h;->a:I

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/h;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x400000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/image/h;->c:Z

    if-eqz v1, :cond_1

    const/high16 v2, 0x800000

    :cond_1
    xor-int/2addr v0, v2

    return v0
.end method
