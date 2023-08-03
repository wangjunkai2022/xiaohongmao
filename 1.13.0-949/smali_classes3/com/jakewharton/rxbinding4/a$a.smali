.class final Lcom/jakewharton/rxbinding4/a$a;
.super Lio/reactivex/rxjava3/core/g0;
.source "InitialValueObservable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/rxjava3/core/g0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0003\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0002H\u0014\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding4/a$a;",
        "Lio/reactivex/rxjava3/core/g0;",
        "Lio/reactivex/rxjava3/core/n0;",
        "observer",
        "",
        "d6",
        "<init>",
        "(Lcom/jakewharton/rxbinding4/a;)V",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/jakewharton/rxbinding4/a;


# direct methods
.method public constructor <init>(Lcom/jakewharton/rxbinding4/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jakewharton/rxbinding4/a$a;->a:Lcom/jakewharton/rxbinding4/a;

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/g0;-><init>()V

    return-void
.end method


# virtual methods
.method protected d6(Lio/reactivex/rxjava3/core/n0;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/core/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/n0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding4/a$a;->a:Lcom/jakewharton/rxbinding4/a;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxbinding4/a;->C8(Lio/reactivex/rxjava3/core/n0;)V

    return-void
.end method
