.class final Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;
.super Lkotlin/jvm/internal/Lambda;
.source "GiphyDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->m2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Lcom/giphy/sdk/ui/h;",
        ">;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "",
        "Lcom/giphy/sdk/ui/h;",
        "result",
        "",
        "<anonymous parameter 1>",
        "",
        "a",
        "(Ljava/util/List;Ljava/lang/Throwable;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->b:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/giphy/sdk/ui/h;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p2, "result"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->b:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->V(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p2, v0}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->M0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;Z)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->v0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->d1(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a:Lcom/giphy/sdk/ui/views/GiphyDialogFragment;

    invoke-static {p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment;->p0(Lcom/giphy/sdk/ui/views/GiphyDialogFragment;)Lcom/giphy/sdk/ui/views/h;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/giphy/sdk/ui/views/h;->a(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {p0, p1, p2}, Lcom/giphy/sdk/ui/views/GiphyDialogFragment$k0;->a(Ljava/util/List;Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
