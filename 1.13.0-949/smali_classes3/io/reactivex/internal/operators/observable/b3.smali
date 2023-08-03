.class public final Lio/reactivex/internal/operators/observable/b3;
.super Lio/reactivex/i0;
.source "ObservableSequenceEqualSingle.java"

# interfaces
.implements Lo7/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/b3$b;,
        Lio/reactivex/internal/operators/observable/b3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lo7/d<",
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
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/b3;->a:Lio/reactivex/e0;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/b3;->b:Lio/reactivex/e0;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/b3;->c:Ln7/d;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/b3;->d:I

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/observable/a3;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/b3;->a:Lio/reactivex/e0;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/b3;->b:Lio/reactivex/e0;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b3;->c:Ln7/d;

    iget v4, p0, Lio/reactivex/internal/operators/observable/b3;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/observable/a3;-><init>(Lio/reactivex/e0;Lio/reactivex/e0;Ln7/d;I)V

    invoke-static {v0}, Lio/reactivex/plugins/a;->R(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public b1(Lio/reactivex/l0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/b3$a;

    iget v2, p0, Lio/reactivex/internal/operators/observable/b3;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/b3;->a:Lio/reactivex/e0;

    iget-object v4, p0, Lio/reactivex/internal/operators/observable/b3;->b:Lio/reactivex/e0;

    iget-object v5, p0, Lio/reactivex/internal/operators/observable/b3;->c:Ln7/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/b3$a;-><init>(Lio/reactivex/l0;ILio/reactivex/e0;Lio/reactivex/e0;Ln7/d;)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/b3$a;->d()V

    return-void
.end method
