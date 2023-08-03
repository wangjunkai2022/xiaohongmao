.class public abstract Lio/reactivex/rxjava3/subjects/i;
.super Lio/reactivex/rxjava3/core/g0;
.source "Subject.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/n0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;",
        "Lio/reactivex/rxjava3/core/n0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract A8()Ljava/lang/Throwable;
    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/f;
    .end annotation
.end method

.method public abstract B8()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public abstract C8()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public abstract D8()Z
    .annotation runtime Lp7/c;
    .end annotation
.end method

.method public final E8()Lio/reactivex/rxjava3/subjects/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/subjects/i<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lp7/c;
    .end annotation

    .annotation build Lp7/e;
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/rxjava3/subjects/g;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/rxjava3/subjects/g;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/subjects/g;-><init>(Lio/reactivex/rxjava3/subjects/i;)V

    return-object v0
.end method
