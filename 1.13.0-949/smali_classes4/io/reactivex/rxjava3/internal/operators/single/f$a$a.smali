.class final Lio/reactivex/rxjava3/internal/operators/single/f$a$a;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/single/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Throwable;

.field final synthetic b:Lio/reactivex/rxjava3/internal/operators/single/f$a;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/single/f$a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$1",
            "e"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/single/f$a$a;->b:Lio/reactivex/rxjava3/internal/operators/single/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/single/f$a$a;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/single/f$a$a;->b:Lio/reactivex/rxjava3/internal/operators/single/f$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/single/f$a;->b:Lio/reactivex/rxjava3/core/s0;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/single/f$a$a;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/reactivex/rxjava3/core/s0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
