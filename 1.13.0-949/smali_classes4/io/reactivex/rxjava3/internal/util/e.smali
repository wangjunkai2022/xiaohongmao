.class public final Lio/reactivex/rxjava3/internal/util/e;
.super Ljava/lang/Object;
.source "ConnectConsumer.java"

# interfaces
.implements Lq7/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq7/g<",
        "Lio/reactivex/rxjava3/disposables/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lio/reactivex/rxjava3/disposables/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/rxjava3/disposables/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/util/e;->a:Lio/reactivex/rxjava3/disposables/f;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p1, Lio/reactivex/rxjava3/disposables/f;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/internal/util/e;->a(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method
