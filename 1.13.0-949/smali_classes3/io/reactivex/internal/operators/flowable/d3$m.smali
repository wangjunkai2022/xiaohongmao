.class final Lio/reactivex/internal/operators/flowable/d3$m;
.super Lio/reactivex/internal/operators/flowable/d3$a;
.source "FlowableReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/d3$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final f:J = -0x51dae9f17ccbb88eL


# instance fields
.field final e:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/d3$a;-><init>()V

    .line 2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/d3$m;->e:I

    return-void
.end method


# virtual methods
.method q()V
    .locals 2

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/flowable/d3$a;->b:I

    iget v1, p0, Lio/reactivex/internal/operators/flowable/d3$m;->e:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/d3$a;->m()V

    :cond_0
    return-void
.end method
