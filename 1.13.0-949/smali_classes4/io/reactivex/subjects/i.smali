.class public abstract Lio/reactivex/subjects/i;
.super Lio/reactivex/z;
.source "Subject.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lio/reactivex/g0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/Throwable;
    .annotation build Lm7/f;
    .end annotation
.end method

.method public abstract d()Z
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public final g()Lio/reactivex/subjects/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/subjects/g;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/subjects/g;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/g;-><init>(Lio/reactivex/subjects/i;)V

    return-object v0
.end method
