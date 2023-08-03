.class public final Lio/reactivex/internal/operators/completable/h0;
.super Lio/reactivex/a;
.source "CompletableOnErrorComplete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/h0$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Ln7/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/g;Ln7/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g;",
            "Ln7/r<",
            "-",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/h0;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/h0;->b:Ln7/r;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/h0;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/h0$a;

    invoke-direct {v1, p0, p1}, Lio/reactivex/internal/operators/completable/h0$a;-><init>(Lio/reactivex/internal/operators/completable/h0;Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
