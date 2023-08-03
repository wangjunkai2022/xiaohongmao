.class public Lcom/facebook/imagepipeline/platform/e;
.super Ljava/lang/Object;
.source "PlatformDecoderFactory.java"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/facebook/imagepipeline/memory/e0;Z)Lcom/facebook/imagepipeline/platform/d;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "poolFactory",
            "gingerbreadDecoderEnabled"
        }
    .end annotation

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->e()I

    move-result p1

    .line 3
    new-instance v0, Lcom/facebook/imagepipeline/platform/c;

    .line 4
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->b()Lcom/facebook/imagepipeline/memory/e;

    move-result-object p0

    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v1, p1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/platform/c;-><init>(Lcom/facebook/imagepipeline/memory/e;ILandroidx/core/util/Pools$SynchronizedPool;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->e()I

    move-result p1

    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/platform/a;

    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/e0;->b()Lcom/facebook/imagepipeline/memory/e;

    move-result-object p0

    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v1, p1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/imagepipeline/platform/a;-><init>(Lcom/facebook/imagepipeline/memory/e;ILandroidx/core/util/Pools$SynchronizedPool;)V

    return-object v0
.end method
