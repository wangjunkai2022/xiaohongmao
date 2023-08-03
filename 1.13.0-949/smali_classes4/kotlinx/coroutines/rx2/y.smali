.class public final synthetic Lkotlinx/coroutines/rx2/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlinx/coroutines/l1;


# instance fields
.field public final synthetic a:Lio/reactivex/disposables/c;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/rx2/y;->a:Lio/reactivex/disposables/c;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/rx2/y;->a:Lio/reactivex/disposables/c;

    invoke-static {v0}, Lkotlinx/coroutines/rx2/z;->q0(Lio/reactivex/disposables/c;)V

    return-void
.end method
