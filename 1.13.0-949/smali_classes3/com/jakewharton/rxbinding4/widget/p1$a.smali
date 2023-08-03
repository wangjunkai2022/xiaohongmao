.class final Lcom/jakewharton/rxbinding4/widget/p1$a;
.super Lio/reactivex/rxjava3/android/b;
.source "SeekBarChangeEventObservable.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/widget/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u000e\u0010\u0015\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00120\u0011\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J \u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\tH\u0014R\u0014\u0010\u0010\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\n\u0012\u0006\u0008\u0000\u0012\u00020\u00120\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/widget/p1$a;",
        "Lio/reactivex/rxjava3/android/b;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "Landroid/widget/SeekBar;",
        "seekBar",
        "",
        "progress",
        "",
        "fromUser",
        "",
        "onProgressChanged",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "a",
        "b",
        "Landroid/widget/SeekBar;",
        "view",
        "Lio/reactivex/rxjava3/core/n0;",
        "Lcom/jakewharton/rxbinding4/widget/o1;",
        "c",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "<init>",
        "(Landroid/widget/SeekBar;Lio/reactivex/rxjava3/core/n0;)V",
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
.field private final b:Landroid/widget/SeekBar;

.field private final c:Lio/reactivex/rxjava3/core/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/widget/o1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Lio/reactivex/rxjava3/core/n0;)V
    .locals 0
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/SeekBar;",
            "Lio/reactivex/rxjava3/core/n0<",
            "-",
            "Lcom/jakewharton/rxbinding4/widget/o1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/android/b;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->b:Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->c:Lio/reactivex/rxjava3/core/n0;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->b:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->c:Lio/reactivex/rxjava3/core/n0;

    new-instance v1, Lcom/jakewharton/rxbinding4/widget/r1;

    invoke-direct {v1, p1, p2, p3}, Lcom/jakewharton/rxbinding4/widget/r1;-><init>(Landroid/widget/SeekBar;IZ)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->c:Lio/reactivex/rxjava3/core/n0;

    new-instance v1, Lcom/jakewharton/rxbinding4/widget/s1;

    invoke-direct {v1, p1}, Lcom/jakewharton/rxbinding4/widget/s1;-><init>(Landroid/widget/SeekBar;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/reactivex/rxjava3/android/b;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/p1$a;->c:Lio/reactivex/rxjava3/core/n0;

    new-instance v1, Lcom/jakewharton/rxbinding4/widget/t1;

    invoke-direct {v1, p1}, Lcom/jakewharton/rxbinding4/widget/t1;-><init>(Landroid/widget/SeekBar;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/n0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
