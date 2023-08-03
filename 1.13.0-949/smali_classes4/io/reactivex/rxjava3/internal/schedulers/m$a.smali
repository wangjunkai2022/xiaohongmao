.class final Lio/reactivex/rxjava3/internal/schedulers/m$a;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lq7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/m$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq7/o<",
        "Lio/reactivex/rxjava3/internal/schedulers/m$f;",
        "Lio/reactivex/rxjava3/core/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/core/o0$c;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/o0$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualWorker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a;->a:Lio/reactivex/rxjava3/core/o0$c;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/internal/schedulers/m$f;)Lio/reactivex/rxjava3/core/a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/m$a;Lio/reactivex/rxjava3/internal/schedulers/m$f;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/internal/schedulers/m$f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/m$a;->a(Lio/reactivex/rxjava3/internal/schedulers/m$f;)Lio/reactivex/rxjava3/core/a;

    move-result-object p1

    return-object p1
.end method
