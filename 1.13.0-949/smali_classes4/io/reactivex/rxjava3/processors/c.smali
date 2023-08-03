.class public abstract Lio/reactivex/rxjava3/processors/c;
.super Lio/reactivex/rxjava3/core/m;
.source "FlowableProcessor.java"

# interfaces
.implements Lorg/reactivestreams/b;
.implements Lio/reactivex/rxjava3/core/r;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/m<",
        "TT;>;",
        "Lorg/reactivestreams/b<",
        "TT;TT;>;",
        "Lio/reactivex/rxjava3/core/r<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/m;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract g9()Ljava/lang/Throwable;
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end method

.method public abstract h9()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public abstract i9()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public abstract j9()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public final k9()Lio/reactivex/rxjava3/processors/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/processors/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/processors/g;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/processors/g;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/processors/g;-><init>(Lio/reactivex/rxjava3/processors/c;)V

    return-object v0
.end method
