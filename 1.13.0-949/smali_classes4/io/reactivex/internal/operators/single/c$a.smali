.class final Lio/reactivex/internal/operators/single/c$a;
.super Ljava/lang/Object;
.source "SingleContains.java"

# interfaces
.implements Lio/reactivex/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/single/c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/c;Lio/reactivex/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/single/c$a;->b:Lio/reactivex/internal/operators/single/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/l0;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onSubscribe(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->b:Lio/reactivex/internal/operators/single/c;

    iget-object v1, v0, Lio/reactivex/internal/operators/single/c;->c:Ln7/d;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/c;->b:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Ln7/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/l0;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onSuccess(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/single/c$a;->a:Lio/reactivex/l0;

    invoke-interface {v0, p1}, Lio/reactivex/l0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
