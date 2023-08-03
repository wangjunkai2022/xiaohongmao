.class public final Lio/reactivex/internal/operators/maybe/r1;
.super Lio/reactivex/q;
.source "MaybeZipArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/r1$a;,
        Lio/reactivex/internal/operators/maybe/r1$c;,
        Lio/reactivex/internal/operators/maybe/r1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/w<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lio/reactivex/w;Ln7/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/w<",
            "+TT;>;",
            "Ln7/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/r1;->a:[Lio/reactivex/w;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/r1;->b:Ln7/o;

    return-void
.end method


# virtual methods
.method protected q1(Lio/reactivex/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/r1;->a:[Lio/reactivex/w;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    aget-object v0, v0, v2

    new-instance v1, Lio/reactivex/internal/operators/maybe/u0$a;

    new-instance v2, Lio/reactivex/internal/operators/maybe/r1$a;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/maybe/r1$a;-><init>(Lio/reactivex/internal/operators/maybe/r1;)V

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/maybe/u0$a;-><init>(Lio/reactivex/t;Ln7/o;)V

    invoke-interface {v0, v1}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    return-void

    .line 4
    :cond_0
    new-instance v3, Lio/reactivex/internal/operators/maybe/r1$b;

    iget-object v4, p0, Lio/reactivex/internal/operators/maybe/r1;->b:Ln7/o;

    invoke-direct {v3, p1, v1, v4}, Lio/reactivex/internal/operators/maybe/r1$b;-><init>(Lio/reactivex/t;ILn7/o;)V

    .line 5
    invoke-interface {p1, v3}, Lio/reactivex/t;->onSubscribe(Lio/reactivex/disposables/c;)V

    :goto_0
    if-ge v2, v1, :cond_3

    .line 6
    invoke-virtual {v3}, Lio/reactivex/internal/operators/maybe/r1$b;->isDisposed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    aget-object p1, v0, v2

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "One of the sources is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, v2}, Lio/reactivex/internal/operators/maybe/r1$b;->c(Ljava/lang/Throwable;I)V

    return-void

    .line 9
    :cond_2
    iget-object v4, v3, Lio/reactivex/internal/operators/maybe/r1$b;->c:[Lio/reactivex/internal/operators/maybe/r1$c;

    aget-object v4, v4, v2

    invoke-interface {p1, v4}, Lio/reactivex/w;->b(Lio/reactivex/t;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
