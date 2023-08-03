.class final Lio/reactivex/internal/operators/observable/n1$l;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Ln7/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/n1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln7/o<",
        "Lio/reactivex/z<",
        "TT;>;",
        "Lio/reactivex/e0<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final b:Lio/reactivex/h0;


# direct methods
.method constructor <init>(Ln7/o;Lio/reactivex/h0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln7/o<",
            "-",
            "Lio/reactivex/z<",
            "TT;>;+",
            "Lio/reactivex/e0<",
            "TR;>;>;",
            "Lio/reactivex/h0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/n1$l;->a:Ln7/o;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/n1$l;->b:Lio/reactivex/h0;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/z;)Lio/reactivex/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;)",
            "Lio/reactivex/e0<",
            "TR;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n1$l;->a:Ln7/o;

    invoke-interface {v0, p1}, Ln7/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The selector returned a null ObservableSource"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/e0;

    .line 2
    invoke-static {p1}, Lio/reactivex/z;->wrap(Lio/reactivex/e0;)Lio/reactivex/z;

    move-result-object p1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/n1$l;->b:Lio/reactivex/h0;

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/h0;)Lio/reactivex/z;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/z;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/n1$l;->a(Lio/reactivex/z;)Lio/reactivex/e0;

    move-result-object p1

    return-object p1
.end method
