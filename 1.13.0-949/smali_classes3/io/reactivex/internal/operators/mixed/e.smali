.class public final Lio/reactivex/internal/operators/mixed/e;
.super Lio/reactivex/j;
.source "FlowableConcatMapSingle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/j<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ln7/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/internal/util/ErrorMode;

.field final e:I


# direct methods
.method public constructor <init>(Lio/reactivex/j;Ln7/o;Lio/reactivex/internal/util/ErrorMode;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Ln7/o<",
            "-TT;+",
            "Lio/reactivex/o0<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/ErrorMode;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/e;->b:Lio/reactivex/j;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/e;->c:Ln7/o;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/e;->d:Lio/reactivex/internal/util/ErrorMode;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/e;->e:I

    return-void
.end method


# virtual methods
.method protected k6(Lorg/reactivestreams/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/d<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/e;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/mixed/e$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/e;->c:Ln7/o;

    iget v3, p0, Lio/reactivex/internal/operators/mixed/e;->e:I

    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/e;->d:Lio/reactivex/internal/util/ErrorMode;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/e$a;-><init>(Lorg/reactivestreams/d;Ln7/o;ILio/reactivex/internal/util/ErrorMode;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->j6(Lio/reactivex/o;)V

    return-void
.end method
