.class public final Lcom/im/freechat/di/ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewModelOf.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ContactModuleKt$contactModule$1;->a(Lx8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "Lcom/im/freechat/ui/contacts/ContactListViewModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewModelOf.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$20\n+ 2 New.kt\norg/koin/core/module/dsl/NewKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 ContactModule.kt\ncom/im/freechat/di/ContactModuleKt$contactModule$1\n*L\n1#1,207:1\n98#2:208\n127#3,5:209\n11#4:214\n*S KotlinDebug\n*F\n+ 1 ViewModelOf.kt\norg/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$20\n*L\n191#1:208\n191#1:209,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0011\u001a\u00028\u0000\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0000\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u0001\"\u0006\u0008\u0003\u0010\u0004\u0018\u0001\"\u0006\u0008\u0004\u0010\u0005\u0018\u0001\"\u0006\u0008\u0005\u0010\u0006\u0018\u0001\"\u0006\u0008\u0006\u0010\u0007\u0018\u0001\"\u0006\u0008\u0007\u0010\u0008\u0018\u0001\"\u0006\u0008\u0008\u0010\t\u0018\u0001\"\u0006\u0008\t\u0010\n\u0018\u0001*\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000cH\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/lifecycle/ViewModel;",
        "R",
        "T1",
        "T2",
        "T3",
        "T4",
        "T5",
        "T6",
        "T7",
        "T8",
        "T9",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;",
        "org/koin/androidx/viewmodel/dsl/ViewModelOfKt$viewModelOf$20",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;
    .locals 20
    .param p1    # Lorg/koin/core/scope/Scope;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ly8/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/scope/Scope;",
            "Ly8/a;",
            ")",
            "Lcom/im/freechat/ui/contacts/ContactListViewModel;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$viewModel"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/im/freechat/domain/usecase/chat/c;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/im/freechat/domain/usecase/contact/c;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lcom/im/freechat/domain/usecase/contact/f;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v0, v7, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Lcom/im/freechat/domain/usecase/contact/j;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v0, v8, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/im/freechat/domain/usecase/contact/k;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v0, v9, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    const-class v10, Lcom/im/freechat/domain/usecase/contact/g;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v0, v10, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object/from16 v19, v0

    check-cast v19, Lcom/im/freechat/domain/usecase/contact/g;

    move-object/from16 v18, v9

    check-cast v18, Lcom/im/freechat/domain/usecase/contact/k;

    move-object/from16 v17, v8

    check-cast v17, Lcom/im/freechat/domain/usecase/contact/j;

    move-object/from16 v16, v7

    check-cast v16, Lcom/im/freechat/domain/usecase/contact/f;

    move-object v15, v6

    check-cast v15, Lcom/im/freechat/domain/usecase/contact/c;

    move-object v14, v5

    check-cast v14, Lcom/im/freechat/domain/usecase/chat/c;

    move-object v13, v4

    check-cast v13, Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;

    move-object v12, v3

    check-cast v12, Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;

    move-object v11, v1

    check-cast v11, Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;

    .line 4
    new-instance v0, Lcom/im/freechat/ui/contacts/ContactListViewModel;

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Lcom/im/freechat/ui/contacts/ContactListViewModel;-><init>(Lcom/im/freechat/domain/usecase/contact/ListenFollowingsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenBlockedContactsInteractor;Lcom/im/freechat/domain/usecase/contact/ListenContactListInteractor;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/contact/c;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/j;Lcom/im/freechat/domain/usecase/contact/k;Lcom/im/freechat/domain/usecase/contact/g;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ContactModuleKt$contactModule$1$invoke$$inlined$viewModelOf$1;->invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method
