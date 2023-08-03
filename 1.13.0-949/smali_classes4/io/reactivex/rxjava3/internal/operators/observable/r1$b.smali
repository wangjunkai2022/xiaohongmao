.class final Lio/reactivex/rxjava3/internal/operators/observable/r1$b;
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
    name = "b"
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

.field final b:I

.field final c:J

.field final d:Ljava/util/concurrent/TimeUnit;

.field final e:Lio/reactivex/rxjava3/core/o0;

.field final f:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/g0;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "bufferSize",
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
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/rxjava3/core/o0;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->a:Lio/reactivex/rxjava3/core/g0;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->b:I

    .line 4
    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->c:J

    .line 5
    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->d:Ljava/util/concurrent/TimeUnit;

    .line 6
    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->e:Lio/reactivex/rxjava3/core/o0;

    .line 7
    iput-boolean p7, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->f:Z

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/observables/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->a:Lio/reactivex/rxjava3/core/g0;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->b:I

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->c:J

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->e:Lio/reactivex/rxjava3/core/o0;

    iget-boolean v6, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->f:Z

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/core/g0;->Y4(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/o0;Z)Lio/reactivex/rxjava3/observables/a;

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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/r1$b;->a()Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method
