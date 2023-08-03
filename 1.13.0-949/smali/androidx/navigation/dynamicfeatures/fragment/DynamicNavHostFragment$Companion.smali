.class public final Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;
.super Ljava/lang/Object;
.source "DynamicNavHostFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;",
        "",
        "()V",
        "create",
        "Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;",
        "graphResId",
        "",
        "startDestinationArgs",
        "Landroid/os/Bundle;",
        "navigation-dynamic-features-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;->create(ILandroid/os/Bundle;)Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(I)Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/NavigationRes;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;->create$default(Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment$Companion;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;

    move-result-object p1

    return-object p1
.end method

.method public final create(ILandroid/os/Bundle;)Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/NavigationRes;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    new-instance v0, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;

    invoke-direct {v0}, Landroidx/navigation/dynamicfeatures/fragment/DynamicNavHostFragment;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    const-string v2, "android-support-nav:fragment:graphId"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "android-support-nav:fragment:startDestinationArgs"

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    move-object p1, v1

    .line 5
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
