.class final Lcom/giphy/sdk/ui/views/GPHVideoControls$c;
.super Lkotlin/jvm/internal/Lambda;
.source "GPHVideoControls.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GPHVideoControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/giphy/sdk/ui/views/m;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/m;",
        "playerState",
        "",
        "a",
        "(Lcom/giphy/sdk/ui/views/m;)V"
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

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/giphy/sdk/ui/views/m;)V
    .locals 5
    .param p1    # Lcom/giphy/sdk/ui/views/m;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "playerState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->i(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lh2/r;

    move-result-object v0

    iget-object v0, v0, Lh2/r;->d:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const-string v1, "viewBinding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget-object v0, Lcom/giphy/sdk/ui/views/m$g;->a:Lcom/giphy/sdk/ui/views/m$g;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->t(Lcom/giphy/sdk/ui/views/GPHVideoControls;Z)V

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->i(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lh2/r;

    move-result-object p1

    iget-object p1, p1, Lh2/r;->d:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->c(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1, v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->q(Lcom/giphy/sdk/ui/views/GPHVideoControls;Z)V

    .line 7
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    const-wide/16 v0, 0xbb8

    invoke-static {p1, v0, v1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->j(Lcom/giphy/sdk/ui/views/GPHVideoControls;J)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->z(Lcom/giphy/sdk/ui/views/GPHVideoControls;JILjava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Lcom/giphy/sdk/ui/views/m$j;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lcom/giphy/sdk/ui/views/m$j;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/m$j;->d()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 11
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->i(Lcom/giphy/sdk/ui/views/GPHVideoControls;)Lh2/r;

    move-result-object v0

    iget-object v0, v0, Lh2/r;->d:Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/m$j;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;->setDuration(J)V

    goto :goto_0

    .line 12
    :cond_2
    instance-of p1, p1, Lcom/giphy/sdk/ui/views/m$f;

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a:Lcom/giphy/sdk/ui/views/GPHVideoControls;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls;->w(Lcom/giphy/sdk/ui/views/GPHVideoControls;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/giphy/sdk/ui/views/m;

    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/GPHVideoControls$c;->a(Lcom/giphy/sdk/ui/views/m;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
