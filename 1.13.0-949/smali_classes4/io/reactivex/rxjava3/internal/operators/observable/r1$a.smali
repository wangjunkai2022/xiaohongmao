.class final Lio/reactivex/rxjava3/internal/operators/observable/r1$a;
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
    name = "a"
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

.field final c:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/g0;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "bufferSize",
            "eagerTruncate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/g0<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->a:Lio/reactivex/rxjava3/core/g0;

    .line 3
    iput p2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->b:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/observables/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/observables/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->a:Lio/reactivex/rxjava3/core/g0;

    iget v1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->b:I

    iget-boolean v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->c:Z

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/g0;->Z4(IZ)Lio/reactivex/rxjava3/observables/a;

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

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/operators/observable/r1$a;->a()Lio/reactivex/rxjava3/observables/a;

    move-result-object v0

    return-object v0
.end method
