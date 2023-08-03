.class final synthetic Lcom/giphy/sdk/ui/utils/i;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "VideoCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/utils/j;)V
    .locals 6

    const-class v2, Lcom/giphy/sdk/ui/utils/j;

    const-string v3, "cache"

    const-string v4, "getCache()Lcom/google/android/exoplayer2/upstream/cache/Cache;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/giphy/sdk/ui/utils/j;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/utils/j;->b()Lcom/google/android/exoplayer2/upstream/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/giphy/sdk/ui/utils/j;

    check-cast p1, Lcom/google/android/exoplayer2/upstream/cache/Cache;

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/utils/j;->i(Lcom/google/android/exoplayer2/upstream/cache/Cache;)V

    return-void
.end method
