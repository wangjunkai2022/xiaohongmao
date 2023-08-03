.class final Lio/reactivex/rxjava3/internal/operators/flowable/g3$d$a;
.super Ljava/lang/Object;
.source "FlowableReplay.java"

# interfaces
.implements Lq7/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq7/g<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "srw"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d$a;->b:Lio/reactivex/rxjava3/internal/operators/flowable/g3$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d$a;->a:Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper;

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

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d$a;->a:Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/internal/subscribers/SubscriberResourceWrapper;->setResource(Lio/reactivex/rxjava3/disposables/f;)V

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

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/operators/flowable/g3$d$a;->a(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method
