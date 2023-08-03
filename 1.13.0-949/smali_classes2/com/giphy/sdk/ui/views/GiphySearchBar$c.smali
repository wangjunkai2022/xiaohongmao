.class public final Lcom/giphy/sdk/ui/views/GiphySearchBar$c;
.super Ljava/lang/Object;
.source "GiphySearchBar.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/giphy/sdk/ui/views/GiphySearchBar;->getTextWatcher()Lcom/giphy/sdk/ui/views/GiphySearchBar$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0016J*\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016J\u0012\u0010\r\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000cH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/giphy/sdk/ui/views/GiphySearchBar$c",
        "Landroid/text/TextWatcher;",
        "",
        "s",
        "",
        "start",
        "count",
        "after",
        "",
        "beforeTextChanged",
        "before",
        "onTextChanged",
        "Landroid/text/Editable;",
        "afterTextChanged",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/giphy/sdk/ui/views/GiphySearchBar;


# direct methods
.method constructor <init>(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .param p1    # Landroid/text/Editable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-static {v0}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->d(Lcom/giphy/sdk/ui/views/GiphySearchBar;)Lkotlinx/coroutines/j2;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/j2$a;->b(Lkotlinx/coroutines/j2;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    sget-object v2, Lkotlinx/coroutines/a2;->a:Lkotlinx/coroutines/a2;

    invoke-static {}, Lkotlinx/coroutines/i1;->e()Lkotlinx/coroutines/u2;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/giphy/sdk/ui/views/GiphySearchBar$c$a;

    invoke-direct {v5, p0, p1, v1}, Lcom/giphy/sdk/ui/views/GiphySearchBar$c$a;-><init>(Lcom/giphy/sdk/ui/views/GiphySearchBar$c;Landroid/text/Editable;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/j;->e(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/j2;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->f(Lcom/giphy/sdk/ui/views/GiphySearchBar;Lkotlinx/coroutines/j2;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GiphySearchBar$c;->a:Lcom/giphy/sdk/ui/views/GiphySearchBar;

    invoke-static {p1}, Lcom/giphy/sdk/ui/views/GiphySearchBar;->c(Lcom/giphy/sdk/ui/views/GiphySearchBar;)V

    return-void
.end method
