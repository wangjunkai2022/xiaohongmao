.class public final Lio/reactivex/internal/operators/observable/a3;
.super Lio/reactivex/z;
.source "ObservableSequenceEqual.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/a3$b;,
        Lio/reactivex/internal/operators/observable/a3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/e0;Lio/reactivex/e0;Ln7/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Lio/reactivex/e0<",
            "+TT;>;",
            "Ln7/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/a3;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/a3;->b:Lio/reactivex/e0;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/a3;->c:Ln7/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/a3;->d:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/a3$a;

    iget v2, p0, Lio/reactivex/internal/operators/observable/a3;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/a3;->a:Lio/reactivex/e0;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/a3;->b:Lio/reactivex/e0;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/a3;->c:Ln7/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/a3$a;-><init>(Lio/reactivex/g0;ILio/reactivex/e0;Lio/reactivex/e0;Ln7/d;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/a3$a;->d()V

    return-void
.end method
