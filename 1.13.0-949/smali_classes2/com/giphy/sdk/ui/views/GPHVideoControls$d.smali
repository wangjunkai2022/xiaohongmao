.class final Lcom/giphy/sdk/ui/views/GPHVideoControls$d;
.super Ljava/lang/Object;
.source "GPHVideoControls.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHVideoControls;->I()V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GPHVideoControls;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->g(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/ui/views/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/k;->K()Lcom/giphy/sdk/core/models/Media;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->e(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/core/models/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->h(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;->m()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->t(Lcom/giphy/sdk/ui/views/GPHVideoControls;Z)V

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->g(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/ui/views/k;

    move-result-object v0

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->e(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/core/models/Media;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->h(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/ui/views/GPHVideoPlayerView;

    move-result-object v3

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->g(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lcom/giphy/sdk/ui/views/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/k;->O()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/giphy/sdk/ui/views/k;->V(Lcom/giphy/sdk/ui/views/k;Lcom/giphy/sdk/core/models/Media;ZLcom/giphy/sdk/ui/views/GPHVideoPlayerView;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->f(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->m(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V

    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 8
    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v2}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->d(Lcom/giphy/sdk/ui/views/GPHVideoControls;)F

    move-result v2

    int-to-float v3, p1

    const/4 v4, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    iget-object v2, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v2}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->d(Lcom/giphy/sdk/ui/views/GPHVideoControls;)F

    move-result v2

    iget-object v5, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, p1

    int-to-float p1, v5

    cmpl-float p1, v2, p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->b(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lkotlinx/coroutines/j2;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1, v4, v0, v4}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v4}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->o(Lcom/giphy/sdk/ui/views/GPHVideoControls;Lkotlinx/coroutines/j2;)V

    .line 11
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->p(Lcom/giphy/sdk/ui/views/GPHVideoControls;Z)V

    .line 12
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->l(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V

    goto :goto_3

    .line 13
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->k(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->d(Lcom/giphy/sdk/ui/views/GPHVideoControls;)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->n(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->a(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V

    .line 17
    :goto_1
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->b(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lkotlinx/coroutines/j2;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1, v4, v0, v4}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v4}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->o(Lcom/giphy/sdk/ui/views/GPHVideoControls;Lkotlinx/coroutines/j2;)V

    goto :goto_2

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    sget-object v5, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lcom/giphy/sdk/ui/views/GPHVideoControls$d$a;

    invoke-direct {v8, p0, v4}, Lcom/giphy/sdk/ui/views/GPHVideoControls$d$a;-><init>(Lcom/giphy/sdk/ui/views/GPHVideoControls$d;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->o(Lcom/giphy/sdk/ui/views/GPHVideoControls;Lkotlinx/coroutines/j2;)V

    .line 20
    :goto_2
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$d;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->k(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->p(Lcom/giphy/sdk/ui/views/GPHVideoControls;Z)V

    :goto_3
    return-void
.end method
