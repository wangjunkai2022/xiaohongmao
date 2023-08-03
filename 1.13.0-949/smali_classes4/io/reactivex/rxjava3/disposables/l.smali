.class final Lio/reactivex/rxjava3/disposables/l;
.super Lio/reactivex/rxjava3/disposables/i;
.source "SubscriptionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/disposables/i<",
        "Lorg/reactivestreams/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J = -0x9cfc6416eb4a343L


# direct methods
.method constructor <init>(Lorg/reactivestreams/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/rxjava3/disposables/i;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    check-cast p1, Lorg/reactivestreams/e;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/l;->b(Lorg/reactivestreams/e;)V

    return-void
.end method

.method protected b(Lorg/reactivestreams/e;)V
    .locals 0
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lp7/e;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method
