.class public final Lio/reactivex/internal/operators/completable/e;
.super Lio/reactivex/a;
.source "CompletableConcatArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/e$a;
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/g;


# direct methods
.method public constructor <init>([Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/e;->a:[Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method public I0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/e$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/e;->a:[Lio/reactivex/g;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/e$a;-><init>(Lio/reactivex/d;[Lio/reactivex/g;)V

    .line 2
    iget-object v1, v0, Lio/reactivex/internal/operators/completable/e$a;->d:Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-interface {p1, v1}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/e$a;->a()V

    return-void
.end method
