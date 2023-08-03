.class final Lcom/jakewharton/rxbinding4/view/c$a;
.super Lio/reactivex/rxjava3/android/b;
.source "MenuItemActionViewEventObservable.kt"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/view/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B3\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u0010\u0012\u000e\u0010\u0016\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00030\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\n\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0014R\u0014\u0010\u000f\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR \u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0011R\u001c\u0010\u0016\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00030\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/view/c$a;",
        "Lio/reactivex/rxjava3/android/b;",
        "Landroid/view/MenuItem$OnActionExpandListener;",
        "Lcom/jakewharton/rxbinding4/view/b;",
        "event",
        "",
        "c",
        "Landroid/view/MenuItem;",
        "item",
        "onMenuItemActionExpand",
        "onMenuItemActionCollapse",
        "",
        "a",
        "b",
        "Landroid/view/MenuItem;",
        "menuItem",
        "Lkotlin/Function1;",
        "Lkotlin/jvm/functions/Function1;",
        "handled",
        "Lio/reactivex/rxjava3/core/n0;",
        "d",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "<init>",
        "(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V",
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
.field private final b:Landroid/view/MenuItem;

.field private final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/jakewharton/rxbinding4/view/b;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/MenuItem;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MenuItem;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/b;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/view/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/b;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/view/c$a;->b:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/view/c$a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/jakewharton/rxbinding4/view/c$a;->d:Lio/reactivex/rxjava3/core/n0;

    return-void
.end method

.method private final c(Lcom/jakewharton/rxbinding4/view/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/c$a;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/c$a;->d:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/c$a;->d:Lio/reactivex/rxjava3/core/n0;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/n0;->onError(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->dispose()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/view/c$a;->b:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lcom/jakewharton/rxbinding4/view/a;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding4/view/a;-><init>(Landroid/view/MenuItem;)V

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/view/c$a;->c(Lcom/jakewharton/rxbinding4/view/b;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lm8/g;
        .end annotation
    .end param

    new-instance v0, Lcom/jakewharton/rxbinding4/view/d;

    invoke-direct {v0, p1}, Lcom/jakewharton/rxbinding4/view/d;-><init>(Landroid/view/MenuItem;)V

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding4/view/c$a;->c(Lcom/jakewharton/rxbinding4/view/b;)Z

    move-result p1

    return p1
.end method
