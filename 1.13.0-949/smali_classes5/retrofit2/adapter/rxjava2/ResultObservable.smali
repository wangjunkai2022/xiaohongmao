.class final Lretrofit2/adapter/rxjava2/ResultObservable;
.super Lio/reactivex/z;
.source "ResultObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "Lretrofit2/adapter/rxjava2/Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final upstream:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 2
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/z;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Lretrofit2/adapter/rxjava2/Result<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/z;

    new-instance v1, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;-><init>(Lio/reactivex/g0;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
