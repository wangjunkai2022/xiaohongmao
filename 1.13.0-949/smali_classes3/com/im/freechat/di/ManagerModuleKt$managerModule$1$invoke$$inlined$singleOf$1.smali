.class public final Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1;
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
        "Lcom/im/freechat/sdk/a;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKoinDSLHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt$singleOf$8\n+ 2 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n+ 4 ManagerModule.kt\ncom/im/freechat/di/ManagerModuleKt$managerModule$1\n*L\n1#1,111:1\n80#2:112\n127#3,5:113\n8#4:118\n*S KotlinDebug\n*F\n+ 1 KoinDSLHelper.kt\ncom/im/freechat/di/KoinDSLHelperKt$singleOf$8\n*L\n76#1:112\n76#1:113,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0010\u0019\u001a\u00028\u0000\"\u0006\u0008\u0000\u0010\u0000\u0018\u0001\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001\"\u0006\u0008\u0002\u0010\u0002\u0018\u0001\"\u0006\u0008\u0003\u0010\u0003\u0018\u0001\"\u0006\u0008\u0004\u0010\u0004\u0018\u0001\"\u0006\u0008\u0005\u0010\u0005\u0018\u0001\"\u0006\u0008\u0006\u0010\u0006\u0018\u0001\"\u0006\u0008\u0007\u0010\u0007\u0018\u0001\"\u0006\u0008\u0008\u0010\u0008\u0018\u0001\"\u0006\u0008\t\u0010\t\u0018\u0001\"\u0006\u0008\n\u0010\n\u0018\u0001\"\u0006\u0008\u000b\u0010\u000b\u0018\u0001\"\u0006\u0008\u000c\u0010\u000c\u0018\u0001\"\u0006\u0008\r\u0010\r\u0018\u0001\"\u0006\u0008\u000e\u0010\u000e\u0018\u0001\"\u0006\u0008\u000f\u0010\u000f\u0018\u0001\"\u0006\u0008\u0010\u0010\u0010\u0018\u0001\"\u0006\u0008\u0011\u0010\u0011\u0018\u0001\"\u0006\u0008\u0012\u0010\u0012\u0018\u0001*\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0014H\n\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
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
        "T12",
        "T13",
        "T14",
        "T15",
        "T16",
        "T17",
        "T18",
        "Lorg/koin/core/scope/Scope;",
        "Ly8/a;",
        "it",
        "invoke",
        "(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;",
        "com/im/freechat/di/KoinDSLHelperKt$singleOf$8",
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

    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/di/ManagerModuleKt$managerModule$1$invoke$$inlined$singleOf$1;->invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lorg/koin/core/scope/Scope;Ly8/a;)Ljava/lang/Object;
    .locals 39
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
            "Lcom/im/freechat/sdk/a;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "$this$single"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "it"

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/im/freechat/domain/usecase/chat/h;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    const-class v3, Lcom/im/freechat/domain/usecase/chat_request/f;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/im/freechat/domain/usecase/chat_request/c;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Lcom/im/freechat/domain/usecase/chat_request/d;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/im/freechat/domain/usecase/chat_request/b;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v0, v6, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Lcom/im/freechat/domain/usecase/chat_request/a;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-virtual {v0, v7, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Lcom/im/freechat/domain/usecase/chat_request/e;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-virtual {v0, v8, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/im/freechat/domain/usecase/chat/r;

    invoke-static {v9}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v9

    invoke-virtual {v0, v9, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v9

    const-class v10, Lcom/im/freechat/domain/usecase/chat/t;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-virtual {v0, v10, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v10

    const-class v11, Lcom/im/freechat/domain/usecase/chat/i;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-virtual {v0, v11, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v11

    const-class v12, Lcom/im/freechat/domain/usecase/chat/c;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-virtual {v0, v12, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v12

    const-class v13, Lcom/im/freechat/domain/usecase/currentuser/g;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-virtual {v0, v13, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v13

    const-class v14, Lcom/im/freechat/domain/usecase/currentuser/f;

    invoke-static {v14}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v14

    invoke-virtual {v0, v14, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v14

    const-class v15, Lcom/im/freechat/domain/usecase/currentuser/o;

    invoke-static {v15}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v15

    invoke-virtual {v0, v15, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v15

    const-class v16, Lcom/im/freechat/domain/usecase/contact/f;

    move-object/from16 p2, v1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    const-class v16, Lcom/im/freechat/domain/usecase/contact/d;

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v3

    const-class v16, Lcom/im/freechat/domain/usecase/contact/e;

    move-object/from16 v18, v4

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    const-class v16, Lcom/im/freechat/domain/usecase/messages/j;

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-virtual {v0, v5, v2, v2}, Lorg/koin/core/scope/Scope;->p(Lkotlin/reflect/KClass;Lz8/a;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    move-object/from16 v38, v0

    check-cast v38, Lcom/im/freechat/domain/usecase/messages/j;

    move-object/from16 v37, v4

    check-cast v37, Lcom/im/freechat/domain/usecase/contact/e;

    move-object/from16 v36, v3

    check-cast v36, Lcom/im/freechat/domain/usecase/contact/d;

    move-object/from16 v35, v1

    check-cast v35, Lcom/im/freechat/domain/usecase/contact/f;

    move-object/from16 v34, v15

    check-cast v34, Lcom/im/freechat/domain/usecase/currentuser/o;

    move-object/from16 v33, v14

    check-cast v33, Lcom/im/freechat/domain/usecase/currentuser/f;

    move-object/from16 v32, v13

    check-cast v32, Lcom/im/freechat/domain/usecase/currentuser/g;

    move-object/from16 v31, v12

    check-cast v31, Lcom/im/freechat/domain/usecase/chat/c;

    move-object/from16 v30, v11

    check-cast v30, Lcom/im/freechat/domain/usecase/chat/i;

    move-object/from16 v29, v10

    check-cast v29, Lcom/im/freechat/domain/usecase/chat/t;

    move-object/from16 v28, v9

    check-cast v28, Lcom/im/freechat/domain/usecase/chat/r;

    move-object/from16 v27, v8

    check-cast v27, Lcom/im/freechat/domain/usecase/chat_request/e;

    move-object/from16 v26, v7

    check-cast v26, Lcom/im/freechat/domain/usecase/chat_request/a;

    move-object/from16 v25, v6

    check-cast v25, Lcom/im/freechat/domain/usecase/chat_request/b;

    move-object/from16 v24, v19

    check-cast v24, Lcom/im/freechat/domain/usecase/chat_request/d;

    move-object/from16 v23, v18

    check-cast v23, Lcom/im/freechat/domain/usecase/chat_request/c;

    move-object/from16 v22, v17

    check-cast v22, Lcom/im/freechat/domain/usecase/chat_request/f;

    move-object/from16 v21, p2

    check-cast v21, Lcom/im/freechat/domain/usecase/chat/h;

    .line 4
    new-instance v0, Lcom/im/freechat/sdk/a;

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v38}, Lcom/im/freechat/sdk/a;-><init>(Lcom/im/freechat/domain/usecase/chat/h;Lcom/im/freechat/domain/usecase/chat_request/f;Lcom/im/freechat/domain/usecase/chat_request/c;Lcom/im/freechat/domain/usecase/chat_request/d;Lcom/im/freechat/domain/usecase/chat_request/b;Lcom/im/freechat/domain/usecase/chat_request/a;Lcom/im/freechat/domain/usecase/chat_request/e;Lcom/im/freechat/domain/usecase/chat/r;Lcom/im/freechat/domain/usecase/chat/t;Lcom/im/freechat/domain/usecase/chat/i;Lcom/im/freechat/domain/usecase/chat/c;Lcom/im/freechat/domain/usecase/currentuser/g;Lcom/im/freechat/domain/usecase/currentuser/f;Lcom/im/freechat/domain/usecase/currentuser/o;Lcom/im/freechat/domain/usecase/contact/f;Lcom/im/freechat/domain/usecase/contact/d;Lcom/im/freechat/domain/usecase/contact/e;Lcom/im/freechat/domain/usecase/messages/j;)V

    return-object v0
.end method
