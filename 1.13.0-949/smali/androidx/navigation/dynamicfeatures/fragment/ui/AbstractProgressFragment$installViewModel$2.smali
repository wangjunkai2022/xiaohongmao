.class final Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AbstractProgressFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;

    invoke-direct {v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;-><init>()V

    sput-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;->INSTANCE:Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    .line 2
    sget-object v0, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel;->Companion:Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;

    invoke-virtual {v0}, Landroidx/navigation/dynamicfeatures/fragment/ui/InstallViewModel$Companion;->getFACTORY()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment$installViewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
