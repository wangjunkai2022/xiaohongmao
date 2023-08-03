.class public final Lio/reactivex/internal/operators/maybe/t;
.super Lio/reactivex/q;
.source "MaybeEmpty.java"

# interfaces
.implements Lo7/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/q<",
        "Ljava/lang/Object;",
        ">;",
        "Lo7/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/internal/operators/maybe/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/maybe/t;

    invoke-direct {v0}, Lio/reactivex/internal/operators/maybe/t;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/maybe/t;->a:Lio/reactivex/internal/operators/maybe/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected q1(Lio/reactivex/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/t;)V

    return-void
.end method
