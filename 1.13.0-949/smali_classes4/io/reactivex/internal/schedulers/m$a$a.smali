.class final Lio/reactivex/internal/schedulers/m$a$a;
.super Lio/reactivex/a;
.source "SchedulerWhen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/schedulers/m$f;

.field final synthetic b:Lio/reactivex/internal/schedulers/m$a;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/m$a;Lio/reactivex/internal/schedulers/m$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/schedulers/m$a$a;->b:Lio/reactivex/internal/schedulers/m$a;

    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/schedulers/m$a$a;->a:Lio/reactivex/internal/schedulers/m$f;

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$a$a;->a:Lio/reactivex/internal/schedulers/m$f;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/m$a$a;->a:Lio/reactivex/internal/schedulers/m$f;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/m$a$a;->b:Lio/reactivex/internal/schedulers/m$a;

    iget-object v1, v1, Lio/reactivex/internal/schedulers/m$a;->a:Lio/reactivex/h0$c;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/schedulers/m$f;->a(Lio/reactivex/h0$c;Lio/reactivex/d;)V

    return-void
.end method
