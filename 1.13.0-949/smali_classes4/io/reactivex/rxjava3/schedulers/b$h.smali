.class final Lio/reactivex/rxjava3/schedulers/b$h;
.super Ljava/lang/Object;
.source "Schedulers.java"

# interfaces
.implements Lq7/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq7/s<",
        "Lio/reactivex/rxjava3/core/o0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/core/o0;
    .locals 1

    sget-object v0, Lio/reactivex/rxjava3/schedulers/b$g;->a:Lio/reactivex/rxjava3/core/o0;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lio/reactivex/rxjava3/schedulers/b$h;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method
