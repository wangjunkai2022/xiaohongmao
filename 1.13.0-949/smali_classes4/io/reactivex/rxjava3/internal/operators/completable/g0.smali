.class public final Lio/reactivex/rxjava3/internal/operators/completable/g0;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableNever.java"


# static fields
.field public static final a:Lio/reactivex/rxjava3/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/g0;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/completable/g0;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/completable/g0;->a:Lio/reactivex/rxjava3/core/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    sget-object v0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/d;->onSubscribe(Lio/reactivex/rxjava3/disposables/f;)V

    return-void
.end method
