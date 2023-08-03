.class final Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;
.super Lio/reactivex/rxjava3/observables/b;
.source "ObservableGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/observables/b<",
        "TK;TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b<",
            "TT;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b<",
            "TT;TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/observables/b;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    return-void
.end method

.method public static B8(Ljava/lang/Object;ILio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;Z)Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "bufferSize",
            "parent",
            "delayError"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(TK;I",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver<",
            "*TK;TT;>;Z)",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a<",
            "TK;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-direct {v0, p1, p2, p0, p3}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;-><init>(ILio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$GroupByObserver;Ljava/lang/Object;Z)V

    .line 2
    new-instance p1, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;

    invoke-direct {p1, p0, v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;-><init>(Ljava/lang/Object;Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;)V

    return-object p1
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;->a(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;->e()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;->h(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$a;->b:Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObservableGroupBy$b;->i(Ljava/lang/Object;)V

    return-void
.end method
