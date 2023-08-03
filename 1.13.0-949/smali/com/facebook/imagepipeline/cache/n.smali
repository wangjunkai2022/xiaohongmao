.class public Lcom/facebook/imagepipeline/cache/n;
.super Ljava/lang/Object;
.source "DefaultEncodedMemoryCacheParamsSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/m;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/m<",
        "Lcom/facebook/imagepipeline/cache/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x7fffffff

.field private static final b:I = 0x7fffffff

.field private static final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/cache/n;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()I
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    const/high16 v0, 0x1000000

    if-ge v1, v0, :cond_0

    const/high16 v0, 0x100000

    return v0

    :cond_0
    const/high16 v0, 0x2000000

    if-ge v1, v0, :cond_1

    const/high16 v0, 0x200000

    return v0

    :cond_1
    const/high16 v0, 0x400000

    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/cache/v;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/n;->b()I

    move-result v3

    .line 2
    div-int/lit8 v5, v3, 0x8

    .line 3
    new-instance v8, Lcom/facebook/imagepipeline/cache/v;

    sget-wide v6, Lcom/facebook/imagepipeline/cache/n;->c:J

    const v2, 0x7fffffff

    const v4, 0x7fffffff

    move-object v0, v8

    move v1, v3

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/cache/v;-><init>(IIIIIJ)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/n;->a()Lcom/facebook/imagepipeline/cache/v;

    move-result-object v0

    return-object v0
.end method
