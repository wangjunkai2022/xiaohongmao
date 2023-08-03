.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;
.super Ljava/lang/Object;
.source "ModuleDescriptorImpl.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependencies;


# instance fields
.field private final allDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final allExpectedByDependencies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final directExpectedByDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final modulesWhoseInternalsAreVisible:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Set;Ljava/util/List;Ljava/util/Set;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allDependencies"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modulesWhoseInternalsAreVisible"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directExpectedByDependencies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allExpectedByDependencies"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->allDependencies:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->modulesWhoseInternalsAreVisible:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->directExpectedByDependencies:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->allExpectedByDependencies:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getAllDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->allDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getDirectExpectedByDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->directExpectedByDependencies:Ljava/util/List;

    return-object v0
.end method

.method public getModulesWhoseInternalsAreVisible()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDescriptorImpl;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->modulesWhoseInternalsAreVisible:Ljava/util/Set;

    return-object v0
.end method
