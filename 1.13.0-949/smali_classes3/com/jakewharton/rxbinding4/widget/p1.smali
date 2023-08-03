.class final Lcom/jakewharton/rxbinding4/widget/p1;
.super Lcom/jakewharton/rxbinding4/a;
.source "SeekBarChangeEventObservable.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding4/widget/p1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding4/a<",
        "Lcom/jakewharton/rxbinding4/widget/o1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00020\u0003H\u0014R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/p1;",
        "Lcom/jakewharton/rxbinding4/a;",
        "Lcom/jakewharton/rxbinding4/widget/o1;",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "C8",
        "Landroid/widget/SeekBar;",
        "a",
        "Landroid/widget/SeekBar;",
        "view",
        "Lcom/jakewharton/rxbinding4/widget/r1;",
        "D8",
        "()Lcom/jakewharton/rxbinding4/widget/r1;",
        "initialValue",
        "<init>",
        "(Landroid/widget/SeekBar;)V",
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
.field private final a:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/jakewharton/rxbinding4/a;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/p1;->a:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public bridge synthetic A8()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding4/widget/p1;->D8()Lcom/jakewharton/rxbinding4/widget/r1;

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
            "Lcom/jakewharton/rxbinding4/widget/o1;",
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
    new-instance v0, Lcom/jakewharton/rxbinding4/widget/p1$a;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/p1;->a:Landroid/widget/SeekBar;

    invoke-direct {v0, v1, p1}, Lcom/jakewharton/rxbinding4/widget/p1$a;-><init>(Landroid/widget/SeekBar;Lio/reactivex/rxjava3/core/n0;)V

    .line 3
    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/p1;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/n0;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method protected D8()Lcom/jakewharton/rxbinding4/widget/r1;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/jakewharton/rxbinding4/widget/r1;

    iget-object v1, p0, Lcom/jakewharton/rxbinding4/widget/p1;->a:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/jakewharton/rxbinding4/widget/r1;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method
