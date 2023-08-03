.class public final synthetic Lo4/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Landroidx/lifecycle/LiveData;

.field public final synthetic c:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/j;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lo4/j;->b:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lo4/j;->c:Landroidx/lifecycle/MediatorLiveData;

    iput-object p4, p0, Lo4/j;->d:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo4/j;->a:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lo4/j;->b:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lo4/j;->c:Landroidx/lifecycle/MediatorLiveData;

    iget-object v3, p0, Lo4/j;->d:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1, v2, v3, p1}, Lo4/m;->d(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;)V

    return-void
.end method
