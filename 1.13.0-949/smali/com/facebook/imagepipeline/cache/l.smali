.class public Lcom/facebook/imagepipeline/cache/l;
.super Ljava/lang/Object;
.source "DefaultBitmapMemoryCacheParamsSupplier.java"

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
.field private static final b:I = 0x100

.field private static final c:I = 0x7fffffff

.field private static final d:I = 0x7fffffff

.field private static final e:I = 0x7fffffff

.field private static final f:J


# instance fields
.field private final a:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/imagepipeline/cache/l;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/l;->a:Landroid/app/ActivityManager;

    return-void
.end method

.method private b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/l;->a:Landroid/app/ActivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x400000

    return v0

    :cond_0
    const/high16 v1, 0x4000000

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x600000

    return v0

    .line 3
    :cond_1
    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public a()Lcom/facebook/imagepipeline/cache/v;
    .locals 9

    .line 1
    new-instance v8, Lcom/facebook/imagepipeline/cache/v;

    .line 2
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/l;->b()I

    move-result v1

    sget-wide v6, Lcom/facebook/imagepipeline/cache/l;->f:J

    const/16 v2, 0x100

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/imagepipeline/cache/v;-><init>(IIIIIJ)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/l;->a()Lcom/facebook/imagepipeline/cache/v;

    move-result-object v0

    return-object v0
.end method
