.class public final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;
.super Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.source "OverridingUtilTypeSystemContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;->newTypeCheckerState(ZZ)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;


# direct methods
.method constructor <init>(ZZLkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V
    .locals 7

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;-><init>(ZZZLkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeRefiner;)V

    return-void
.end method


# virtual methods
.method public customIsSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 2
    .param p1    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "subType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext$newTypeCheckerState$1;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;->access$getCustomSubtype$p(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilTypeSystemContext;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
