.class final Lcom/jakewharton/rxbinding4/widget/v1;
.super Lcom/jakewharton/rxbinding4/a;
.source "TextViewAfterTextChangeEventObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/v1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/a<",
        "Lcom/jakewharton/rxbinding4/widget/u1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\r\u001a\u00020\u00028TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/v1;",
        "Lcom/jakewharton/rxbinding4/a;",
        "Lcom/jakewharton/rxbinding4/widget/u1;",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "C8",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "view",
        "D8",
        "()Lcom/jakewharton/rxbinding4/widget/u1;",
        "initialValue",
        "<init>",
        "(Landroid/widget/TextView;)V",
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
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/v1;->a:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/v1;->D8()Lcom/jakewharton/rxbinding4/widget/u1;

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
            "Lcom/jakewharton/rxbinding4/widget/u1;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/v1$a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/v1;->a:Landroid/widget/TextView;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/v1$a;-><init>(Landroid/widget/TextView;Lio/reactivex/rxjava3/core/n0;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 3
    iget-object p1, p0, Lcom/jakewharton/rxbinding4/widget/v1;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method protected D8()Lcom/jakewharton/rxbinding4/widget/u1;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/u1;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/v1;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jakewharton/rxbinding4/widget/u1;-><init>(Landroid/widget/TextView;Landroid/text/Editable;)V

    return-object v0
.end method
