.class public final Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicIncludeNavGraphBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nB\'\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0012\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\r\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;",
        "dynamicIncludeGraphNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;",
        "id",
        "",
        "moduleName",
        "",
        "graphResourceName",
        "(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V",
        "route",
        "(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "graphPackage",
        "getGraphPackage",
        "()Ljava/lang/String;",
        "setGraphPackage",
        "(Ljava/lang/String;)V",
        "build",
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
.field private dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private graphPackage:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private graphResourceName:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your DynamicIncludeNavGraphBuilder instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "DynamicIncludeNavGraphBuilder(dynamicIncludeGraphNavigator, route = id.toString(), moduleName, graphResourceName)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "dynamicIncludeGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphResourceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 2
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 3
    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "dynamicIncludeGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphResourceName"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    .line 7
    iput-object p3, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->build()Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;
    .locals 5
    .annotation build Lm8/g;
    .end annotation

    .line 2
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;

    .line 3
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_7

    .line 4
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setModuleName(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->dynamicIncludeGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;

    invoke-virtual {v4}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator;->getPackageName$navigation_dynamic_features_runtime_release()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphPackage(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    xor-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 8
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphPackage(Ljava/lang/String;)V

    .line 9
    :goto_3
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 10
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicIncludeGraphNavigator$DynamicIncludeNavGraph;->setGraphResourceName(Ljava/lang/String;)V

    return-object v0

    .line 11
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Graph resource name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Graph package name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module name cannot be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getGraphPackage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final setGraphPackage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicIncludeNavGraphBuilder;->graphPackage:Ljava/lang/String;

    return-void
.end method
