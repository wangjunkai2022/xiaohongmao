.class public final Lio/reactivex/internal/operators/observable/k2;
.super Lio/reactivex/z;
.source "ObservableRangeLong.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/k2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/k2;->a:J

    .line 3
    iput-wide p3, p0, Lio/reactivex/internal/operators/observable/k2;->b:J

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Lio/reactivex/internal/operators/observable/k2$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/k2;->a:J

    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/k2;->b:J

    add-long v4, v2, v0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/observable/k2$a;-><init>(Lio/reactivex/g0;JJ)V

    .line 2
    invoke-interface {p1, v6}, Lio/reactivex/g0;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 3
    invoke-virtual {v6}, Lio/reactivex/internal/operators/observable/k2$a;->run()V

    return-void
.end method
