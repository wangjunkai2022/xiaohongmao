.class public final Lio/reactivex/internal/operators/observable/e;
.super Ljava/lang/Object;
.source "BlockingObservableNext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/e$b;,
        Lio/reactivex/internal/operators/observable/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e;->a:Lio/reactivex/e0;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/observable/e$b;

    invoke-direct {v0}, Lio/reactivex/internal/operators/observable/e$b;-><init>()V

    .line 2
    new-instance v1, Lio/reactivex/internal/operators/observable/e$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/e;->a:Lio/reactivex/e0;

    invoke-direct {v1, v2, v0}, Lio/reactivex/internal/operators/observable/e$a;-><init>(Lio/reactivex/e0;Lio/reactivex/internal/operators/observable/e$b;)V

    return-object v1
.end method
