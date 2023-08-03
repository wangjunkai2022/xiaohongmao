.class public abstract Lio/reactivex/processors/c;
.super Lio/reactivex/j;
.source "FlowableProcessor.java"

# interfaces
.implements Lorg/reactivestreams/b;
.implements Lio/reactivex/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TT;>;",
        "Lorg/reactivestreams/b<",
        "TT;TT;>;",
        "Lio/reactivex/o<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract M8()Ljava/lang/Throwable;
    .annotation build Lm7/f;
    .end annotation
.end method

.method public abstract N8()Z
.end method

.method public abstract O8()Z
.end method

.method public abstract P8()Z
.end method

.method public final Q8()Lio/reactivex/processors/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/processors/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lm7/c;
    .end annotation

    .annotation build Lm7/e;
    .end annotation

    .line 1
    instance-of v0, p0, Lio/reactivex/processors/g;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lio/reactivex/processors/g;

    invoke-direct {v0, p0}, Lio/reactivex/processors/g;-><init>(Lio/reactivex/processors/c;)V

    return-object v0
.end method
