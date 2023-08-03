.class public final Lio/reactivex/internal/operators/completable/m;
.super Lio/reactivex/a;
.source "CompletableDoOnEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/m$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Ln7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Ln7/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Ln7/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/m;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/m;->b:Ln7/g;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/m;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/m$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/m$a;-><init>(Lio/reactivex/internal/operators/completable/m;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
