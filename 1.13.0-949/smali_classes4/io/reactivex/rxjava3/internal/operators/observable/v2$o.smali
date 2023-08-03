.class final Lio/reactivex/rxjava3/internal/operators/observable/v2$o;
.super Ljava/util/ArrayList;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/rxjava3/internal/operators/observable/v2$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/rxjava3/internal/operators/observable/v2$g<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final b:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile a:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacityHint"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    return-void
.end method

.method public c(Lio/reactivex/rxjava3/internal/operators/observable/v2$d;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/observable/v2$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->b:Lio/reactivex/rxjava3/core/n0;

    const/4 v1, 0x1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget v2, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    .line 5
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 7
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v4, v0}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/rxjava3/core/n0;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lio/reactivex/rxjava3/internal/operators/observable/v2$d;->c:Ljava/lang/Object;

    neg-int v1, v1

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method

.method public complete()V
    .locals 1

    .line 1
    invoke-static {}, Lio/reactivex/rxjava3/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/v2$o;->a:I

    return-void
.end method
