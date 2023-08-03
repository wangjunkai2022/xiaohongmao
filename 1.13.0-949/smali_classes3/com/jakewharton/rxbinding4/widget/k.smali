.class final Lcom/jakewharton/rxbinding4/widget/k;
.super Lcom/jakewharton/rxbinding4/a;
.source "AdapterViewItemSelectionObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0013\u0012\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014R\u0018\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/k;",
        "Lcom/jakewharton/rxbinding4/a;",
        "",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "C8",
        "Landroid/widget/AdapterView;",
        "a",
        "Landroid/widget/AdapterView;",
        "view",
        "D8",
        "()Ljava/lang/Integer;",
        "initialValue",
        "<init>",
        "(Landroid/widget/AdapterView;)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/k;->a:Landroid/widget/AdapterView;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/k;->D8()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected C8(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
    .param p1    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lq4/b;->a(Lio/reactivex/rxjava3/core/n0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/k$a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/k;->a:Landroid/widget/AdapterView;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/k$a;-><init>(Landroid/widget/AdapterView;Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/k;->a:Landroid/widget/AdapterView;

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method protected D8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/k;->a:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
