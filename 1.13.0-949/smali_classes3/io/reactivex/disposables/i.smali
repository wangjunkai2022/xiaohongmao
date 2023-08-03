.class final Lio/reactivex/disposables/i;
.super Lio/reactivex/disposables/f;
.source "SubscriptionDisposable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/disposables/f<",
        "Lorg/reactivestreams/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J = -0x9cfc6416eb4a343L


# direct methods
.method constructor <init>(Lorg/reactivestreams/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex/disposables/f;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lm7/e;
        .end annotation
    .end param

    check-cast p1, Lorg/reactivestreams/e;

    invoke-virtual {p0, p1}, Lio/reactivex/disposables/i;->b(Lorg/reactivestreams/e;)V

    return-void
.end method

.method protected b(Lorg/reactivestreams/e;)V
    .locals 0
    .param p1    # Lorg/reactivestreams/e;
        .annotation build Lm7/e;
        .end annotation
    .end param

    invoke-interface {p1}, Lorg/reactivestreams/e;->cancel()V

    return-void
.end method
