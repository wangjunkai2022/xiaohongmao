.class public final Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;
.super Landroidx/navigation/NavGraph;
.source "DynamicGraphNavigator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DynamicNavGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicGraphNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicGraphNavigator.kt\nandroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,253:1\n55#2,6:254\n*S KotlinDebug\n*F\n+ 1 DynamicGraphNavigator.kt\nandroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph\n*L\n226#1:254,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016J\u0018\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0002\u001a\u00020\u00038\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0004\u001a\u00020\u00058\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;",
        "Landroidx/navigation/NavGraph;",
        "navGraphNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;",
        "navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "(Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;Landroidx/navigation/NavigatorProvider;)V",
        "moduleName",
        "",
        "getModuleName",
        "()Ljava/lang/String;",
        "setModuleName",
        "(Ljava/lang/String;)V",
        "getNavGraphNavigator$navigation_dynamic_features_runtime_release",
        "()Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;",
        "getNavigatorProvider$navigation_dynamic_features_runtime_release",
        "()Landroidx/navigation/NavigatorProvider;",
        "progressDestination",
        "",
        "getProgressDestination",
        "()I",
        "setProgressDestination",
        "(I)V",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "onInflate",
        "",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private moduleName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final navGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final navigatorProvider:Landroidx/navigation/NavigatorProvider;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private progressDestination:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->Companion:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;Landroidx/navigation/NavigatorProvider;)V
    .locals 1
    .param p1    # Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/navigation/NavigatorProvider;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "navGraphNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/navigation/NavGraph;-><init>(Landroidx/navigation/Navigator;)V

    .line 2
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->navGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    .line 3
    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    check-cast p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    iget-object v2, p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget v1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    iget p1, p1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNavGraphNavigator$navigation_dynamic_features_runtime_release()Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->navGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    return-object v0
.end method

.method public final getNavigatorProvider$navigation_dynamic_features_runtime_release()Landroidx/navigation/NavigatorProvider;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public final getProgressDestination()I
    .locals 1

    iget v0, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/navigation/NavGraph;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavGraph;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    sget-object v0, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicGraphNavigator:[I

    const-string v1, "DynamicGraphNavigator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicGraphNavigator_moduleName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    .line 5
    sget p2, Landroidx/navigation/dynamicfeatures/R$styleable;->DynamicGraphNavigator_progressDestination:I

    .line 6
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    if-nez p2, :cond_0

    .line 7
    iget-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->navGraphNavigator:Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    invoke-virtual {p2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;->getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setProgressDestination(I)V
    .locals 0

    iput p1, p0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->progressDestination:I

    return-void
.end method
