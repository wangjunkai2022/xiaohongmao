.class public final Lio/reactivex/internal/operators/flowable/v0;
.super Lio/reactivex/i0;
.source "FlowableElementAtSingle.java"

# interfaces
.implements Lo7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/i0<",
        "TT;>;",
        "Lo7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/j;JLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;JTT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/i0;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/v0;->a:Lio/reactivex/j;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/v0;->b:J

    .line 4
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/v0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected b1(Lio/reactivex/l0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/l0<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/v0;->a:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/v0$a;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/v0;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/v0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/v0$a;-><init>(Lio/reactivex/l0;JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method

.method public c()Lio/reactivex/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lio/reactivex/internal/operators/flowable/t0;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/v0;->a:Lio/reactivex/j;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/v0;->b:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/v0;->c:Ljava/lang/Object;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/flowable/t0;-><init>(Lio/reactivex/j;JLjava/lang/Object;Z)V

    invoke-static {v6}, Lio/reactivex/plugins/a;->P(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method
