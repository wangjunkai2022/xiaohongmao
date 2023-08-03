.class public final synthetic Lo4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Landroidx/lifecycle/LiveData;

.field public final synthetic c:Landroidx/lifecycle/LiveData;

.field public final synthetic d:Landroidx/lifecycle/LiveData;

.field public final synthetic e:Lkotlin/jvm/functions/Function4;

.field public final synthetic f:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function4;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/d;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lo4/d;->b:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lo4/d;->c:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lo4/d;->d:Landroidx/lifecycle/LiveData;

    iput-object p5, p0, Lo4/d;->e:Lkotlin/jvm/functions/Function4;

    iput-object p6, p0, Lo4/d;->f:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lo4/d;->a:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lo4/d;->b:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lo4/d;->c:Landroidx/lifecycle/LiveData;

    iget-object v3, p0, Lo4/d;->d:Landroidx/lifecycle/LiveData;

    iget-object v4, p0, Lo4/d;->e:Lkotlin/jvm/functions/Function4;

    iget-object v5, p0, Lo4/d;->f:Landroidx/lifecycle/MediatorLiveData;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lo4/m;->e(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function4;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)V

    return-void
.end method
