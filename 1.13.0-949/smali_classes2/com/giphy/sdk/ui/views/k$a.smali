.class final Lcom/giphy/sdk/ui/views/k$a;
.super Lkotlin/jvm/internal/Lambda;
.source "GPHVideoPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/k;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "setVolumeValue",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/k;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/k;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k$a;->a:Lcom/giphy/sdk/ui/views/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/k$a;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k$a;->a:Lcom/giphy/sdk/ui/views/k;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->H()Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/k$a;->a:Lcom/giphy/sdk/ui/views/k;

    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v2, v1}, Lcom/giphy/sdk/ui/views/k;->x(Lcom/giphy/sdk/ui/views/k;Z)V

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/k$a;->a:Lcom/giphy/sdk/ui/views/k;

    invoke-virtual {v1, v0}, Lcom/giphy/sdk/ui/views/k;->p0(F)V

    return-void
.end method
