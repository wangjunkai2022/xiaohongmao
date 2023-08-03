.class public final Lio/reactivex/rxjava3/internal/operators/completable/n;
.super Lio/reactivex/rxjava3/core/a;
.source "CompletableEmpty.java"


# static fields
.field public static final a:Lio/reactivex/rxjava3/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/n;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/completable/n;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/operators/completable/n;->a:Lio/reactivex/rxjava3/core/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/a;-><init>()V

    return-void
.end method


# virtual methods
.method public Y0(Lio/reactivex/rxjava3/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/d;)V

    return-void
.end method
