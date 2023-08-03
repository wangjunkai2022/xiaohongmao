.class final Lio/reactivex/internal/operators/observable/k3$b;
.super Ljava/lang/Object;
.source "ObservableSubscribeOn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/observable/k3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/k3$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/observable/k3;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/k3;Lio/reactivex/internal/operators/observable/k3$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/k3$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k3$b;->b:Lio/reactivex/internal/operators/observable/k3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k3$b;->a:Lio/reactivex/internal/operators/observable/k3$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k3$b;->b:Lio/reactivex/internal/operators/observable/k3;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/a;->a:Lio/reactivex/e0;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k3$b;->a:Lio/reactivex/internal/operators/observable/k3$a;

    invoke-interface {v0, v1}, Lio/reactivex/e0;->subscribe(Lio/reactivex/g0;)V

    return-void
.end method
