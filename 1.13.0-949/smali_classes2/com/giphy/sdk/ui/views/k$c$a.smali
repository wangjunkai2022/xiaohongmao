.class final Lcom/giphy/sdk/ui/views/k$c$a;
.super Ljava/lang/Object;
.source "GPHVideoPlayer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/k$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/k$c;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/k$c;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/k$c$a;->a:Lcom/giphy/sdk/ui/views/k$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k$c$a;->a:Lcom/giphy/sdk/ui/views/k$c;

    iget-object v0, v0, Lcom/giphy/sdk/ui/views/k$c;->a:Lcom/giphy/sdk/ui/views/k;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->M()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/e;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/k$c$a;->a:Lcom/giphy/sdk/ui/views/k$c;

    iget-object v0, v0, Lcom/giphy/sdk/ui/views/k$c;->a:Lcom/giphy/sdk/ui/views/k;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/k;->M()Lcom/google/android/exoplayer2/k2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/k2;->getCurrentPosition()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/k$c$a;->a:Lcom/giphy/sdk/ui/views/k$c;

    iget-object v2, v2, Lcom/giphy/sdk/ui/views/k$c;->a:Lcom/giphy/sdk/ui/views/k;

    invoke-static {v2, v0, v1}, Lcom/giphy/sdk/ui/views/k;->y(Lcom/giphy/sdk/ui/views/k;J)V

    :cond_1
    return-void
.end method
