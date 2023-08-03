.class public final Lio/reactivex/internal/operators/completable/x;
.super Lio/reactivex/a;
.source "CompletableHide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/x$a;
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/g;


# direct methods
.method public constructor <init>(Lio/reactivex/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/x;->a:Lio/reactivex/g;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/completable/x;->a:Lio/reactivex/g;

    new-instance v1, Lio/reactivex/internal/operators/completable/x$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/completable/x$a;-><init>(Lio/reactivex/d;)V

    invoke-interface {v0, v1}, Lio/reactivex/g;->d(Lio/reactivex/d;)V

    return-void
.end method
