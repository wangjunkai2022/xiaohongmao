.class public Lcom/facebook/imagepipeline/memory/n;
.super Ljava/lang/Object;
.source "DefaultFlexByteArrayPoolParams.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final a:I = 0x400000

.field private static final b:I = 0x20000

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/facebook/imagepipeline/memory/n;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(III)Landroid/util/SparseIntArray;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "min",
            "max",
            "numThreads"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    :goto_0
    if-gt p0, p1, :cond_0

    .line 2
    invoke-virtual {v0, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b()Lcom/facebook/imagepipeline/memory/f0;
    .locals 8

    .line 1
    new-instance v7, Lcom/facebook/imagepipeline/memory/f0;

    sget v6, Lcom/facebook/imagepipeline/memory/n;->c:I

    const/high16 v0, 0x400000

    mul-int v2, v6, v0

    const/high16 v1, 0x20000

    .line 2
    invoke-static {v1, v0, v6}, Lcom/facebook/imagepipeline/memory/n;->a(III)Landroid/util/SparseIntArray;

    move-result-object v3

    const/high16 v1, 0x400000

    const/high16 v4, 0x20000

    const/high16 v5, 0x400000

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/memory/f0;-><init>(IILandroid/util/SparseIntArray;III)V

    return-object v7
.end method
