.class final synthetic Lcom/giphy/sdk/ui/views/n;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "GPHVideoPlayerView.kt"


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
.method constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)V
    .locals 6

    const-class v2, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    const-string v3, "player"

    const-string v4, "getPlayer()Lcom/giphy/sdk/ui/views/GPHVideoPlayer;"

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

    check-cast v0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->c(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;)Lcom/giphy/sdk/ui/views/k;

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

    check-cast v0, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    check-cast p1, Lcom/giphy/sdk/ui/views/k;

    invoke-static {v0, p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->j(Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;Lcom/giphy/sdk/ui/views/k;)V

    return-void
.end method
