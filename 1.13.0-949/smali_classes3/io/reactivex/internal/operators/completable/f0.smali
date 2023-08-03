.class public final Lio/reactivex/internal/operators/completable/f0;
.super Lio/reactivex/a;
.source "CompletableNever.java"


# static fields
.field public static final a:Lio/reactivex/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/completable/f0;

    invoke-direct {v0}, Lio/reactivex/internal/operators/completable/f0;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/completable/f0;->a:Lio/reactivex/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected I0(Lio/reactivex/d;)V
    .locals 1

    sget-object v0, Lio/reactivex/internal/disposables/EmptyDisposable;->NEVER:Lio/reactivex/internal/disposables/EmptyDisposable;

    invoke-interface {p1, v0}, Lio/reactivex/d;->onSubscribe(Lio/reactivex/disposables/c;)V

    return-void
.end method
