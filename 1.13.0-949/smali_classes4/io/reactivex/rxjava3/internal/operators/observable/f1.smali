.class public final Lio/reactivex/rxjava3/internal/operators/observable/f1;
.super Lio/reactivex/rxjava3/core/g0;
.source "ObservableFromCompletable.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/fuseable/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/observable/f1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/internal/fuseable/g;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/f1;->a:Lio/reactivex/rxjava3/core/g;

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 2
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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f1;->a:Lio/reactivex/rxjava3/core/g;

    new-instance v1, Lio/reactivex/rxjava3/internal/operators/observable/f1$a;

    invoke-direct {v1, p1}, Lio/reactivex/rxjava3/internal/operators/observable/f1$a;-><init>(Lio/reactivex/rxjava3/core/n0;)V

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method

.method public source()Lio/reactivex/rxjava3/core/g;
    .locals 1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/f1;->a:Lio/reactivex/rxjava3/core/g;

    return-object v0
.end method
