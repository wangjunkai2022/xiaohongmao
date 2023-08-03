.class public final Lio/reactivex/internal/operators/completable/j0;
.super Lio/reactivex/a;
.source "CompletableResumeNext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/j0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Ln7/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lio/reactivex/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/j0;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/j0;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/j0$a;

    iget-object v1, p0, Lio/reactivex/internal/operators/completable/j0;->b:Ln7/o;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/completable/j0$a;-><init>(Lio/reactivex/d;Ln7/o;)V

    .line 2
    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/j0;->a:Lio/reactivex/g;

    invoke-interface {p1, v0}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
