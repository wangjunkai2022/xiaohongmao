.class final Lio/reactivex/rxjava3/internal/operators/observable/r1$n;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lq7/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/s<",
        "Lio/reactivex/rxjava3/observables/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/util/concurrent/TimeUnit;

.field final d:Lio/reactivex/rxjava3/core/o0;

.field final e:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/g0;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "time",
            "unit",
            "scheduler",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->a:Lio/reactivex/rxjava3/core/g0;

    .line 3
    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->c:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->d:Lio/reactivex/rxjava3/core/o0;

    .line 6
    iput-boolean p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->e:Z

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/observables/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->a:Lio/reactivex/rxjava3/core/g0;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->b:J

    iget-object v3, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->c:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->d:Lio/reactivex/rxjava3/core/o0;

    iget-boolean v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->e:Z

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/rxjava3/core/g0;->c5(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/r1$n;->a()Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method
