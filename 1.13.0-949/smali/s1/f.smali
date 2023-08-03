.class public Ls1/f;
.super Ljava/lang/Object;
.source "MultiImageTranscoderFactory.java"

# interfaces
.implements Ls1/d;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Ls1/d;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final d:Ljava/lang/Integer;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(IZLs1/d;Ljava/lang/Integer;Z)V
    .locals 0
    .param p3    # Ls1/d;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "maxBitmapSize",
            "useDownSamplingRatio",
            "primaryImageTranscoderFactory",
            "imageTranscoderType",
            "ensureTranscoderLibraryLoaded"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ls1/f;->a:I

    .line 3
    iput-boolean p2, p0, Ls1/f;->b:Z

    .line 4
    iput-object p3, p0, Ls1/f;->c:Ls1/d;

    .line 5
    iput-object p4, p0, Ls1/f;->d:Ljava/lang/Integer;

    .line 6
    iput-boolean p5, p0, Ls1/f;->e:Z

    return-void
.end method

.method private a(Lcom/facebook/imageformat/c;Z)Ls1/c;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/f;->c:Ls1/d;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1, p2}, Ls1/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/facebook/imageformat/c;Z)Ls1/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/f;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Ls1/f;->d(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ImageTranscoderType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_2
    invoke-direct {p0, p1, p2}, Ls1/f;->c(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/facebook/imageformat/c;Z)Ls1/c;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget v0, p0, Ls1/f;->a:I

    iget-boolean v1, p0, Ls1/f;->b:Z

    iget-boolean v2, p0, Ls1/f;->e:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/nativecode/d;->a(IZZ)Ls1/d;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1, p2}, Ls1/d;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object p1

    return-object p1
.end method

.method private d(Lcom/facebook/imageformat/c;Z)Ls1/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/h;

    iget v1, p0, Ls1/f;->a:I

    invoke-direct {v0, v1}, Ls1/h;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1, p2}, Ls1/h;->createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createImageTranscoder(Lcom/facebook/imageformat/c;Z)Ls1/c;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imageFormat",
            "isResizingEnabled"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/f;->a(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Ls1/f;->b(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/facebook/imagepipeline/core/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, p2}, Ls1/f;->c(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 5
    invoke-direct {p0, p1, p2}, Ls1/f;->d(Lcom/facebook/imageformat/c;Z)Ls1/c;

    move-result-object v0

    :cond_2
    return-object v0
.end method
