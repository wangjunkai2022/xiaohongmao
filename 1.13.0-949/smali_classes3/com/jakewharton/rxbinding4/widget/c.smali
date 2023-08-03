.class final Lcom/jakewharton/rxbinding4/widget/c;
.super Lcom/jakewharton/rxbinding4/a;
.source "AdapterDataChangeObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Lcom/jakewharton/rxbinding4/a<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0007\u001a\u00020\u00062\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0004H\u0014R\u0014\u0010\n\u001a\u00028\u00008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00028\u00008TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/c;",
        "Landroid/widget/Adapter;",
        "T",
        "Lcom/jakewharton/rxbinding4/a;",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "C8",
        "a",
        "Landroid/widget/Adapter;",
        "adapter",
        "D8",
        "()Landroid/widget/Adapter;",
        "initialValue",
        "<init>",
        "(Landroid/widget/Adapter;)V",
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
.field private final a:Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;)V
    .locals 0
    .param p1    # Landroid/widget/Adapter;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/c;->a:Landroid/widget/Adapter;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/c;->D8()Landroid/widget/Adapter;

    move-result-object v0

    return-object v0
.end method

.method protected C8(Lio/reactivex/rxjava3/core/n0;)V
    .locals 3
    .param p1    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lq4/b;->a(Lio/reactivex/rxjava3/core/n0;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/c$a;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/c;->D8()Landroid/widget/Adapter;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/c$a;-><init>(Landroid/widget/Adapter;Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/c;->D8()Landroid/widget/Adapter;

    move-result-object v1

    iget-object v2, v0, Lcom/jakewharton/rxbinding4/widget/c$a;->b:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method protected D8()Landroid/widget/Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/c;->a:Landroid/widget/Adapter;

    return-object v0
.end method
