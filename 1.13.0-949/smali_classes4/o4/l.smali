.class public final synthetic Lo4/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Landroidx/lifecycle/LiveData;

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/l;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lo4/l;->b:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lo4/l;->c:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lo4/l;->d:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lo4/l;->a:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lo4/l;->b:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lo4/l;->c:Lkotlin/jvm/functions/Function2;

    iget-object v3, p0, Lo4/l;->d:Landroidx/lifecycle/MediatorLiveData;

    invoke-static {v0, v1, v2, v3, p1}, Lo4/m;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function2;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)V

    return-void
.end method
