.class final Lio/reactivex/rxjava3/internal/operators/observable/r1$l;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lq7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/observable/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq7/c<",
        "TS;",
        "Lio/reactivex/rxjava3/core/i<",
        "TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final a:Lq7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq7/b<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lq7/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "consumer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq7/b<",
            "TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$l;->a:Lq7/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/reactivex/rxjava3/core/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t1",
            "t2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/reactivex/rxjava3/core/i<",
            "TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/observable/r1$l;->a:Lq7/b;

    invoke-interface {v0, p1, p2}, Lq7/b;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "t1",
            "t2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    check-cast p2, Lio/reactivex/rxjava3/core/i;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/operators/observable/r1$l;->a(Ljava/lang/Object;Lio/reactivex/rxjava3/core/i;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
