.class public final Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
.super Ljava/lang/Object;
.source "IntersectionTypeConstructor.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
.implements Lkotlin/reflect/jvm/internal/impl/types/model/IntersectionTypeConstructorMarker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntersectionTypeConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,120:1\n1#2:121\n1045#3:122\n1549#3:129\n1620#3,2:130\n1622#3:138\n98#4,6:123\n104#4:132\n105#4,4:134\n112#4,7:139\n99#5:133\n*S KotlinDebug\n*F\n+ 1 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructor\n*L\n66#1:122\n89#1:129\n89#1:130,2\n89#1:138\n89#1:123,6\n89#1:132\n89#1:134,4\n89#1:139,7\n89#1:133\n*E\n"
.end annotation


# instance fields
.field private alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final hashCode:I

.field private final intersectedTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "typesToIntersect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result p1

    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    .line 6
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-void
.end method

.method public static synthetic makeDebugNameForIntersectionType$default(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$1;

    :cond_0
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createScopeForKotlinType()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    const-string v2, "member scope for intersection type"

    invoke-virtual {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/TypeIntersectionScope$Companion;->create(Ljava/lang/String;Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v0

    return-object v0
.end method

.method public final createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7
    .annotation build Lm8/g;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes$Companion;->getEmpty()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createScopeForKotlinType()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v5

    .line 2
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$createType$1;

    invoke-direct {v6, p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$createType$1;-><init>(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->alternative:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;

    move-result-object v0

    const-string v1, "intersectedTypes.iterato\u2026xt().constructor.builtIns"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupertypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->hashCode:I

    return v0
.end method

.method public isDenotable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final makeDebugNameForIntersectionType(Lkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 11
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "getProperTypeRelatedToStringify"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;

    invoke-direct {v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$$inlined$sortedBy$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 3
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$3;

    invoke-direct {v8, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor$makeDebugNameForIntersectionType$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string v3, " & "

    const-string v4, "{"

    const-string v5, "}"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .locals 4
    .param p1    # Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 6
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 10
    :cond_2
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    move-object v0, p0

    :cond_3
    return-object v0
.end method

.method public bridge synthetic refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->refine(Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p1

    return-object p1
.end method

.method public final setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .locals 2
    .param p1    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->intersectedTypes:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->makeDebugNameForIntersectionType$default(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
