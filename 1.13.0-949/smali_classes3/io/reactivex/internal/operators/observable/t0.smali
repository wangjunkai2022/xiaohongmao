.class public final Lio/reactivex/internal/operators/observable/t0;
.super Lio/reactivex/z;
.source "ObservableEmpty.java"

# interfaces
.implements Lo7/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/z<",
        "Ljava/lang/Object;",
        ">;",
        "Lo7/m<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/t0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/t0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/observable/t0;->a:Lio/reactivex/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected subscribeActual(Lio/reactivex/g0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/g0<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/g0;)V

    return-void
.end method
