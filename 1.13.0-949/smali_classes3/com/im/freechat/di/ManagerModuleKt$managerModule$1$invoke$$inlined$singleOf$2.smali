.class public final Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2;
.super Lkotlin/jvm/internal/Lambda;
.source "KoinDSLHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/di/ManagerModuleKt$managerModule$1;->a(Lx8/a;)V
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
        "Lcom/im/freechat/sdk/c;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinDSLHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt$singleOf$1\n+ 2 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 ManagerModule.kt\ncom/im/freechat/di/ManagerModuleKt$managerModule$1\n*L\n1#1,111:1\n17#2:112\n127#3,5:113\n9#4:118\n*S KotlinDebug\n*F\n+ 1 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt$singleOf$1\n*L\n13#1:112\n13#1:113,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0012\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001\"\u0006\u0008\u0002\u0010\u0002\u0018\u0001\"\u0006\u0008\u0003\u0010\u0003\u0018\u0001\"\u0006\u0008\u0004\u0010\u0004\u0018\u0001\"\u0006\u0008\u0005\u0010\u0005\u0018\u0001\"\u0006\u0008\u0006\u0010\u0006\u0018\u0001\"\u0006\u0008\u0007\u0010\u0007\u0018\u0001\"\u0006\u0008\u0008\u0010\u0008\u0018\u0001\"\u0006\u0008\t\u0010\t\u0018\u0001\"\u0006\u0008\n\u0010\n\u0018\u0001\"\u0006\u0008\u000b\u0010\u000b\u0018\u0001*\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\rH\n\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
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
        "T10",
        "T11",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;",
        "com/im/freechat/di/KoinDSLHelperKt$singleOf$1",
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
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Ly8/a;

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$2;->invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;
    .locals 24
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
            "Lcom/im/freechat/sdk/c;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$single"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/im/freechat/domain/usecase/auth/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lcom/im/freechat/domain/usecase/auth/b;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/im/freechat/domain/usecase/currentuser/e;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/im/freechat/domain/usecase/auth/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/im/freechat/domain/usecase/currentuser/i;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lcom/im/freechat/domain/usecase/auth/i;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v0, v7, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Lcom/im/freechat/domain/usecase/auth/h;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v0, v8, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/im/freechat/domain/usecase/auth/j;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v0, v9, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    const-class v10, Lcom/im/freechat/domain/o;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v0, v10, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    const-class v11, Lcom/im/freechat/domain/usecase/auth/g;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v0, v11, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    const-class v12, Lcom/im/freechat/domain/usecase/auth/f;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v0, v12, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object/from16 v23, v0

    check-cast v23, Lcom/im/freechat/domain/usecase/auth/f;

    move-object/from16 v22, v11

    check-cast v22, Lcom/im/freechat/domain/usecase/auth/g;

    move-object/from16 v21, v10

    check-cast v21, Lcom/im/freechat/domain/o;

    move-object/from16 v20, v9

    check-cast v20, Lcom/im/freechat/domain/usecase/auth/j;

    move-object/from16 v19, v8

    check-cast v19, Lcom/im/freechat/domain/usecase/auth/h;

    move-object/from16 v18, v7

    check-cast v18, Lcom/im/freechat/domain/usecase/auth/i;

    move-object/from16 v17, v6

    check-cast v17, Lcom/im/freechat/domain/usecase/currentuser/i;

    move-object/from16 v16, v5

    check-cast v16, Lcom/im/freechat/domain/usecase/auth/d;

    move-object v15, v4

    check-cast v15, Lcom/im/freechat/domain/usecase/currentuser/e;

    move-object v14, v3

    check-cast v14, Lcom/im/freechat/domain/usecase/auth/b;

    move-object v13, v1

    check-cast v13, Lcom/im/freechat/domain/usecase/auth/a;

    .line 4
    new-instance v0, Lcom/im/freechat/sdk/c;

    move-object v12, v0

    invoke-direct/range {v12 .. v23}, Lcom/im/freechat/sdk/c;-><init>(Lcom/im/freechat/domain/usecase/auth/a;Lcom/im/freechat/domain/usecase/auth/b;Lcom/im/freechat/domain/usecase/currentuser/e;Lcom/im/freechat/domain/usecase/auth/d;Lcom/im/freechat/domain/usecase/currentuser/i;Lcom/im/freechat/domain/usecase/auth/i;Lcom/im/freechat/domain/usecase/auth/h;Lcom/im/freechat/domain/usecase/auth/j;Lcom/im/freechat/domain/o;Lcom/im/freechat/domain/usecase/auth/g;Lcom/im/freechat/domain/usecase/auth/f;)V

    return-object v0
.end method
