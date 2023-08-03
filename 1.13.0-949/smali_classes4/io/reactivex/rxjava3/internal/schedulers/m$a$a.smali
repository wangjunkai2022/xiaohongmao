.class final Lio/reactivex/rxjava3/internal/schedulers/m$a$a;
.super Lio/reactivex/rxjava3/core/a;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/schedulers/m$f;

.field final synthetic b:Lio/reactivex/rxjava3/internal/schedulers/m$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/m$a;Lio/reactivex/rxjava3/internal/schedulers/m$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "action"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;->b:Lio/reactivex/rxjava3/internal/schedulers/m$a;

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;->a:Lio/reactivex/rxjava3/internal/schedulers/m$f;

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionCompletable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;->a:Lio/reactivex/rxjava3/internal/schedulers/m$f;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;->a:Lio/reactivex/rxjava3/internal/schedulers/m$f;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/m$a$a;->b:Lio/reactivex/rxjava3/internal/schedulers/m$a;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/schedulers/m$a;->a:Lio/reactivex/rxjava3/core/o0$c;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/rxjava3/internal/schedulers/m$f;->a(Lio/reactivex/rxjava3/core/o0$c;Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
