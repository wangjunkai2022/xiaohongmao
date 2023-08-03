.class public final synthetic Lo4/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LiveData;

.field public final synthetic b:Landroidx/lifecycle/LiveData;

.field public final synthetic c:Landroidx/lifecycle/LiveData;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:Landroidx/lifecycle/MediatorLiveData;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function3;Landroidx/lifecycle/MediatorLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/g;->a:Landroidx/lifecycle/LiveData;

    iput-object p2, p0, Lo4/g;->b:Landroidx/lifecycle/LiveData;

    iput-object p3, p0, Lo4/g;->c:Landroidx/lifecycle/LiveData;

    iput-object p4, p0, Lo4/g;->d:Lkotlin/jvm/functions/Function3;

    iput-object p5, p0, Lo4/g;->e:Landroidx/lifecycle/MediatorLiveData;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lo4/g;->a:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lo4/g;->b:Landroidx/lifecycle/LiveData;

    iget-object v2, p0, Lo4/g;->c:Landroidx/lifecycle/LiveData;

    iget-object v3, p0, Lo4/g;->d:Lkotlin/jvm/functions/Function3;

    iget-object v4, p0, Lo4/g;->e:Landroidx/lifecycle/MediatorLiveData;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lo4/m;->c(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function3;Landroidx/lifecycle/MediatorLiveData;Ljava/lang/Object;)V

    return-void
.end method
