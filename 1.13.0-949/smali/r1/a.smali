.class public Lr1/a;
.super Lcom/facebook/imagepipeline/request/a;
.source "BlurPostProcessor.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final g:Z

.field private static final h:I = 0x3


# instance fields
.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:I

.field private f:Lcom/facebook/cache/common/c;
    .annotation runtime Lr7/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lo1/c;->b()Z

    move-result v0

    sput-boolean v0, Lr1/a;->g:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context"
        }
    .end annotation

    const/4 v0, 0x3

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lr1/a;-><init>(ILandroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "blurRadius",
            "context",
            "iterations"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/request/a;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x19

    if-gt p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/internal/j;->d(Ljava/lang/Boolean;)V

    .line 5
    invoke-static {p2}, Lcom/facebook/common/internal/j;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput p3, p0, Lr1/a;->c:I

    .line 7
    iput p1, p0, Lr1/a;->e:I

    .line 8
    iput-object p2, p0, Lr1/a;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/cache/common/c;
    .locals 5
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lr1/a;->f:Lcom/facebook/cache/common/c;

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lr1/a;->g:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    .line 3
    iget v1, p0, Lr1/a;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "IntrinsicBlur;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v4, p0, Lr1/a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lr1/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "IterativeBoxBlur;%d;%d"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    new-instance v1, Lcom/facebook/cache/common/j;

    invoke-direct {v1, v0}, Lcom/facebook/cache/common/j;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lr1/a;->f:Lcom/facebook/cache/common/c;

    .line 6
    :cond_1
    iget-object v0, p0, Lr1/a;->f:Lcom/facebook/cache/common/c;

    return-object v0
.end method

.method public e(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bitmap"
        }
    .end annotation

    iget v0, p0, Lr1/a;->c:I

    iget v1, p0, Lr1/a;->e:I

    invoke-static {p1, v0, v1}, Lo1/b;->b(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "destBitmap",
            "sourceBitmap"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lr1/a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lr1/a;->d:Landroid/content/Context;

    iget v1, p0, Lr1/a;->e:I

    invoke-static {p1, p2, v0, v1}, Lo1/c;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/facebook/imagepipeline/request/a;->f(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
