.class public final Lio/reactivex/internal/operators/mixed/l;
.super Lio/reactivex/a;
.source "ObservableConcatMapCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/a;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/internal/util/ErrorMode;

.field final d:I


# direct methods
.method public constructor <init>(Lio/reactivex/z;Ln7/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/g;",
            ">;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/l;->a:Lio/reactivex/z;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/l;->b:Ln7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/l;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/l;->d:I

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/l;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/l;->b:Ln7/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/r;->a(Ljava/lang/Object;Ln7/o;Lio/reactivex/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/l;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/mixed/l$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/l;->b:Ln7/o;

    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/l;->c:Lio/reactivex/internal/util/ErrorMode;

    iget v4, p0, Lio/reactivex/internal/operators/mixed/l;->d:I

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/l$a;-><init>(Lio/reactivex/d;Ln7/o;Lio/reactivex/internal/util/ErrorMode;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    :cond_0
    return-void
.end method
