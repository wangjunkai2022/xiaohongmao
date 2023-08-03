.class final Lcom/jakewharton/rxbinding4/widget/m1;
.super Lcom/jakewharton/rxbinding4/a;
.source "SearchViewQueryTextChangesObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/m1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/a<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001c\u0010\u000e\u001a\n \u000b*\u0004\u0018\u00010\u00020\u00028TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/m1;",
        "Lcom/jakewharton/rxbinding4/a;",
        "",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "C8",
        "Landroid/widget/SearchView;",
        "a",
        "Landroid/widget/SearchView;",
        "view",
        "kotlin.jvm.PlatformType",
        "D8",
        "()Ljava/lang/CharSequence;",
        "initialValue",
        "<init>",
        "(Landroid/widget/SearchView;)V",
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
.field private final a:Landroid/widget/SearchView;


# direct methods
.method public constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1    # Landroid/widget/SearchView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/m1;->a:Landroid/widget/SearchView;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/m1;->D8()Ljava/lang/CharSequence;

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
            "Ljava/lang/CharSequence;",
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
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/m1$a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/m1;->a:Landroid/widget/SearchView;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/m1$a;-><init>(Landroid/widget/SearchView;Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/m1;->a:Landroid/widget/SearchView;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method protected D8()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/m1;->a:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
