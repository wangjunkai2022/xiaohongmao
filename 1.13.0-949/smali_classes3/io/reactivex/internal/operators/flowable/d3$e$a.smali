.class final Lio/reactivex/internal/operators/flowable/d3$e$a;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Ln7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/d3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln7/g<",
        "Lio/reactivex/disposables/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/internal/operators/flowable/d3$e;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/d3$e;Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/d3$e$a;->b:Lio/reactivex/internal/operators/flowable/d3$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/d3$e$a;->a:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/c;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/d3$e$a;->a:Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/disposables/c;)V

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

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/d3$e$a;->a(Lio/reactivex/disposables/c;)V

    return-void
.end method
