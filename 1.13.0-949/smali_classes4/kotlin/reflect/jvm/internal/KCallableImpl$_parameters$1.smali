.class final Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KCallableImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/KCallableImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Lkotlin/reflect/KParameter;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKCallableImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1002#2,2:221\n*S KotlinDebug\n*F\n+ 1 KCallableImpl.kt\nkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1\n*L\n65#1:221,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002 \u0003*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00010\u0001\"\u0006\u0008\u0000\u0010\u0004 \u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/ArrayList;",
        "Lkotlin/reflect/KParameter;",
        "kotlin.jvm.PlatformType",
        "R",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/KCallableImpl<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/KCallableImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/KCallableImpl<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->invoke()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lkotlin/reflect/KParameter;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isBound()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 5
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/UtilKt;->getInstanceReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v5, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    sget-object v7, Lkotlin/reflect/KParameter$Kind;->INSTANCE:Lkotlin/reflect/KParameter$Kind;

    new-instance v8, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;

    invoke-direct {v8, v2}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$1;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)V

    invoke-direct {v5, v6, v3, v7, v8}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 8
    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lkotlin/reflect/KParameter$Kind;->EXTENSION_RECEIVER:Lkotlin/reflect/KParameter$Kind;

    new-instance v10, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$2;

    invoke-direct {v10, v5}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$2;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;)V

    invoke-direct {v6, v7, v2, v9, v10}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->getValueParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v3, v5, :cond_3

    .line 10
    new-instance v6, Lkotlin/reflect/jvm/internal/KParameterImpl;

    iget-object v7, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    add-int/lit8 v8, v2, 0x1

    sget-object v9, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    new-instance v10, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;

    invoke-direct {v10, v0, v3}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$3;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)V

    invoke-direct {v6, v7, v2, v9, v10}, Lkotlin/reflect/jvm/internal/KParameterImpl;-><init>(Lkotlin/reflect/jvm/internal/KCallableImpl;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v2, v8

    goto :goto_2

    .line 11
    :cond_3
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1;->this$0:Lkotlin/reflect/jvm/internal/KCallableImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/KCallableImpl;->isAnnotationConstructor()Z

    move-result v2

    if-eqz v2, :cond_4

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_4

    new-instance v0, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$invoke$$inlined$sortBy$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/KCallableImpl$_parameters$1$invoke$$inlined$sortBy$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method
