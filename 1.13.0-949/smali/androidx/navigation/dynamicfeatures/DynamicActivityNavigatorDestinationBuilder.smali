.class public final Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\"\u001a\u00020#H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\r\"\u0004\u0008\u001b\u0010\u000fR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000f\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "activityNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;",
        "id",
        "",
        "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V",
        "route",
        "",
        "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;Ljava/lang/String;)V",
        "action",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "(Ljava/lang/String;)V",
        "activityClassName",
        "getActivityClassName",
        "setActivityClassName",
        "data",
        "Landroid/net/Uri;",
        "getData",
        "()Landroid/net/Uri;",
        "setData",
        "(Landroid/net/Uri;)V",
        "dataPattern",
        "getDataPattern",
        "setDataPattern",
        "moduleName",
        "getModuleName",
        "setModuleName",
        "targetPackage",
        "getTargetPackage",
        "setTargetPackage",
        "build",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private action:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private activityClassName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private data:Landroid/net/Uri;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private dataPattern:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private targetPackage:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to build your DynamicActivityDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "DynamicActivityNavigatorDestinationBuilder(activityNavigator, route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 2
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
    .locals 4
    .annotation build Lm8/g;
    .end annotation

    .line 2
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    .line 3
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    .line 5
    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    invoke-virtual {v3}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->getPackageName$navigation_dynamic_features_runtime_release()Ljava/lang/String;

    move-result-object v3

    .line 8
    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, v2}, Landroidx/navigation/ActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 10
    :cond_1
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 11
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setModuleName(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 13
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 14
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/ActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivityClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Landroid/net/Uri;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-void
.end method

.method public final setActivityClassName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-void
.end method

.method public final setData(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-void
.end method

.method public final setDataPattern(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPackage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-void
.end method
