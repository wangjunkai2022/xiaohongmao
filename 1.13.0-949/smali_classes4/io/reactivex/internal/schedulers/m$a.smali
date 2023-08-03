.class final Lio/reactivex/internal/schedulers/m$a;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Ln7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/m$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln7/o<",
        "Lio/reactivex/internal/schedulers/m$f;",
        "Lio/reactivex/a;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/h0$c;


# direct methods
.method constructor <init>(Lio/reactivex/h0$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/schedulers/m$a;->a:Lio/reactivex/h0$c;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/schedulers/m$f;)Lio/reactivex/a;
    .locals 1

    new-instance v0, Lio/reactivex/internal/schedulers/m$a$a;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/m$a$a;-><init>(Lio/reactivex/internal/schedulers/m$a;Lio/reactivex/internal/schedulers/m$f;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/internal/schedulers/m$f;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/m$a;->a(Lio/reactivex/internal/schedulers/m$f;)Lio/reactivex/a;

    move-result-object p1

    return-object p1
.end method
