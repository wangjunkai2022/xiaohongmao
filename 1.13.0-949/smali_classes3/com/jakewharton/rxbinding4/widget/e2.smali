.class final Lcom/jakewharton/rxbinding4/widget/e2;
.super Lio/reactivex/rxjava3/core/g0;
.source "ToolbarItemClickObservable.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/e2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/g0<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/e2;",
        "Lio/reactivex/rxjava3/core/g0;",
        "Landroid/view/MenuItem;",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "d6",
        "Landroid/widget/Toolbar;",
        "a",
        "Landroid/widget/Toolbar;",
        "view",
        "<init>",
        "(Landroid/widget/Toolbar;)V",
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
.field private final a:Landroid/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroid/widget/Toolbar;)V
    .locals 0
    .param p1    # Landroid/widget/Toolbar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/e2;->a:Landroid/widget/Toolbar;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
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
            "Landroid/view/MenuItem;",
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
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/e2$a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/e2;->a:Landroid/widget/Toolbar;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/e2$a;-><init>(Landroid/widget/Toolbar;Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 4
    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/e2;->a:Landroid/widget/Toolbar;

    invoke-virtual {p1, v0}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method
