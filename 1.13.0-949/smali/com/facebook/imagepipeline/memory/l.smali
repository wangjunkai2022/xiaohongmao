.class public Lcom/facebook/imagepipeline/memory/l;
.super Ljava/lang/Object;
.source "DefaultBitmapPoolParams.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final a:I

.field private static final b:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/facebook/imagepipeline/memory/l;->b:Landroid/util/SparseIntArray;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/imagepipeline/memory/f0;
    .locals 4

    new-instance v0, Lcom/facebook/imagepipeline/memory/f0;

    invoke-static {}, Lcom/facebook/imagepipeline/memory/l;->b()I

    move-result v1

    sget-object v2, Lcom/facebook/imagepipeline/memory/l;->b:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/imagepipeline/memory/f0;-><init>(IILandroid/util/SparseIntArray;)V

    return-object v0
.end method

.method private static b()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/high16 v0, 0x1000000

    if-le v1, v0, :cond_0

    .line 2
    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    return v1

    .line 3
    :cond_0
    div-int/lit8 v1, v1, 0x2

    return v1
.end method
