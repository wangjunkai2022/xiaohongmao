.class final Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;
.super Ljava/lang/Object;
.source "FlowableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/internal/operators/flowable/z4$d<",
            "*>;"
        }
    .end annotation
.end field

.field final b:Z


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "isOpen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/internal/operators/flowable/z4$d<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;

    .line 3
    iput-boolean p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;->b:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;->a:Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;

    iget-boolean v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d$a;->b:Z

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/internal/operators/flowable/z4$d;->e(Z)V

    return-void
.end method
