.class public final Lio/reactivex/rxjava3/internal/operators/completable/z;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableLift.java"


# instance fields
.field final a:Lio/reactivex/rxjava3/core/g;

.field final b:Lio/reactivex/rxjava3/core/f;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/g;Lio/reactivex/rxjava3/core/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "onLift"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/z;->a:Lio/reactivex/rxjava3/core/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/z;->b:Lio/reactivex/rxjava3/core/f;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/z;->b:Lio/reactivex/rxjava3/core/f;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/f;->a(Lio/reactivex/rxjava3/core/d;)Lio/reactivex/rxjava3/core/d;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/completable/z;->a:Lio/reactivex/rxjava3/core/g;

    invoke-interface {v0, p1}, Lio/reactivex/rxjava3/core/g;->d(Lio/reactivex/rxjava3/core/d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/a;->Y(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method
