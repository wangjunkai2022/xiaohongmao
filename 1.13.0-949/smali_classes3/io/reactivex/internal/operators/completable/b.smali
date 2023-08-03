.class public final Lio/reactivex/internal/operators/completable/b;
.super Lio/reactivex/a;
.source "CompletableAndThenCompletable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/b$a;,
        Lio/reactivex/internal/operators/completable/b$b;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;

.field final b:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/b;->a:Lio/reactivex/g;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/b;->b:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 3

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/b;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/b$b;

    iget-object v2, p0, Lio/reactivex/internal/operators/completable/b;->b:Lio/reactivex/g;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/completable/b$b;-><init>(Lio/reactivex/d;Lio/reactivex/g;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
