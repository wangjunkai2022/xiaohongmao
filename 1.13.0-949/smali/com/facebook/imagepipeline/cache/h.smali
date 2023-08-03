.class public Lcom/facebook/imagepipeline/cache/h;
.super Ljava/lang/Object;
.source "CountingLruBitmapMemoryCacheFactory.java"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/common/internal/m;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/u$a;ZZLcom/facebook/imagepipeline/cache/j$b;)Lcom/facebook/imagepipeline/cache/j;
    .locals 8
    .param p6    # Lcom/facebook/imagepipeline/cache/j$b;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapMemoryCacheParamsSupplier",
            "memoryTrimmableRegistry",
            "trimStrategy",
            "storeEntrySize",
            "ignoreSizeMismatch",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/m<",
            "Lcom/facebook/imagepipeline/cache/v;",
            ">;",
            "Lcom/facebook/common/memory/c;",
            "Lcom/facebook/imagepipeline/cache/u$a;",
            "ZZ",
            "Lcom/facebook/imagepipeline/cache/j$b<",
            "Lcom/facebook/cache/common/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/cache/j<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v1, Lcom/facebook/imagepipeline/cache/h$a;

    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/cache/h$a;-><init>(Lcom/facebook/imagepipeline/cache/h;)V

    .line 2
    new-instance v7, Lcom/facebook/imagepipeline/cache/t;

    move-object v0, v7

    move-object v2, p3

    move-object v3, p1

    move-object v4, p6

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/cache/t;-><init>(Lcom/facebook/imagepipeline/cache/a0;Lcom/facebook/imagepipeline/cache/u$a;Lcom/facebook/common/internal/m;Lcom/facebook/imagepipeline/cache/j$b;ZZ)V

    .line 3
    invoke-interface {p2, v7}, Lcom/facebook/common/memory/c;->a(Lcom/facebook/common/memory/b;)V

    return-object v7
.end method
