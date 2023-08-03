.class final Lio/reactivex/rxjava3/internal/operators/observable/v2$c;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lq7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/g<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$c;->a:Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/ObserverResourceWrapper;->setResource(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$c;->a(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method
