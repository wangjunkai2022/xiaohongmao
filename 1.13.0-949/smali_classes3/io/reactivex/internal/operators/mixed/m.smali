.class public final Lio/reactivex/internal/operators/mixed/m;
.super Lio/reactivex/z;
.source "ObservableConcatMapMaybe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TR;>;"
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
            "Lio/reactivex/w<",
            "+TR;>;>;"
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
            "Lio/reactivex/w<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/m;->a:Lio/reactivex/z;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/m;->b:Ln7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/m;->c:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/m;->d:I

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/m;->a:Lio/reactivex/z;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/m;->b:Ln7/o;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/r;->b(Ljava/lang/Object;Ln7/o;Lio/reactivex/g0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/m;->a:Lio/reactivex/z;

    new-instance v1, Lio/reactivex/internal/operators/mixed/m$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/m;->b:Ln7/o;

    iget v3, p0, Lio/reactivex/internal/operators/mixed/m;->d:I

    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/m;->c:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/m$a;-><init>(Lio/reactivex/g0;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    :cond_0
    return-void
.end method
