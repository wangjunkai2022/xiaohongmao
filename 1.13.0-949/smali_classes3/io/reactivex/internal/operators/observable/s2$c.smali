.class final Lio/reactivex/internal/operators/observable/s2$c;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Ln7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/s2;
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
        "Ln7/g<",
        "Lio/reactivex/disposables/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/s2$c;->a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/s2$c;->a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;->setResource(Lio/reactivex/disposables/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/disposables/c;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/s2$c;->a(Lio/reactivex/disposables/c;)V

    return-void
.end method
